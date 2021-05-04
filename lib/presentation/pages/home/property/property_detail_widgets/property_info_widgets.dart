import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:dartz/dartz.dart' as dz;

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:supercharged/supercharged.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:geocoder/geocoder.dart';
import 'package:tripoo/application/property/create_property/bloc/property_form_bloc.dart';
import 'package:tripoo/domain/entity/property/property.dart';
import 'package:tripoo/presentation/common/modal_fit.dart';
import 'package:tripoo/utils/firestorage.dart';

import '../../../../../injection.dart';

class PropertyInfoWidget extends HookWidget {

  final GlobalKey scaffKey;
  final Property property;

  const PropertyInfoWidget({
    Key key,
    @required this.scaffKey,
    @required this.property,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text("Overview")),
            Stack(children: [
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width - 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: property.imageURL.isEmpty
                      ? const DecorationImage(
                          image: AssetImage("assets/images/placeholder.png"),
                          fit: BoxFit.cover,
                        )
                      : DecorationImage(
                          image: NetworkImage(property.imageURL),
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              Container(
                height: 120,
                padding: const EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width - 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.black87.withOpacity(0.55), Colors.black87],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: FutureBuilder(
                        future: Geocoder.local.findAddressesFromCoordinates(
                            Coordinates(property.location.latitude,
                                property.location.longitude)),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return const SizedBox(
                                child: Center(
                                    child: Text(
                                        "Please wait while we get address info")));
                          }
                          final propAddRaw = snapshot.data as List<Address>;
                          final propertyAddress =
                          propAddRaw.firstWhere((a) => a.addressLine != null);
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                propertyAddress.addressLine,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: "ProductSans",
                                  fontSize: 12
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    const Spacer(),
                    Text(
                      property.name.getOrCrash(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "ProductSans",
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      property.description.getOrCrash(),
                      overflow: TextOverflow.fade,
                      softWrap: true,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  onPressed: () {
                    // showCustomModalBottomSheet
                    showFloatingModalBottomSheet(
                      context: scaffKey.currentContext,
                      builder: (ctx) => SafeArea(
                        child: UpdatePropertyPhoto(
                          property: property,
                          holderContext: ctx,
                        ),
                      ),
                    );
                  },
                  icon: const Icon(
                    EvaIcons.editOutline,
                    color: Colors.white,
                  ),
                ),
              ),
            ],),
            //Manage agents include removing, adding, editing.
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 10, right: 10, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Manage agents"),
                  IconButton(onPressed: () {}, icon: Icon(EvaIcons.plus))
                ],
              ),
            ),
            SizedBox(
                height: 200,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Slidable(
                      actionPane: const SlidableDrawerActionPane(),
                      actions: <Widget>[
                        IconSlideAction(
                            icon: EvaIcons.editOutline,
                            onTap: () {
                              print("edit");
                            }),
                        IconSlideAction(
                            icon: EvaIcons.trashOutline,
                            onTap: () {
                              print("edit");
                            }),
                      ],
                      secondaryActions: [
                        IconSlideAction(
                            icon: EvaIcons.phoneCallOutline,
                            onTap: () {
                              print("edit");
                            }),
                        IconSlideAction(
                            icon: EvaIcons.messageSquareOutline,
                            onTap: () {
                              print("edit");
                            }),
                      ],
                      child: const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://source.unsplash.com/user/erondu"),
                          ),
                          title: Text("Kimani Njuguna",
                              style: TextStyle(fontFamily: "ProductSans")),
                          subtitle: Text("Caretaker")),
                    );
                  },
                )),
            const Padding(
              padding: EdgeInsets.only(bottom: 5.0, top: 10),
              child: ListTile(
                  title: Text("Hide property",
                      style: TextStyle(
                        color: Colors.orangeAccent,
                        fontFamily: "ProductSans",
                      )),
                  subtitle: Text("Keep from being listed"),
                  trailing: Icon(
                    EvaIcons.eyeOff2Outline,
                    color: Colors.orangeAccent,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 18.0),
              child: ListTile(
                  title: Text("Delete property",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontFamily: "ProductSans",
                      )),
                  subtitle: Text("Remove property and all its units"),
                  trailing: Icon(
                    EvaIcons.trashOutline,
                    color: Colors.redAccent,
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}

class UpdatePropertyPhoto extends HookWidget {
  UpdatePropertyPhoto({
    Key key,
    @required this.property,
    @required this.holderContext,
  }) : super(key: key);
  final Property property;
  final BuildContext holderContext;

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    final ByteData data = await rootBundle.load(path);
    final ui.Codec codec = await ui
        .instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    final ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))
        .buffer
        .asUint8List();
  }

  final picker = ImagePicker();

  Future<File> getImage(BuildContext context) async {
    final PickedFile pickedFile = await picker.getImage(
        source: ImageSource.gallery, maxWidth: 1080, maxHeight: 720);
    if (pickedFile == null) {
      Flushbar(
        margin: const EdgeInsets.all(16),
        message: "Please select an image first",
        borderRadius: 8.0,
      ).show(context);
    }
    return Future.value(File(pickedFile.path));
  }

  @override
  Widget build(BuildContext context) {
    final _image = useState<File>();
    final _confirmUpload = useState<bool>(false);
    final _uploadPressed = useState<bool>(false);

    return BlocProvider(
      create: (context) => getIt<PropertyFormBloc>()
        ..add(PropertyFormEvent.initialized(dz.optionOf(property))),
      child: BlocConsumer<PropertyFormBloc, PropertyFormState>(
        buildWhen: (p, c) =>
            p.propertyFailureOrSuccessOption !=
            c.propertyFailureOrSuccessOption,
        listenWhen: (p, c) => p.isSaving != c.isSaving,
        listener: (context, state) {

          state.propertyFailureOrSuccessOption.fold(
            () => null,
            (either) => either.fold(
              (failure) {
                Flushbar(
                    margin: const EdgeInsets.all(8.0),
                    borderRadius: 8.0,
                    duration: const Duration(seconds: 2),
                    dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                    message: failure.map(
                        serverError: (_) =>
                            "We could not update the property please try again later",
                        unExpected: (_) =>
                            "An unexpected error occurred. Please try again later",
                        uploadFileFailed: (_) =>
                            "Unable to upload image of the property",
                        insufficientPermission: (_) =>
                            "You don't have permission to update property",
                        unableToUpdate: (_) => "Update was not successful",
                        wrongFormat: (_) => "",
                        emptyDocuments: (_) => "")).show(context);
              },
              (r) {
                Flushbar(
                        margin: const EdgeInsets.all(8.0),
                        borderRadius: 8.0,
                        duration: const Duration(seconds: 2),
                        dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                        message: "Update was successful.")
                    .show(context);
              },
            ),
          );
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("Change property photo",
                    style: TextStyle(fontFamily: "ProductSans", fontSize: 20)),
                const Divider(),
                const SizedBox(height: 10),
                InkWell(
                  onTap: _uploadPressed.value == true
                      ? null
                      : () async {
                          _image.value = await getImage(context);
                        },
                  child: Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width - 32,
                    padding: const EdgeInsets.all(16.0),
                    decoration: _image.value != null
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                image: FileImage(_image.value),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.55),
                                    BlendMode.darken)),
                          )
                        : BoxDecoration(
                            color: "#E5F0FF".toColor(),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                    child: _image.value != null
                        ? SizedBox(
                            child: Center(
                              child: IconButton(
                                  icon: const Icon(EvaIcons.editOutline),
                                  iconSize: 50,
                                  color: "#FFD600".toColor(),
                                  onPressed: _uploadPressed.value == true
                                      ? null
                                      : () async {
                                          _image.value =
                                              await getImage(context);
                                        }),
                            ),
                          )
                        : Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(EvaIcons.cloudUploadOutline, size: 50),
                              SizedBox(height: 10),
                              Text(
                                "Upload property photo",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: "ProductSans",
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
                const SizedBox(height: 20),
                FutureBuilder<UploadTask>(
                  future: _image.value != null && _confirmUpload.value == true
                      ? uploadImage(
                          _image.value, "property", property.name.getOrCrash())
                      : null,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.none) {
                      return RaisedButton(
                        elevation: 0.0,
                        color: Colors.black87,
                        disabledColor: Colors.black26,
                        onPressed: _image.value == null
                            ? null
                            : () {
                                _uploadPressed.value = true;
                                _confirmUpload.value = true;
                              },
                        child: const Text(
                          "Upload photo",
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const SizedBox(
                          child: Center(child: Text("Please wait")));
                    }

                    return StreamBuilder<TaskSnapshot>(
                        stream: snapshot.hasData
                            ? snapshot.data.snapshotEvents
                            : null,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return RaisedButton(
                                onPressed: () {
                                  _image.value = null;
                                  Navigator.of(context).pop();
                                },
                                child: const Text(
                                  "Close",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ));
                          }
                          return snapshot.data != null
                              ? Center(
                                  child: LinearPercentIndicator(
                                    width:
                                        MediaQuery.of(context).size.width - 60,
                                    lineHeight: 14.0,
                                    animation: true,
                                    linearGradient:
                                        const LinearGradient(colors: [
                                      Colors.amber,
                                      Colors.redAccent,
                                    ]),
                                    onAnimationEnd: () {
                                      double progress =
                                          snapshot.data.bytesTransferred /
                                              snapshot.data.totalBytes;
                                      if (progress >= 1.0) {
                                        snapshot.data.ref
                                            .getDownloadURL()
                                            .then((value) {
                                          context.read<PropertyFormBloc>()
                                            ..add(
                                                PropertyFormEvent.imageChanged(
                                                    value))
                                            ..add(
                                                const PropertyFormEvent.save());
                                        });
                                        Navigator.of(holderContext, rootNavigator: true).pop();
                                      }
                                    },
                                    percent: snapshot.data.bytesTransferred /
                                        snapshot.data.totalBytes,
                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                    backgroundColor: "#E5F0FF".toColor(),
                                  ),
                                )
                              : Container();
                        });
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
