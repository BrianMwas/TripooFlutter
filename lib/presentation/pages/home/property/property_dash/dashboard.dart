import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jiffy/jiffy.dart';
import 'package:lottie/lottie.dart';
import 'package:supercharged/supercharged.dart';
import 'package:tripoo/application/property/list_properties/property_list_bloc.dart';
import 'package:tripoo/presentation/routes/route.gr.dart';

import '../../../../../injection.dart';

class PropertyDash extends StatefulWidget {
  @override
  _PropertyDashState createState() => _PropertyDashState();
}

class _PropertyDashState extends State<PropertyDash> {
  // Height for the animated container,

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: SpinKitChasingDots(color: Colors.black54));
          }

          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasError) {
            return Center(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Lottie.asset(
                    "assets/images/error_cone.json",
                    height: 250,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 20),
                  const Text("Error loading information. Please try again"),
                ]));
          }

          final user = snapshot.data as User;

          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<PropertyListBloc>()
                  ..add(const PropertyListEvent.watchAllOpen()),
              ),
            ],
            child: Scaffold(
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
                                      style: const TextStyle(
                                        fontFamily: "Lato",
                                        color: Colors.black54,
                                        fontSize: 16,
                                      ),
                                      children: [
                                    TextSpan(
                                        text: user.displayName,
                                        style: const TextStyle(
                                          fontFamily: "ProductSans",
                                          fontSize: 25,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w600,
                                        ))
                                  ])),
                              Badge(
                                badgeContent: const Text(
                                  "1",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                child: IconButton(
                                    icon: const Icon(
                                      EvaIcons.bellOutline,
                                      color: Colors.black87,
                                    ),
                                    onPressed: () {
                                      ExtendedNavigator.of(context)
                                          .push(Routes.notifications);
                                    }),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Overview",
                            style: TextStyle(
                              fontFamily: "ProductSans",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(children: [
                            Container(
                                padding: const EdgeInsets.all(8.0),
                                height: 100,
                                width: MediaQuery.of(context).size.width * 0.5 -
                                    21,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [
                                      "#F2F8FD".toColor(),
                                      "#D7E1E9".toColor(),
                                    ])),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text("15 %",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 32,
                                              fontFamily: "ProductSans")),
                                      const Spacer(),
                                      const Text(
                                        "Percentage unit live.",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text('Manage units.',
                                          style: TextStyle(
                                            color: Colors.red[400],
                                            fontSize: 12,
                                          ))
                                    ])),
                            const SizedBox(width: 10),
                            Container(
                                padding: const EdgeInsets.all(8.0),
                                height: 100,
                                width: MediaQuery.of(context).size.width * 0.5 -
                                    21,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text("2",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 32,
                                              fontFamily: "ProductSans")),
                                      Spacer(),
                                      Text(
                                        "Associates.",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text('Manage associates.',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ))
                                    ]))
                          ]),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 16.0, left: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "My Properties",
                                style: TextStyle(fontFamily: "ProductSans"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: TextButton(
                                  onPressed: () {
                                    ExtendedNavigator.of(context)
                                        .pushNewProperty();
                                  },
                                  child: Text("Add new"),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 210,
                          child:
                              BlocBuilder<PropertyListBloc, PropertyListState>(
                            builder: (context, state) {
                              return state.map(
                                initial: (_) => Container(),
                                loadInProgress: (_) => ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Container(
                                        width: 180,
                                        padding: const EdgeInsets.all(10.0),
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: const Color(0xffE6E7E8),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                                width: 120,
                                                height: 10,
                                                margin: const EdgeInsets.only(
                                                    bottom: 10),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: const Color(
                                                        0xffD1D3D4))),
                                            Container(
                                                width: 20,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: const Color(
                                                        0xffD1D3D4)))
                                          ],
                                        ));
                                  },
                                ),
                                loadSuccess: (state) {
                                  final properties = state.properties;
                                  if (properties.isEmpty) {
                                    return const Center(
                                        child: Text("No property(s) found."));
                                  }

                                  return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 1,
                                    physics: const BouncingScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          ExtendedNavigator.of(context)
                                              .push(Routes.propertyDetail);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Stack(children: [
                                            Container(
                                              width: 180,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: properties[index]
                                                                .imageURL ==
                                                            null ||
                                                        properties[index]
                                                            .imageURL
                                                            .isEmpty
                                                    ? const DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/placeholder.png"),
                                                        fit: BoxFit.cover,
                                                      )
                                                    : DecorationImage(
                                                        image: NetworkImage(
                                                            properties[index]
                                                                .imageURL),
                                                        fit: BoxFit.fill,
                                                      ),
                                              ),
                                            ),
                                            Container(
                                                width: 180,
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  gradient:
                                                      const LinearGradient(
                                                          begin: Alignment
                                                              .topRight,
                                                          end: Alignment
                                                              .bottomLeft,
                                                          colors: [
                                                        Colors.transparent,
                                                        Colors.black
                                                      ]),
                                                ),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: IconButton(
                                                              icon: const Icon(
                                                                  EvaIcons
                                                                      .arrowForwardOutline,
                                                                  color: Colors
                                                                      .white),
                                                              onPressed: () {
                                                                ExtendedNavigator.of(
                                                                        context)
                                                                    .push(Routes
                                                                        .propertyDetail);
                                                              })),
                                                      const Spacer(),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                bottom: 2.0),
                                                        child: Text(
                                                          properties[index]
                                                              .name
                                                              .getOrCrash(),
                                                          style:
                                                              const TextStyle(
                                                            fontFamily:
                                                                "ProductSans",
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                bottom: 4.0),
                                                        child: Text(
                                                            "Created ${Jiffy(properties[index].createdAt).fromNow()}",
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white)),
                                                      ),
                                                    ])),
                                          ]),
                                        ),
                                      );
                                    },
                                  );
                                },
                                loadFailure: (state) {
                                  return Center(
                                      child: Column(children: [
                                    Lottie.asset(
                                      "assets/images/error_cone.json",
                                      height: 150,
                                      width: 120,
                                      fit: BoxFit.fill,
                                    ),
                                    Text(
                                      state.propertyFailure.map(
                                        serverError: (_) => null,
                                        unExpected: (_) =>
                                            "An unexpected error occurred. Please try again or contact support.",
                                        uploadFileFailed: (_) => null,
                                        insufficientPermission: (_) =>
                                            "You don't have permission to view the property.",
                                        unableToUpdate: (_) => null,
                                        wrongFormat: (_) => null,
                                        emptyDocuments: (_) => null,
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ]));
                                },
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Row(children: [
                            Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "My Calendar",
                                      style: TextStyle(
                                        fontFamily: "ProductSans",
                                        color: Colors.black87,
                                        fontSize: 24,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                        "View your calendar for bookings"),
                                    TextButton(
                                      onPressed: () {
                                        ExtendedNavigator.of(context)
                                            .pushBookings();
                                      },
                                      child: Text("View my calendar",
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .primaryColorDark,
                                          )),
                                    )
                                  ]),
                            ),
                            Image.asset("assets/images/calendar.png",
                                height: 120, width: 120, fit: BoxFit.fill)
                          ]),
                        ),
                      ]),
                )),
          );
        });
  }
}
