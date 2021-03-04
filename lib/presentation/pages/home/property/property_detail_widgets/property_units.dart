import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:number_slide_animation/number_slide_animation_widget.dart';
import 'package:supercharged/supercharged.dart';
import 'package:tripoo/presentation/pages/home/property/homeunits/unit_card_widget.dart';

class PropertyUnitsList extends StatelessWidget {
  final String photo = "https://source.unsplash.com/weekly?apartment";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              "Muindi Properties",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontFamily: "ProductSans",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Text("Muindi properties description"),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
            child: Text("Overview"),
          ),
          // Statistics
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 100,
                      padding: const EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width * 0.5 - 21,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(colors: [
                            "#FF6B00".toColor(),
                            "#FF6B00".toColor().withOpacity(0.45),
                          ])),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NumberSlideAnimation(
                            number: "6",
                            duration: const Duration(seconds: 2),
                            curve: Curves.decelerate,
                            textStyle: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .fontSize,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: "ProductSans",
                            ),
                          ),
                          const Text(
                            "Properties Live",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: -50,
                      top: -30,
                      child: Icon(
                        EvaIcons.radioOutline,
                        size: 145,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 10),
                Stack(children: [
                  Container(
                    height: 100,
                    padding: const EdgeInsets.all(8.0),
                    width: MediaQuery.of(context).size.width * 0.5 - 21,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [
                              "#141E30".toColor(),
                              "#28416F".toColor(),
                            ])),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NumberSlideAnimation(
                          number: "5",
                          duration: const Duration(seconds: 3),
                          curve: Curves.decelerate,
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize:
                                Theme.of(context).textTheme.headline4.fontSize,
                            fontWeight: FontWeight.w600,
                            fontFamily: "ProductSans",
                          ),
                        ),
                        const Text(
                          "My agents",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -30,
                    top: -20,
                    child: Icon(
                      EvaIcons.peopleOutline,
                      size: 125,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  )
                ]),
              ],
            ),
          ),
          // Property activity
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Recent activity"),
                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Delete?"),
                          titleTextStyle: TextStyle(
                            fontFamily: "ProductSans",
                            color: Colors.black87,
                          ),
                          content: Text("Are you sure you want to delete the recent activities"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Continue"),
                              ),
                            )
                          ]
                        )
                    );
                  },
                  child: Row(
                    children: const [
                      Icon(EvaIcons.trashOutline),
                      SizedBox(width: 10),
                      Text("Clear activity"),
                    ]
                  )
                )
              ],
            ),
          ),
          SizedBox(
              height: 200,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    EvaIcons.calendarOutline,
                    color: Colors.blueAccent
                  ),
                  title: Text(
                      "Booking update",
                      style: TextStyle(
                          fontFamily: "ProductSans",
                      ),
                  ),
                  subtitle: Text("Kimani booked for a visit on the 1st of February"),
                );
              },
            )
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("My units"),
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return UnitCard();
              }
            )
          ),

          //  List of units.
          //  Agents
          //  Calendar
        ]),
      ),
    );
  }
}


