import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supercharged/supercharged.dart';
import 'package:tripoo/application/auth/auth_bloc.dart';
import 'package:tripoo/presentation/routes/route.gr.dart';

import 'filter_properties.dart';
import 'property_card_widget.dart';

class PropertyList extends HookWidget {
  PropertyList({ Key key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    final _lowPrice = useState(3000.0);
    final _upperPrice = useState(17000.0);
    final currentUser =  useState<User>();
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(listener: (context, state) {
          state.maybeMap(
              authenticated: (v) {
                final fAuth = FirebaseAuth.instance;
                currentUser.value = fAuth.currentUser;
                print("user ${v.user}");
                print("current user is ${currentUser.value}");
              },
              orElse: () {
                print("unauthenicated");
              });
        })
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 2, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                      ),
                      builder: (context) => FilterForm(lowPrice: _lowPrice, upperPrice: _upperPrice),
                    );
                  },
                  icon: const Icon(
                    EvaIcons.searchOutline,
                    color: Colors.black54,
                  ),
                  splashColor: const Color(0xffF2F8FD),
                ),
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                      ),
                      builder: (context) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white,
                          ),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 16.0, right: 16.0, left: 16.0),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: "trip",
                                    style: const TextStyle(
                                        fontFamily: "ProductSans",
                                        color: Colors.black87,
                                        fontSize: 22),
                                    children: [
                                      TextSpan(
                                          text: "oo",
                                          style: TextStyle(
                                              fontFamily: "ProductSans",
                                              color: Theme.of(context)
                                                  .primaryColor))
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0),
                              child: ListTile(
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(25.0),
                                    child: CachedNetworkImage(
                                        placeholder: (context, url) =>
                                            const Icon(EvaIcons.person,
                                                size: 20),
                                        imageUrl:
                                        currentUser.value.photoURL ?? "https://picsum.photos/250?image=9",
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.fill),
                                  ),
                                  title: Text(currentUser.value.displayName,
                                      style: const TextStyle(
                                          fontFamily: "ProductSans")),
                                  subtitle: Text(currentUser.value.email)),
                            ),
                            Align(
                                child: ButtonTheme(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              child: OutlineButton(
                                  color: Colors.black54,
                                  onPressed: () {
                                    ExtendedNavigator.of(context)
                                        .push(Routes.profile);
                                  },
                                  child: const Text("Manage account",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "ProductSans"))),
                            )),
                            const Divider(),
                            ListTile(
                                onTap: () {
                                  print("Go to settings");
                                },
                                leading: const Icon(EvaIcons.settingsOutline,
                                    color: Colors.black54),
                                title: const Text("Settings",
                                    style: TextStyle(
                                        fontFamily: "ProductSans",
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black87)),
                                dense: true),
                            const Divider(),
                            ListTile(
                                dense: true,
                                onTap: () {
                                  print("log out");
                                },
                                leading: const Icon(EvaIcons.logOutOutline,
                                    color: Colors.black54),
                                title: const Text("Log out",
                                    style: TextStyle(
                                        fontFamily: "ProductSans",
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black87))),
                            const Divider(),
                            const Spacer(),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 16.0),
                              child: Align(
                                  child: Text(
                                      "Privacy policy and Terms of service",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12))),
                            )
                          ])),
                    );
                  },
                  icon: const Icon(EvaIcons.personOutline,
                      color: Colors.black54),
                  splashColor: const Color(0xffF2F8FD),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/business.jpg",)
                              ),
                            )
                          ),
                          Container(
                            height: 150,
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.black,
                                  Colors.black12.withOpacity(0.45),
                                ]
                              )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Market yourself today", style: TextStyle( color: "#00CF91".toColor(), fontFamily: "ProductSans", fontSize: 20, ),),
                                SizedBox(height: 5),
                                Text("Get your target audience by \n reaching to people that are closer to you by advertising with us", style: TextStyle(color: Colors.white,)),
                                Spacer(),
                                TextButton(onPressed: () {
                                  print("start");
                                }, child: Text("Get Started", style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "ProductSans",
                                ),),)
                              ]
                            )
                          )
                        ]
                      )
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Popular near you", style: TextStyle(
                                  fontFamily: "ProductSans",
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),),
                                Text("See more", style: TextStyle(
                                  fontSize: 13,
                                  color: "#00CF91".toColor(),
                                ),),
                              ]
                          ),
                        ),
                        SizedBox(
                            height: 250,
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, int index) {
                                return PropertyCardWidget();
                              },
                            )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Recent", style: TextStyle(
                                  fontFamily: "ProductSans",
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),),
                                Text("See more", style: TextStyle(
                                  fontSize: 13,
                                  color: "#00CF91".toColor(),
                                ),),
                              ]
                          ),
                        ),
                        SizedBox(
                            height: 250,
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, int index) {
                                return PropertyCardWidget();
                              },
                            )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Business", style: TextStyle(
                                  fontFamily: "ProductSans",
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),),
                                Text("See more", style: TextStyle(
                                  fontSize: 13,
                                  color: "#00CF91".toColor(),
                                ),),
                              ]
                          ),
                        ),
                        SizedBox(
                            height: 250,
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, int index) {
                                return PropertyCardWidget();
                              },
                            )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Premium", style: TextStyle(
                                  fontFamily: "ProductSans",
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),),
                                Text("See more", style: TextStyle(
                                  fontSize: 13,
                                  color: "#00CF91".toColor(),
                                ),),
                              ]
                          ),
                        ),
                        SizedBox(
                            height: 250,
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, int index) {
                                return PropertyCardWidget();
                              },
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




