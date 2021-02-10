
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tripoo/application/auth/auth_bloc.dart';
import 'package:tripoo/domain/auth/user.dart';

class PropertyList extends StatefulWidget {
  @override
  _PropertyListState createState() => _PropertyListState();
}

class _PropertyListState extends State<PropertyList> {
  User user;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
                authenticated: (v) {
                  setState(() {
                    user = v.user;
                  });
                  print("user ${v.user }");
                },
                orElse: () => null);
          }
        )
      ],
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 2, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    print("Filter");
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
                      builder: (context) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white,
                          ),
                          child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: "trip",
                                        style: const TextStyle(
                                            fontFamily: "ProductSans",
                                            color: Colors.black87,
                                            fontSize: 22
                                        ),
                                        children: [
                                          TextSpan(
                                              text: "oo",
                                              style: TextStyle(
                                                  fontFamily: "ProductSans",
                                                  color: Theme.of(context).primaryColor
                                              )
                                          )
                                        ]
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                  child: ListTile(
                                      leading: ClipRRect(
                                        borderRadius: BorderRadius.circular(25.0),
                                          child: CachedNetworkImage(
                                          placeholder: (context, url) => const Icon(EvaIcons.person, size: 20),
                                          imageUrl: "https://picsum.photos/250?image=9",
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.fill
                                      ),
                                      ),
                                      title: const Text("Brian", style: TextStyle(fontFamily: "ProductSans")),
                                      subtitle: const Text("brnmwas@gmail.com")
                                  ),
                                ),
                                Align(

                                    child: ButtonTheme(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      child: OutlineButton(
                                          color: Colors.black54,
                                          onPressed: () { print("account clicked"); },
                                          child: const Text("Manage account", style: TextStyle(fontWeight: FontWeight.w600, fontFamily: "ProductSans"))
                                      ),
                                    )
                                ),
                                const Divider(),
                                ListTile(
                                  onTap: () {
                                    print("Go to settings");
                                  },
                                  leading: const Icon(EvaIcons.settingsOutline, color: Colors.black54),
                                  title: const Text("Settings", style: TextStyle(fontFamily: "ProductSans", fontWeight: FontWeight.w800, color: Colors.black87)),
                                  dense: true
                                ),
                                const Divider(),
                                ListTile(
                                  dense: true,
                                  onTap: () {
                                    print("log out");
                                  },
                                  leading: const Icon(EvaIcons.logOutOutline, color: Colors.black54),
                                  title: const Text("Log out", style: TextStyle(fontFamily: "ProductSans", fontWeight: FontWeight.w800, color: Colors.black87))
                                ),
                                const Divider(),
                                const Spacer(),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 16.0),
                                  child: Align(
                                    child: Text(
                                      "Privacy policy and Terms of service",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12
                                      )
                                    )
                                  ),
                                )
                              ]
                          )
                      ),
                    );
                  },
                  icon: const Icon(
                    EvaIcons.personOutline,
                    color: Colors.black54
                  ),
                  splashColor: const Color(0xffF2F8FD),
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}
