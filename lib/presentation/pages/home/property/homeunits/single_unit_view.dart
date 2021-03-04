import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:lottie/lottie.dart';
import 'package:tripoo/presentation/pages/home/property/property_card_widget.dart';

class SingleUnitView extends StatefulWidget {
  @override
  _SingleUnitViewState createState() => _SingleUnitViewState();
}

class _SingleUnitViewState extends State<SingleUnitView> {
  List<String> _images;
  bool _showAppBar;

  @override
  void initState() {
    _images = [
      "https://source.unsplash.com/weekly?furniture",
      "https://source.unsplash.com/weekly?home",
      "https://source.unsplash.com/weekly?couch"
    ];
    _showAppBar = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _showAppBar
          ? AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black87,
        ),
        title: RichText(
          text: TextSpan(
              text: "KSH 3500 \n",
              style: TextStyle(
                fontFamily: "ProductSans",
                color: Theme
                    .of(context)
                    .primaryColor,
              ),
              children: [
                TextSpan(
                    text: "BedSitter",
                    style: TextStyle(
                      fontFamily: "Lato",
                      color: Colors.black87,
                      fontSize: 12,
                    ))
              ]),
        ),
      )
          : null,
      body: SafeArea(
        child: NotificationListener<ScrollNotification>(
          onNotification: (scrollNotification) {
            if (scrollNotification is ScrollStartNotification) {
              print("we started scrolling");
            } else if (scrollNotification is ScrollUpdateNotification) {
              print("we updated scroll ${scrollNotification.metrics.pixels}");
              var offsetPx = scrollNotification.metrics.pixels;
              if (offsetPx >= 180) {
                setState(() {
                  _showAppBar = true;
                });
              } else {
                setState(() {
                  setState(() {
                    _showAppBar = false;
                  });
                });
              }
            } else if (scrollNotification is ScrollEndNotification) {
              print("we have reached the end");
            } else {
              print("we are somewhere");
            }

            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Stack(
                    children: [
                      CarouselSlider.builder(
                        itemCount: 3,
                        itemBuilder: (context, itemIndex, _) {
                          return Container(
                            height: 250,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            padding: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage(_images[itemIndex]),
                                  fit: BoxFit.cover,
                                )),
                          );
                        },
                        options: CarouselOptions(
                            height: 220, enlargeCenterPage: true),
                      ),
                      if (_showAppBar)
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 12),
                          child: CircleAvatar(
                            backgroundColor: Colors.black87,
                            radius: 24,
                            child: IconButton(
                              visualDensity: VisualDensity.compact,
                              color: Colors.white,
                              focusColor: Colors.black,
                              highlightColor: Colors.black87,
                              icon: const Icon(EvaIcons.arrowBackOutline),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        )
                      else
                        Container(),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(children: [
                    RichText(
                      text: TextSpan(
                        text: "KSH 3500 \n",
                        style: TextStyle(
                          fontFamily: "ProductSans",
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Theme
                              .of(context)
                              .primaryColor,
                        ),
                        children: [
                          TextSpan(
                            text: "Muindi Springs \n",
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontSize: 12,
                                color: Colors.black54),
                          ),
                          TextSpan(
                            text: "BedSitter",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontSize: 13,
                              color: Colors.black87,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Flushbar(
                          message: "Property saved to favorites.",
                          borderRadius: 8.0,
                          backgroundColor: Color(0xff45D09E),
                          margin: const EdgeInsets.all(8.0),
                        ).show(context);
                      },
                      icon: Icon(
                        EvaIcons.bookmarkOutline,
                        color: Colors.orangeAccent,
                        size: 32,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Badge(
                      badgeColor: Theme
                          .of(context)
                          .accentColor,
                      badgeContent: Text(
                        "4.5",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      child: Icon(
                        EvaIcons.star,
                        color: Colors.orange,
                        size: 32,
                      ),
                    )
                  ]),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "RENT",
                    style: TextStyle(
                      fontFamily: "ProductSans",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                      "This is a simple description about the property and more info about what it might have and the rules. It can be abit longer but can be shorter too. But a more comprehensive description would be nice"),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Agent",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Slidable(
                  actionPane: const SlidableDrawerActionPane(),
                  secondaryActions: [
                    IconButton(
                      icon: Icon(EvaIcons.phoneCallOutline),
                      onPressed: () {
                        print("phone call");
                      },
                    ),
                    IconButton(
                      icon: Icon(EvaIcons.messageSquareOutline),
                      onPressed: () {
                        print("message");
                      },
                    )
                  ],
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://source.unsplash.com/user/erondu")),
                    title: Text("Kimani Michael",
                        style: TextStyle(fontFamily: "ProductSans")),
                    subtitle: Text("Authorized Contact"),
                    trailing: Icon(
                      EvaIcons.arrowIosForward,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("Features",
                      style: TextStyle(
                        color: Colors.black54,
                      )),
                ),
                SizedBox(
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.3 - 10,
                            margin: const EdgeInsets.all(5.0),
                            child: Column(children: const [
                              Icon(
                                EvaIcons.cropOutline,
                                color: Color(0xff6D6E71),
                                size: 50,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "250 sq2",
                                style: TextStyle(fontFamily: "ProductSans"),
                              )
                            ])),
                        Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.3 - 10,
                            margin: const EdgeInsets.all(5.0),
                            child: Column(children: const [
                              Icon(
                                EvaIcons.copyOutline,
                                color: Color(0xff6D6E71),
                                size: 50,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "BedSitter",
                                style: TextStyle(fontFamily: "ProductSans"),
                              )
                            ])),
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.3 - 10,
                          margin: const EdgeInsets.all(5.0),
                          child: Column(
                            children: const [
                              Icon(
                                EvaIcons.awardOutline,
                                color: Color(0xff6D6E71),
                                size: 50,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Bathroom/Toilet",
                                style: TextStyle(fontFamily: "ProductSans"),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Amenities",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            child: Column(
                              children: const [
                                Icon(
                                  EvaIcons.wifiOutline,
                                  color: Color(0xff64C7FF),
                                  size: 30,
                                ),
                                const SizedBox(height: 5),
                                Text("Wifi", style: TextStyle(
                                  fontFamily: "ProductSans",
                                ),)
                              ],
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.all(5.0),
                              child: Column(children: const [
                                Icon(
                                  EvaIcons.droplet,
                                  color: Color(0xff00DC7D),
                                  size: 30,
                                ),
                                const SizedBox(height: 5),
                                Text("24/7 Water", style: TextStyle(
                                  fontFamily: "ProductSans",
                                ),)
                              ])),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            child: Column(children: const [
                              Icon(
                                EvaIcons.thermometerPlus,
                                color: Color(0xffF85C50),
                                size: 30,
                              ),
                              const SizedBox(height: 5),
                              Text("Hot water", style: TextStyle(
                                fontFamily: "ProductSans",
                              ),)
                            ],),),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            child: Column(children: const [
                              Icon(
                                EvaIcons.flash,
                                color: Color(0xffFFD600),
                                size: 30,
                              ),
                              const SizedBox(height: 5),
                              Text("Electricity Tokens", style: TextStyle(
                                fontFamily: "ProductSans",
                              ),)
                            ],),),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            child: Column(children: const [
                              Icon(
                                EvaIcons.shield,
                                color: Color(0xff0260E8),
                                size: 30,
                              ),
                              const SizedBox(height: 5),
                              Text("Security", style: TextStyle(
                                fontFamily: "ProductSans",
                              ),),
                            ],),),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            child: Column(children: const [
                              Icon(
                                EvaIcons.carOutline,
                                color: Color(0xff00DC7D),
                                size: 30,
                              ),
                              SizedBox(height: 5),
                              Text("Parking", style: TextStyle(
                                fontFamily: "ProductSans",
                              ),),
                            ],),),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            child: Column(
                              children: const [
                                Icon(
                                  EvaIcons.layoutOutline,
                                  color: Color(0xff58595B),
                                  size: 30,
                                ),
                                SizedBox(height: 5),
                                Text("Wardrobes", style: TextStyle(
                                  fontFamily: "ProductSans",
                                ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("Location",
                      style: TextStyle(
                        color: Colors.black54,
                      )),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 220,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 32,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F6FB),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset(
                        "assets/images/map_loader.json",
                        fit: BoxFit.fill,
                        height: 140,
                        width: 140,
                      ),
                      const SizedBox(height: 10),
                      ButtonTheme(
                        minWidth: 100,
                        padding: const EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: RaisedButton(
                          color: Color(0xff00CF91),
                          onPressed: () {
                            print("print location");
                          },
                          child: Text(
                            "Get location",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "ProductSans",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://source.unsplash.com/random?building"
                      ),
                      backgroundColor: Colors.orange,
                    ),
                    title: const Text("Munidi Properties",
                        style: TextStyle(fontFamily: "ProductSans")),
                    subtitle: Text("Nairobi, Kenya"),
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),),
                        ),
                        builder: (context) =>
                            Container(
                                padding: const EdgeInsets.all(16.0),
                                child: Center(
                                    child: Text("Property details")
                                )
                            ),
                      );
                    }
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("Similar properties from Muindi Properties",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,

                        color: Colors.black87,
                      )),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return PropertyCardWidget();
                    },),),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: _showAppBar
          ? FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10.0),
                  topRight: const Radius.circular(10.0),),
              ),
              builder: (context) =>
                  Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                          child: Text("Booking details")
                      )
                  )
          );
        },
        backgroundColor: Colors.black87,
        child: const Icon(EvaIcons.calendarOutline, color: Colors.white),
      )
          : null,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
