
import 'package:auto_route/auto_route.dart';
import 'package:bezier_chart/bezier_chart.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:number_slide_animation/number_slide_animation.dart';
import 'package:supercharged/supercharged.dart';
import 'package:tripoo/presentation/routes/route.gr.dart';


class EditUnitOverview extends StatelessWidget {
  //  Analytics - ratings, views, bookings per month
  //  Activity - Bookings and any other activity made
  //  Calendar base on the particular unit
  final fromDate = DateTime(2019, 05, 22);
  final toDate = DateTime.now();

  final date1 = DateTime.now().subtract(Duration(days: 2));
  final date2 = DateTime.now().subtract(Duration(days: 3));
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 6, right: 16, left: 16,),
                child: Tooltip(
                  message: "Scroll left or right, pinch to get better overview on the graph.",
                  waitDuration: const Duration(seconds: 8),
                  height: 40,
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Icon(
                        EvaIcons.questionMarkCircle,
                        size: 18,
                        color: Colors.black26,
                      ),
                      SizedBox(width: 5),
                      Text("Overview"),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(right: 16, left: 16, top: 8),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    colors: [
                      "#01142F".toColor(),
                      "#01142F".toColor().withOpacity(0.75),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
                child: Stack(
                  children: [
                    BezierChart(
                      fromDate: fromDate,
                      bezierChartScale: BezierChartScale.WEEKLY,
                      toDate: toDate,
                      selectedDate: toDate,

                      series: [
                        BezierLine(
                          label: "Bookings",
                          lineColor: "#00DFC8".toColor(),
                          onMissingValue: (dateTime) {
                            if (dateTime.day.isEven) {
                              return 10.0;
                            }
                            return 5.0;
                          },
                          data: [
                            DataPoint<DateTime>(value: 10, xAxis: date1),
                            DataPoint<DateTime>(value: 50, xAxis: date2),
                          ],
                        ),
                      ],
                      config: BezierChartConfig(
                        verticalIndicatorStrokeWidth: 2.0,
                        verticalIndicatorColor: Colors.black26,
                        showVerticalIndicator: true,
                        verticalIndicatorFixedPosition: false,
                        verticalLineFullHeight: false,
                        footerHeight: 50.0,
                        xAxisTextStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lato",
                          fontSize: 10,
                        )
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: RichText(
                        text: TextSpan(
                          text: "Bookings analysis\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Lato",
                            ),
                          children: [
                            TextSpan(
                              text: "Bookings analysis over time",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: "Lato",
                              )
                            )
                          ]
                        )
                      ),
                    )
                  ],
                )
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width * 0.5 - 21,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              gradient: LinearGradient(colors: [
                                "#FF6B00".toColor(),
                                "#FF6B00".toColor().withOpacity(0.45),
                              ]),
                            ),
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  NumberSlideAnimation(
                                      number: "10",
                                      duration: const Duration(seconds: 2),
                                      curve: Curves.decelerate,
                                      textStyle: TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            .fontSize,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "ProductSans",
                                      )
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          text: "Views\n",
                                          style: TextStyle(
                                            fontFamily: "Lato",
                                            color: Colors.white,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "Total views",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white
                                              ),
                                            )
                                          ]
                                      )
                                  )
                                ]
                            )
                        ),
                        Positioned(
                          right: -50,
                          top: -30,
                          child: Icon(
                            EvaIcons.eyeOutline,
                            size: 145,
                            color: Colors.white.withOpacity(0.5)
                          )
                        )
                      ]
                    ),
                    const SizedBox(width: 10),
                    Stack(
                        children: [
                          Container(
                              height: 100,
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
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    NumberSlideAnimation(
                                        number: "128",
                                        duration: const Duration(seconds: 2),
                                        curve: Curves.decelerate,
                                        textStyle: TextStyle(
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .headline5
                                              .fontSize,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "ProductSans",
                                        )
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: "Likes\n",
                                        style: TextStyle(
                                          fontFamily: "Lato",
                                          color: Colors.white,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Number of people who loved the property",
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white
                                            ),
                                          )
                                        ]
                                      )
                                    )
                                  ]
                              )
                          ),
                          Positioned(
                              right: -50,
                              top: -30,
                              child: Icon(
                                  EvaIcons.heartOutline,
                                  size: 145,
                                  color: Colors.white.withOpacity(0.5)
                              )
                          )
                        ]
                    )
                  ]
                ),
              ),
              Padding(
              padding: const EdgeInsets.only(bottom: 16.0, right: 18, left: 18),
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
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const ListTile(
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
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
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
                                      "Visits Calendar",
                                      style: TextStyle(
                                        fontSize:
                                        Theme.of(context).textTheme.headline5.fontSize,
                                        fontFamily: "ProductSans",
                                        color: Colors.black87,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "Plan yourself according to booked visits",
                                      style: Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset("assets/images/calendar.png", fit: BoxFit.fill, width: 140, height: 120),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8),
                          child: TextButton(
                              onPressed: () {
                                ExtendedNavigator.of(context).push(Routes.bookings);
                              },
                              child: Text(
                                  "Plan your calendar",
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
            ),
          ]
        ),
      ),
    );
  }
}
