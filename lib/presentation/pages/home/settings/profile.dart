
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
        iconTheme: const IconThemeData(
          color: Colors.black87
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Profile",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: CachedNetworkImage(
                          placeholder: (context, url) => const Icon(EvaIcons.person, size: 20),
                          imageUrl: "https://picsum.photos/250?image=9", width: 200, height: 200),
                    )
                  ),
                  const Text(
                    "Brian Mwangi",
                    style: TextStyle(
                        fontSize: 23, fontWeight: FontWeight.w600, fontFamily: "ProductSans"),),
                  const Text("brnmwas@gmail.com", style: TextStyle(color: Colors.black54,),),

                ]
              )
            )
          ]
        ),
      )
    );
  }
}
