import 'dart:io';

import 'package:badges/badges.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:smart_select/smart_select.dart';
import 'package:supercharged/supercharged.dart';
import 'package:multi_image_picker/multi_image_picker.dart';


class CreateUnitView extends StatefulWidget {
  @override
  _CreateUnitViewState createState() => _CreateUnitViewState();
}

class _CreateUnitViewState extends State<CreateUnitView> {
  final _formKey = GlobalKey<FormState>();
  List<S2Choice<String>> _features = [];
  List<String> _feature = [];
  ThemeData get theme => Theme.of(context);


  @override
  void initState() {
    super.initState();
    _features = [
      S2Choice<String>(value: "parking", title: "Parking", meta: Icon(EvaIcons.car, color: Colors.green)),
      S2Choice<String>(value: "secure", title: "Security",  meta: Icon(EvaIcons.car, color: Colors.green)),
      S2Choice<String>(value: "hotwater", title: "Hot water",  meta: Icon(EvaIcons.car, color: Colors.green)),
      S2Choice<String>(value: "wifi", title: "Wifi",  meta: Icon(EvaIcons.car, color: Colors.green)),
      S2Choice<String>(value: "24HrWater", title: "24/7 Water",  meta: Icon(EvaIcons.car, color: Colors.green)),
      S2Choice<String>(value: "tokens", title: "Electricity Tokens",  meta: Icon(EvaIcons.car, color: Colors.green)),
      S2Choice<String>(value: "wardrobes", title: "Wardrobes",  meta: Icon(EvaIcons.car, color: Colors.green)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Create new unit", style: TextStyle(
          fontFamily: "ProductSans",
          color: Colors.black87,
        ),),
        iconTheme: const IconThemeData(
          color: Colors.black87,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: const Text("Unit name"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: TextFormField(
                    cursorColor: Colors.black87,
                    decoration: const InputDecoration(
                      labelText: "Name",
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                    validator: (v) {
                      if (v.isEmpty) {
                        return "Please enter your unit name.";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 16),
                  child: Text("Unit description"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: TextFormField(
                    cursorColor: Colors.black87,
                    decoration: const InputDecoration(
                      labelText: "Simple description",
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                    validator: (v) {
                      if (v.isEmpty) {
                        return "Please enter your description";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 16),
                  child: Text("Unit type and number"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.5 - 21,
                          child: TextFormField(
                            cursorColor: Colors.black87,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: "Number of units",
                              floatingLabelBehavior: FloatingLabelBehavior
                                  .never,
                            ),
                            validator: (v) {
                              if (v.isEmpty) {
                                return "Please enter number of units.";
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.5 - 21,
                          child: DropdownButtonFormField(
                            items: [
                              "Apartment",
                              "Business Stall",
                              "Go down",
                              "Bedsitter",
                            ]
                                .map((e) =>
                                DropdownMenuItem(child: Text(e), value: e,))
                                .toList(),
                            onChanged: (v) {
                              print("value $v");
                            },
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(12.0)
                            ),
                          ),
                        )
                      ]
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    onTap: () {
                      // Location modal bottom sheet.
                      showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius
                                .circular(10.0), topRight: Radius.circular(
                                10.0),),
                          ),
                          builder: (context) => LocationPickWidget()
                      );
                    },
                    leading: const Icon(
                        EvaIcons.map
                    ),
                    trailing: const Icon(
                        EvaIcons.arrowIosForwardOutline
                    ),
                    title: const Text("Add location", style: TextStyle(
                      color: Colors.black87,
                      fontFamily: "ProductSans",
                    ),),
                    subtitle: Text("Using property location by default"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(10.0), topRight: Radius.circular(
                              10.0),),
                        ),
                        builder: (context) =>
                            Container(
                                padding: const EdgeInsets.all(
                                    16.0
                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const SizedBox(height: 16),
                                      Text(
                                        "Update unit details",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          fontFamily: "ProductSans",
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 16.0),
                                        child: TextFormField(
                                          cursorColor: Colors.black87,
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              floatingLabelBehavior: FloatingLabelBehavior
                                                  .never,
                                              labelText: "Space size",
                                              prefixIcon: Icon(
                                                  EvaIcons.cropOutline)
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 16.0),
                                        child: TextFormField(
                                          cursorColor: Colors.black87,
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              floatingLabelBehavior: FloatingLabelBehavior
                                                  .never,
                                              labelText: "Number of bedrooms",
                                              prefixIcon: Icon(
                                                EvaIcons.copyOutline,)
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 16.0),
                                        child: TextFormField(
                                          cursorColor: Colors.black87,
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              floatingLabelBehavior: FloatingLabelBehavior
                                                  .never,
                                              labelText: "Bathrooms",
                                              prefixIcon: Icon(
                                                  EvaIcons.speakerOutline)
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: RaisedButton(
                                            elevation: 0,
                                            color: Colors.black87,
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Save",
                                              style: TextStyle(fontSize: 16,
                                                color: Colors.white,),)
                                        ),
                                      )
                                    ]
                                )
                            ),
                      );
                    },
                    leading: const Icon(
                        EvaIcons.listOutline
                    ),
                    trailing: const Icon(
                        EvaIcons.arrowIosForwardOutline
                    ),
                    title: Text("Add unit details", style: TextStyle(
                      color: Colors.black87,
                      fontFamily: "ProductSans",
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    onTap: () {
                      // Unit features.
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0)
                            )
                          ),
                          builder: (context) => SmartSelect<String>.multiple(
                              onChange: (selected) => setState(() => _feature = selected.value),
                              value: _feature,
                              modalFilter: true,
                              modalStyle: const S2ModalStyle(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius
                                      .only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                  )
                                )
                              ),
                              choiceItems: _features,
                              modalType: S2ModalType.bottomSheet,
                              title: "Unit features",
                              modalHeader: false,
                              tileBuilder: (context, state) {
                                return S2Tile.fromState(
                                  state,
                                  isTwoLine: true,
                                );
                              }
                          ),
                      );
                    },
                    leading: const Icon(
                        EvaIcons.flashOutline
                    ),
                    trailing: const Icon(
                        EvaIcons.arrowIosForwardOutline
                    ),
                    title: const Text("Add unit features", style: TextStyle(
                      color: Colors.black87,
                      fontFamily: "ProductSans",
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(10.0), topRight: Radius.circular(
                              10.0),),
                        ),
                        builder: (context) => ImageShowAndPickerWidget(),
                      );
                    },
                    leading: const Icon(
                        EvaIcons.imageOutline
                    ),
                    trailing: const Icon(
                        EvaIcons.arrowIosForwardOutline
                    ),
                    title: const Text(
                      "Add unit images",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "ProductSans",
                      ),),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: RaisedButton(
                      elevation: 0,
                      color: Theme
                          .of(context)
                          .primaryColor,
                      onPressed: () {
                        print("Created new unit");
                      },
                      child: Text("Create", style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ))
                  ),
                )
              ]
          ),
        ),
      ),
    );
  }
}


class ImageShowAndPickerWidget extends StatefulWidget {
  @override
  _ImageShowAndPickerWidgetState createState() =>
      _ImageShowAndPickerWidgetState();
}

class _ImageShowAndPickerWidgetState extends State<ImageShowAndPickerWidget> {
  List<Asset> _files = <Asset>[];
  String _error;

  Widget _buildImageList() {
    if (_files != null) {
      return SizedBox(
        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: _files.length,
          itemBuilder: (context, index) {
            final Asset asset = _files[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onDoubleTap: () {
                  setState(() {
                    _files.removeAt(index);
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: AssetThumb(
                    height: 200,
                    width: 200,
                    asset: asset,
                  ),
                ),
              ),
            );
          },
        ),
      );
    } else {
      return Center(
        child: Container(
            height: 200,
            width: MediaQuery
                .of(context)
                .size
                .width * 0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color(0xffE5F0FF),
            ),
            margin: const EdgeInsets.only(top: 12),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Center(
                child: Text(
                  "You don't have any images yet. Please add at least two",
                  textAlign: TextAlign.center,
                )
            )
        ),
      );
    }
  }

  Future<void> loadAssets() async {
    setState(() {
      _files = <Asset>[];
    });

    List<Asset> resultList;
    String error;

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 4,
        enableCamera: true,
        materialOptions: const MaterialOptions(
            actionBarColor: "#01142F",
            autoCloseOnSelectionLimit: true,
            selectCircleStrokeColor: "#45D09E",
            statusBarColor: "#01142F"
        ),
        cupertinoOptions: const CupertinoOptions(
          selectionFillColor: "#B7D4FF",
          selectionTextColor: "##004156",
          selectionCharacter: "✓",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _files = resultList;
      if (error == null) _error = 'No Error Dectected';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListTile(
                    title: Text("Upload Images",
                      style: TextStyle(
                        fontFamily: "ProductSans",
                        color: Colors.black,
                      ),),
                    subtitle: Text(
                        "Maximum number is four. Please select clear photos. Double tap a photo to remove it.")
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: RaisedButton(
                    elevation: 0,
                    color: Colors.black87,
                    onPressed: loadAssets,
                    child: const Text("Upload",
                        style: TextStyle(color: Colors.white, fontSize: 16,))
                ),
              ),
              _buildImageList(),
            ]
        )
    );
  }
}


class LocationPickWidget extends StatefulWidget {
  @override
  _LocationPickWidgetState createState() => _LocationPickWidgetState();
}

class _LocationPickWidgetState extends State<LocationPickWidget> {
  bool useDefaultLocation = true;


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(
            16.0
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: ListTile(
                  title: const Text(
                    "Use default property location", style: TextStyle(
                    fontFamily: "ProductSans",
                    color: Colors.black87,
                  ),),
                  isThreeLine: true,
                  subtitle: const Text(
                      "Units within the same property should use the same property location."),
                  trailing: Switch(
                    onChanged: (v) {
                      setState(() {
                        useDefaultLocation = v;
                      });
                    },
                    value: useDefaultLocation,
                    activeColor: Theme
                        .of(context)
                        .primaryColor,
                  ),
                ),
              ),
              Container(
                  height: 130,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 32,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: "#E5F0FF".toColor(),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          EvaIcons.pinOutline,
                          size: 50,
                        ),
                        TextButton(
                          onPressed: () {
                            print("change location.");
                          },
                          child: Text("Update location", style: TextStyle(
                              color: Colors.black54,
                              fontFamily: "ProductSans")),
                        ),

                      ]
                  )
              ),
              const Spacer(),
              RaisedButton(
                elevation: 0,
                color: Colors.black87,
                onPressed: () {
                  print("Set location");
                },
                child: Text(
                  "Change location",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),),
              )
            ]
        )
    );
  }
}

