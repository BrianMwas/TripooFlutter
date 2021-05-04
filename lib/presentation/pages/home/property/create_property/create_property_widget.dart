import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' as dz;
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supercharged/supercharged.dart';
import 'package:tripoo/application/property/create_property/bloc/property_form_bloc.dart';
import 'package:tripoo/presentation/routes/route.gr.dart';

import '../../../../../injection.dart';

class NewProperty extends HookWidget {
  NewProperty({Key key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PropertyFormBloc>()
        ..add(PropertyFormEvent.initialized(dz.none())),
      child: Scaffold(
        // Prevent overflow when using keyboard.
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black87,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Create property",
            style: TextStyle(
              fontFamily: "ProductSans",
              color: Colors.black87,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 14,
              ),
              child: CreatePropertyFormWidget(formKey: _formKey),
            ),
          ),
        ),
      ),
    );
  }
}

class CreatePropertyFormWidget extends HookWidget {
  CreatePropertyFormWidget({
    Key key,
    @required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final picker = ImagePicker();
  final Completer<GoogleMapController> _controller = Completer();

  Future<Position> _getLocation(BuildContext context) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Flushbar(
              message: "Please allow location services on your phone",
              borderRadius: 8.0,
              margin: const EdgeInsets.all(8.0),
              dismissDirection: FlushbarDismissDirection.HORIZONTAL,
              duration: const Duration(milliseconds: 1200),
              icon: Icon(EvaIcons.radioOutline, color: "#F85C50".toColor()))
          .show(context);
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        Flushbar(
                message: "Please allow location services on your phone",
                borderRadius: 8.0,
                margin: const EdgeInsets.all(8.0),
                dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                duration: const Duration(milliseconds: 1200),
                icon: Icon(EvaIcons.radioOutline, color: "#F85C50".toColor()))
            .show(context);
      }
      if (permission == LocationPermission.denied) {
        Flushbar(
                message: "Please allow location services on your phone",
                borderRadius: 8.0,
                margin: const EdgeInsets.all(8.0),
                dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                duration: const Duration(milliseconds: 1200),
                icon: Icon(EvaIcons.radioOutline, color: "#F85C50".toColor()))
            .show(context);
      }
    }

    return Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    final ByteData data = await rootBundle.load(path);
    final ui.Codec codec = await ui
        .instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    final ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))
        .buffer
        .asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    final _dateController = useTextEditingController();
    final pinLocationIcon = useState<BitmapDescriptor>();
    final _locationMarker = useState<Marker>();

    return BlocConsumer<PropertyFormBloc, PropertyFormState>(
      listenWhen: (p, c) =>
          p.propertyFailureOrSuccessOption != c.propertyFailureOrSuccessOption,
      listener: (context, state) {
        state.propertyFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
              (failure) => Flushbar(
                    message: failure.map(
                      serverError: (_) =>
                          "Sorry we were unable to upload the property.",
                      unExpected: (_) =>
                          "An error occurred please try again later.",
                      uploadFileFailed: (_) => "Image upload failed",
                      insufficientPermission: (_) =>
                          "You do not have permission to create the property.",
                      unableToUpdate: (_) => "",
                      wrongFormat: (_) => "",
                      emptyDocuments: (_) => "",
                    ),
                    borderRadius: 5.0,
                    flushbarStyle: FlushbarStyle.FLOATING,
                    margin: const EdgeInsets.all(8.0),
                    dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                  ).show(context), (passed) {
            formKey.currentState.reset();
            ExtendedNavigator.of(context).push(Routes.baseLayout);
          }),
        );
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          autovalidateMode: state.showErrors
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text("Name"),
              ),
              TextFormField(
                cursorColor: Colors.black87,
                decoration: const InputDecoration(
                  labelText: "Property name",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
                onChanged: (v) => context
                    .read<PropertyFormBloc>()
                    .add(PropertyFormEvent.nameChanged(v)),
                validator: (v) => context
                    .read<PropertyFormBloc>()
                    .state
                    .property
                    .name
                    .value
                    .fold(
                        (f) => f.maybeMap(
                            empty: (_) => "Please add your property name",
                            exceedingLength: (_) => "The name is too long",
                            belowMinLength: (_) => "Please enter a valid name.",
                            orElse: () => null),
                        (_) => null),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text("Description"),
              ),
              TextFormField(
                cursorColor: Colors.black87,
                decoration: const InputDecoration(
                  labelText: "Property description",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
                maxLength: 250,
                onChanged: (v) => context
                    .read<PropertyFormBloc>()
                    .add(PropertyFormEvent.descriptionChanged(v)),
                validator: (v) => context
                    .read<PropertyFormBloc>()
                    .state
                    .property
                    .description
                    .value
                    .fold(
                        (f) => f.maybeMap(
                            empty: (_) => "A description is required.",
                            belowMinLength: (_) => "Description is too short",
                            exceedingLength: (_) => "Description is too long",
                            orElse: () => null),
                        (r) => null),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text("Property location"),
              ),
              InkWell(
                onTap: () {
                  final outContext = context.read<PropertyFormBloc>();
                  showCupertinoModalBottomSheet(
                    context: context,
                    expand: false,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    builder: (context) => SizedBox(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                              onTap: () async {
                                final Position geo =
                                    await _getLocation(context);
                                final geoPoint =
                                    GeoPoint(geo.latitude, geo.longitude);

                                outContext.add(
                                    PropertyFormEvent.locationChanged(
                                        geoPoint));
                                Navigator.of(context).pop();
                              },
                              title: const Text("Current location"),
                              subtitle: const Text(
                                  "Set my current location as default property location")),
                          ListTile(
                              onTap: () async {
                                //
                                final currentPos = await _getLocation(context);
                                //Custom marker icon with size set.
                                final markerIcon = await getBytesFromAsset(
                                    'assets/images/destination_marker.png', 70);
                                pinLocationIcon.value =
                                    BitmapDescriptor.fromBytes(markerIcon);

                                _locationMarker.value = Marker(
                                    markerId: MarkerId("2"),
                                    draggable: true,
                                    icon: pinLocationIcon.value,
                                    position: LatLng(currentPos.latitude,
                                        currentPos.longitude),
                                    onDragEnd: (loc) {
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                                  title: const Text(
                                                      "Location Changed"),
                                                  content: const Text(
                                                      "Set current picker location as property location?"),
                                                  titlePadding:
                                                      const EdgeInsets.all(
                                                          16.0),
                                                  elevation: 0.0,
                                                  contentPadding:
                                                      const EdgeInsets.all(
                                                          16.0),
                                                  actions: [
                                                    FlatButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Text(
                                                        "CANCEL",
                                                        style: TextStyle(
                                                            color: Theme.of(
                                                                    context)
                                                                .accentColor),
                                                      ),
                                                    ),
                                                    FlatButton(
                                                        onPressed: () {
                                                          outContext.add(
                                                            PropertyFormEvent
                                                                .locationChanged(
                                                                    GeoPoint(
                                                              loc.latitude,
                                                              loc.longitude,
                                                            )),
                                                          );
                                                          Navigator.of(context)
                                                              .pop();
                                                          Navigator.of(context)
                                                              .pop();
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Text(
                                                          "OK",
                                                          style: TextStyle(
                                                            color: Theme.of(
                                                                    context)
                                                                .accentColor,
                                                          ),
                                                        ))
                                                  ]));
                                    });

                                showGeneralDialog(
                                  context: context,
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      Scaffold(
                                    body: SizedBox(
                                      child: currentPos != null
                                          ? Stack(
                                              children: [
                                                GoogleMap(
                                                  initialCameraPosition:
                                                      CameraPosition(
                                                          target: LatLng(
                                                            currentPos.latitude,
                                                            currentPos
                                                                .longitude,
                                                          ),
                                                          zoom: 15.0),
                                                  onMapCreated:
                                                      (controller) async {
                                                    _controller
                                                        .complete(controller);
                                                  },
                                                  markers: <Marker>{
                                                    _locationMarker.value
                                                  },
                                                ),
                                                Positioned(
                                                  top: 45.0,
                                                  right: 20.0,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: "#E6E7E8"
                                                                .toColor(),
                                                            blurRadius: 10,
                                                            spreadRadius: 4,
                                                          )
                                                        ]),
                                                    child: IconButton(
                                                        icon: const Icon(
                                                            EvaIcons
                                                                .closeOutline),
                                                        color: Colors.black,
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          : const Center(
                                              child: Text("Loading maps.."),
                                      ),
                                    ),
                                  ),
                                );
                                // final outContext = context.read<PropertyFormBloc>();
                              },
                              title: const Text("Map location"),
                              subtitle: const Text(
                                  "Drag the marker to property location."))
                        ],
                      ),
                    ),
                  );
                },
                child: Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width - 32,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: state.hasLocation
                          ? Colors.white.withOpacity(0.75)
                          : "#E5F0FF".toColor(),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (state.hasLocation)
                            Icon(EvaIcons.bulbOutline,
                                size: 50, color: "#00DFC8".toColor())
                          else
                            const Icon(EvaIcons.pinOutline, size: 50),
                          const SizedBox(height: 10),
                          Text(
                              state.hasLocation
                                  ? "Location Successfully Set"
                                  : "Get location",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: "ProductSans")),
                        ])),
              ),
              const SizedBox(height: 10),
              TextFormField(
                readOnly: true,
                onTap: () async {
                  DateTime date = DateTime(2009);
                  date = await showDatePicker(
                      context: context,
                      builder: (context, child) {
                        return Theme(
                          data: ThemeData.light().copyWith(
                              colorScheme: const ColorScheme.light(
                            primary: Color(0xff48cfaf),
                            surface: Color(0xff48cfaf),
                            onSurface: Colors.black87,
                            onBackground: Colors.white,
                          )),
                          child: child,
                        );
                      },
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1995),
                      lastDate: DateTime.now().add(const Duration(days: 1)));
                  _dateController.text = date.toIso8601String().allBefore("T");
                  context
                      .read<PropertyFormBloc>()
                      .add(PropertyFormEvent.dateChanged(date.toLocal()));
                },
                controller: _dateController,
                decoration: const InputDecoration(
                  labelText: "Date completed",
                  prefixIcon: Icon(EvaIcons.calendar),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: RaisedButton(
                  color: Colors.black87,
                  onPressed: state.isSaving
                      ? null
                      : () {
                          if (formKey.currentState.validate()) {
                            context
                                .read<PropertyFormBloc>()
                                .add(const PropertyFormEvent.save());
                          }
                        },
                  child: state.isSaving
                      ? const SpinKitRing(
                          color: Colors.white, lineWidth: 2.0, size: 16)
                      : const Text("Add property",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

// class MapLocationPicker extends StatefulWidget {
//   final Position currentPosition;
//   final PropertyFormBloc propertyBloc;
//   const MapLocationPicker({
//     Key key,
//     this.currentPosition,
//     this.propertyBloc,
//   }) : super(key: key);
//
//   @override
//   _MapLocationPickerState createState() => _MapLocationPickerState();
// }
//
// class _MapLocationPickerState extends State<MapLocationPicker> {
//   final Completer<GoogleMapController> _controller = Completer();
//   BitmapDescriptor pinLocationIcon;
//   Marker _myLocationMarker;
//
//   @override
//   void initState() {
//     super.initState();
//     _myLocationMarker = Marker(
//       markerId: MarkerId("1"),
//       draggable: true,
//       icon: pinLocationIcon,
//       onDragEnd: (loc) {
//
//       }
//     )
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: double.infinity,
//       width: double.infinity,
//       child: Stack(
//         children : [
//           GoogleMap(
//             initialCameraPosition: CameraPosition(
//               target: LatLng(
//                 widget.currentPosition.latitude,
//                 widget.currentPosition.longitude,
//               ),
//               zoom: 15
//             ),
//             onMapCreated: (controller) {
//               _controller.complete(controller);
//             },
//             markers: <Marker>{
//               Marker(
//                 markerId: MarkerId("1"),
//                 draggable: true,
//                 icon:
//               )
//             }
//           ),
//           Positioned(
//             top: 25.0,
//             right: 10.0,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(25)
//               ),
//               child: IconButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 icon: const Icon(
//                   EvaIcons.closeOutline,
//                 )
//               )
//             )
//           )
//         ]
//       )
//     );
//   }
// }
