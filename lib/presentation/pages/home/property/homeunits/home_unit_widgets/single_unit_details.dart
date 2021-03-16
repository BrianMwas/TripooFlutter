import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class EditUnitDetails extends StatelessWidget {
  //  Photos to delete - Use bottom modal sheet to request permission
  //  Location - Update or not - Don't update at all
  //  View details and change them. Change or remove features.
  //  Comments from people who visited.
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Images"),
                  IconButton(
                    tooltip: "Add new images to what you already have",
                    icon: Icon(
                      EvaIcons.plusOutline,
                      color: Colors.black87
                    ),
                    onPressed: () {
                      print("add images");
                    }
                  )
                ],
              ),
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 4),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: CachedNetworkImage(
                                imageUrl: "https://source.unsplash.com/random?forest",
                                  height: 150,
                                  width: 130,
                                  fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.black26,
                              ),
                              child: IconButton(
                                color: Colors.black26,
                                icon: Icon(
                                  EvaIcons.trashOutline,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                onPressed: () {
                                  print("print this");
                                }
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Update"),
            ),
            ListTile(
              leading: Icon(
                EvaIcons.map
              ),
              trailing: Icon(
                EvaIcons.arrowIosForwardOutline
              ),
              title: Text("Update location", style: TextStyle(
                fontFamily: "ProductSans"
              )),
              subtitle: Text("Nairobi, Kenya")
            ),
            ListTile(
                leading: Icon(
                    EvaIcons.listOutline
                ),
                trailing: Icon(
                    EvaIcons.arrowIosForwardOutline
                ),
                title: Text("Update Unit features", style: TextStyle(
                    fontFamily: "ProductSans"
                )),
            ),
            ListTile(
                leading: Icon(
                    EvaIcons.bulbOutline
                ),
                trailing: Icon(
                    EvaIcons.arrowIosForwardOutline
                ),
                title: Text("Update details", style: TextStyle(
                    fontFamily: "ProductSans"
                )),
            ),
            const SizedBox(height: 20),
            ListTile(
                leading: Icon(
                    EvaIcons.trash,
                  color: Colors.red
                ),
                title: Text("Delete Unit", style: TextStyle(
                    fontFamily: "ProductSans",
                  color: Colors.red
                )),
                subtitle: Text("Please note that this is irreversible")
            )
          ]
        ),
      ),
    );
  }
}
