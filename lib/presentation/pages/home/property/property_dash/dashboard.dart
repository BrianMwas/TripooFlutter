import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';
import 'package:tripoo/presentation/routes/route.gr.dart';


class PropertyDash extends StatefulWidget {

  @override
  _PropertyDashState createState() => _PropertyDashState();
}

class _PropertyDashState extends State<PropertyDash> {
  // Height for the animated container,
  double _propertySize = 100.0;

  _onStartScroll(ScrollMetrics metrics) {
    setState(() {
      if(_propertySize <= 0) {
        _propertySize = 100.0;
      } else {
        _propertySize = 0;
      }
    });
  }

  _onUpdateScroll(ScrollMetrics metrics) {
    print("Scroll Update");
    setState(() {
      _propertySize = 0;
    });
  }

  _onEndScroll(ScrollMetrics metrics) {
    setState(() {
      _propertySize = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black87),
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Hello, \n",
                        style: TextStyle(
                          fontFamily: "Lato",
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: "Brian",
                            style: TextStyle(
                              fontFamily: "ProductSans",
                              fontSize: 25,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                            )
                          )
                        ]
                      )
                    ),
                    Badge(
                      badgeContent: const Text("1", style: TextStyle(color: Colors.white,),),
                      child: IconButton(
                        icon: const Icon(
                          EvaIcons.bellOutline,
                          color: Colors.black87,
                        ),
                        onPressed: () {
                          ExtendedNavigator.of(context).push(Routes.notifications);
                        }
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "Overview",
                  style: TextStyle(
                      fontFamily: "ProductSans",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.5 - 21,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(8.0),
                        gradient: LinearGradient(
                          colors: [
                            "#F2F8FD".toColor(),
                            "#D7E1E9".toColor(),
                          ]
                        )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "15 %",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 32,
                              fontFamily: "ProductSans"
                            )
                          ),
                          const Spacer(),
                          Text("Percentage unit live.", style: TextStyle(
                            color: Colors.black54
                          ),),
                        Text(
                          'Manage units.',
                          style: TextStyle(
                            color: Colors.red[400],
                            fontSize: 12,
                          )
                          )
                        ]
                      )
                    ),
                    const SizedBox(width: 10),
                    Container(
                        padding: const EdgeInsets.all(8.0),
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.5 - 21,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(
                            colors: [
                              "#51EAFF".toColor(),
                              "#64C7FF".toColor(),
                            ],
                          ),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 32,
                                      fontFamily: "ProductSans"
                                  )
                              ),
                              const Spacer(),
                              Text("Associates.", style: TextStyle(
                                  color: Colors.black54
                              ),),
                              Text(
                                'Manage associates.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                )
                              )
                            ]
                        )
                    )
                  ]
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0, left: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Properties", style: TextStyle(fontFamily: "ProductSans"),),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: TextButton(
                        child: Text("Add new"),
                        onPressed: () {
                          ExtendedNavigator.of(context).pushNewProperty();
                        }
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 210,
                child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                       itemCount: 1,
                       physics: const BouncingScrollPhysics(),
                       itemBuilder: (context, index) {
                         final String photo = "https://source.unsplash.com/weekly?apartment";

                         return InkWell(
                           onTap: () {
                            ExtendedNavigator.of(context).push(Routes.propertyDetail);
                           },
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Stack(
                               children : [
                                 Container(
                                   width: 180,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(8.0),
                                     image: DecorationImage(
                                         image: NetworkImage(
                                           photo
                                         ),
                                       fit: BoxFit.fill,
                                     ),
                                   ),
                                 ),
                                 Container(
                                   width: 180,
                                   padding: const EdgeInsets.all(8.0),
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(8.0),
                                     gradient: const LinearGradient(
                                       begin: Alignment.topRight,
                                       end: Alignment.bottomLeft,
                                       colors: [
                                         Colors.transparent,
                                         Colors.black
                                       ]
                                     ),
                                   ),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Align(
                                         alignment: Alignment.topRight,
                                         child: IconButton(
                                           icon: const Icon(EvaIcons.arrowForwardOutline),
                                           onPressed: () {
                                             print("Press the arrow forward");
                                           }
                                         )
                                       ),
                                       const Spacer(),

                                    Text("Muindi Homes", style: TextStyle(
                                             fontFamily: "ProductSans",
                                             color: Colors.white, fontSize: 20,),),

                                       Text("12 Units", style: TextStyle(color: Colors.white),)
                                     ]
                                   )
                                 ),
                             ]
                             ),
                           ),
                         );
                       },
                     ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16.0, vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                              "My Calendar",
                              style: TextStyle(
                              fontFamily: "ProductSans",
                                color: Colors.black87,
                                fontSize: 24,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("View your calendar for bookings"),
                          TextButton(
                            onPressed: () {
                              ExtendedNavigator.of(context).pushBookings();
                            },
                            child: Text(
                              "View my calendar",
                              style: TextStyle(
                                color: Theme.of(context).primaryColorDark,
                              )
                            ),
                          )
                        ]
                      ),
                    ),
                    Image.asset("assets/images/calendar.png", height: 120, width: 120, fit: BoxFit.fill)
                  ]
                ),
              ),
            ]
          ),
        )
    );
  }
}
