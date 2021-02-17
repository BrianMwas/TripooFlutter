import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black87),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(75.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ]),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: CachedNetworkImage(
                                placeholder: (context, url) =>
                                    const Icon(EvaIcons.person, size: 20),
                                imageUrl: "https://picsum.photos/250?image=9",
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Theme.of(context).primaryColorDark,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ]),
                            child: InkWell(
                              onTap: () {
                                print("Change profile");
                              },
                              child: Icon(
                                EvaIcons.editOutline,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ]),
                        const SizedBox(height: 5),
                        const Text(
                          "Brian Mwangi",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                              fontFamily: "ProductSans"),
                        ),
                        const Text(
                          "brnmwas@gmail.com",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 4),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text("Details"),
                    ),
                    ListTile(
                        dense: true,
                        title: Text("Email"),
                        subtitle: Text("brnmwas@gmail.com"),
                        trailing: Icon(EvaIcons.editOutline)),
                    Divider(),
                    ListTile(
                        dense: true,
                        title: Text("Phone number"),
                        subtitle: Text("Not added"),
                        trailing: Icon(EvaIcons.plusCircle)),
                    Divider(),
                    ListTile(
                      dense: true,
                      title: Text("Password"),
                      subtitle: Text("Change password"),
                      trailing: Icon(EvaIcons.editOutline, color: Colors.red),
                    ),
                    SizedBox(height: 8),
                  ],
                )),
                const SizedBox(height: 20),
                Card(
                    child: ListTile(
                  title: Text(
                    "Delete account",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                    ),
                  ),
                  trailing: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                    title: const Text("Delete account",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        )),
                                    content: const Text(
                                        "Are you sure you want to delete your account? All data associated will be lost"),
                                    actions: [
                                      FlatButton(
                                          splashColor: Theme.of(context)
                                              .primaryColor
                                              .withOpacity(0.4),
                                          child: const Text(
                                            "Cancel",
                                            style: TextStyle(
                                                color: Colors.black87),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          }),
                                      FlatButton(
                                        splashColor: Theme.of(context)
                                            .primaryColor
                                            .withOpacity(0.4),
                                        child: const Text("Delete",
                                            style: TextStyle(
                                                color: Colors.redAccent)),
                                        onPressed: () {
                                          print("account deleted.");
                                        },
                                      )
                                    ]));
                      },
                      child: Icon(EvaIcons.trashOutline, color: Colors.red)),
                )),
              ],
            ),
          ),
        ));
  }
}
