
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supercharged/supercharged.dart';
import 'package:tripoo/presentation/routes/route.gr.dart';

class NewProperty extends StatefulWidget {
  @override
  _NewPropertyState createState() => _NewPropertyState();
}

class _NewPropertyState extends State<NewProperty> {
  final _formKey = GlobalKey<FormState>();
  final picker = ImagePicker();
  File _image;


  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        Flushbar(
          margin: const EdgeInsets.all(16),
          message: "Please select an image first",
          borderRadius: 8.0,
        ).show(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _dateController = TextEditingController();
    return Scaffold(
      // Prevent overflow when using keyboard.
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black87,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Create property",
          style: TextStyle(
            fontFamily: "ProductSans",
            color: Colors.black87,
          ),
        ),
      ),
      body:  Container(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32,),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text("Upload property hero photo"),
                ),
                InkWell(
                  onTap: () {
                    getImage();
                  },
                  onLongPress: () {
                    getImage();
                  },
                  child: Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width - 32,
                    padding: const EdgeInsets.all(16.0),
                    decoration: _image != null ? BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: FileImage(
                          _image
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.55), BlendMode.darken)
                      ),
                    ) : BoxDecoration(
                      color: "#E5F0FF".toColor(),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: _image != null ? Container(
                      child: Center(
                        child: IconButton(
                          icon: Icon(EvaIcons.editOutline),
                          iconSize: 50,
                          color: "#FFD600".toColor(),
                          onPressed: () {
                            getImage();
                          }
                        )
                      )
                    ) : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          EvaIcons.cloudUploadOutline,
                          size: 50
                        ),
                        SizedBox(height: 10),
                        Text("Upload property photo", style: TextStyle(color: Colors.black54, fontFamily: "ProductSans")),
                      ]
                    )
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text("Name"),
                ),
                TextFormField(
                  cursorColor: Colors.black87,
                  decoration: const InputDecoration(
                    labelText: "Property name",
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  validator: (v) {
                    if(v.isEmpty) {
                      return "Please enter your property name.";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Text("Description"),
                ),
                TextFormField(
                  cursorColor: Colors.black87,
                  decoration: const InputDecoration(
                    labelText: "Property description",
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding:  EdgeInsets.only(bottom:8.0),
                  child: Text("Property location"),
                ),
                Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width - 32,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: "#E5F0FF".toColor(),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                              EvaIcons.pinOutline,
                              size: 50
                          ),
                          SizedBox(height: 10),
                          Text("Get location", style: TextStyle(color: Colors.black54, fontFamily: "ProductSans")),
                        ]
                    )
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
                            colorScheme: const ColorScheme
                              .light(
                                primary: Color(0xff48cfaf),
                                surface: Color(0xff48cfaf),
                                onSurface: Colors.black87,
                              onBackground: Colors.white,
                            )
                          ),
                          child: child,
                        );
                      },
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1995),
                      lastDate: DateTime.now().add(const Duration(days: 1))
                    );
                    _dateController.text = date.toIso8601String().allBefore("T");
                  },
                  controller: _dateController,
                  decoration: const InputDecoration(
                    labelText: "Date completed",
                    prefixIcon: Icon(EvaIcons.calendar),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: RaisedButton(
                    color: Colors.black87,
                    onPressed: () {
                      ExtendedNavigator.of(context).push(Routes.propertyDetail);
                    },
                    child: const Text(
                      "Add property",
                      style: TextStyle(
                        color: Colors.white,
                      )
                    )
                  ),
                )
              ],
            ),
          )
        ),
    );
  }
}

