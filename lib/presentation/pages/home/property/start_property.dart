import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CreateProperty extends StatefulWidget {
  @override
  _CreatePropertyState createState() => _CreatePropertyState();
}

class _CreatePropertyState extends State<CreateProperty> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32),
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Lottie.asset("assets/images/property.json", height: 140, width: 240, fit: BoxFit.fill,),
                    const SizedBox(height: 20),
                    Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: Theme.of(context).textTheme.headline4.fontSize,
                        fontFamily: "ProductSans",
                      )
                    ),
                    Text(
                      "Choose your options"
                    )
                  ]
                )
              ),
              Container(
                padding: const EdgeInsets.only(top: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:12.0, vertical: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "New Property",
                                  style: TextStyle(
                                    fontSize:
                                    Theme.of(context).textTheme.headline5.fontSize,
                                    fontFamily: "ProductSans",
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Creating a property first will allow you to add multiple units and help you manage them better..",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ],
                            ),
                          ),
                          Image.asset("assets/images/person_info.png", fit: BoxFit.fill, width: 140, height: 120),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8),
                      child: TextButton(
                          onPressed: () {
                            print("Outline buttons");
                          },
                          child: Text(
                              "Get Started",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontFamily: "ProductSans",
                                fontWeight: FontWeight.w600,
                              )
                          )
                      ),
                    ),
                  ]
                )
              ),
              const SizedBox(height: 10),
              Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:12.0, vertical: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Manage my property",
                                      style: TextStyle(
                                        fontSize:
                                        Theme.of(context).textTheme.headline5.fontSize,
                                        fontFamily: "ProductSans",
                                        color: Colors.black87,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "Edit or update your properties.",
                                      style: Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset("assets/images/manage_property.png", fit: BoxFit.fill, width: 140, height: 120),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8),
                          child: TextButton(
                              onPressed: () {
                                print("Outline buttons");
                              },
                              child: Text(
                                  "Get Started",
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColorDark,
                                    fontFamily: "ProductSans",
                                    fontWeight: FontWeight.w600,
                                  )
                              )
                          ),
                        ),
                      ]
                  )
              ),
            ],
        ),
      ),
    );
  }
}
