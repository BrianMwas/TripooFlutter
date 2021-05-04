import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';



class UpdatePropertyFormWidget extends HookWidget {
  const UpdatePropertyFormWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                const Text("Update property",
                    style: TextStyle(
                      fontFamily: "ProductSans",
                      fontSize: 20,
                    )),
                const SizedBox(height: 30),
                Form(
                    child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                        decoration:
                            const InputDecoration(
                                labelText:
                                    "Property name")),
                    const SizedBox(height: 10),
                    TextFormField(
                        maxLines: 5,
                        decoration: const InputDecoration(
                            labelText:
                                "Property description")),
                    const SizedBox(height: 10),
                    ButtonTheme(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(6.0),
                      ),
                      child: RaisedButton(
                        color: const Color(0xff00DFC8),
                        elevation: 0.0,
                        onPressed: () {
                          print("Saved");
                        },
                        child: const Text(
                          "Save",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),)
              ],),
        ),);
  }
}