import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PropertyInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Overview")
                ),
            Stack(children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width - 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://source.unsplash.com/random"),
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                height: 150,
                padding: const EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width - 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.black87.withOpacity(0.55), Colors.black87],
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Muindi",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "ProductSans",
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Muindi properties simple description",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              EvaIcons.eyeOff2Outline,
                              color: Colors.orangeAccent
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  onPressed: () {
                    print("pressed edit property");
                  },
                  icon: Icon(
                      EvaIcons.editOutline,
                      color: Colors.white
                  )
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text("Location"),
            ),
            Stack(
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width - 32,
                    margin: const EdgeInsets.symmetric(vertical : 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                "assets/images/phone_nav.jpg"
                            )
                        )
                    ),
                  ),
                  Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width - 32,
                      margin: const EdgeInsets.symmetric(vertical : 8),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            colors: [
                              Colors.black87.withOpacity(0.25),
                              Colors.black87.withOpacity(0.75)
                            ]
                        ),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Nairobi, Utawala", style: TextStyle(color: Colors.white, fontFamily: "ProductSans"),),
                            Text("Kenya.", style: TextStyle(color: Colors.green,),)
                          ]
                      )
                  ),
                  // Map view for  the property.
                  Positioned(
                      top: 20,
                      right: 10,
                      child: IconButton(
                        icon: Icon(EvaIcons.pin, color: Colors.white),
                        onPressed: () {
                          print("View on map");
                        },
                      )
                  ),
                ]
            ),
            //Manage agents include removing, adding, editing.
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Manage agents"),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      EvaIcons.plus
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
                  return Slidable(
                      child: const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage("https://source.unsplash.com/user/erondu"),
                        ),
                        title: Text("Kimani Njuguna", style: TextStyle(fontFamily: "ProductSans")),
                        subtitle: Text("Caretaker")
                      ),
                      actionPane: const SlidableDrawerActionPane(),
                      actions: <Widget>[
                        IconSlideAction(
                          icon: EvaIcons.editOutline,
                          onTap: () {
                            print("edit");
                          }
                        ),
                        IconSlideAction(
                            icon: EvaIcons.trashOutline,
                            onTap: () {
                              print("edit");
                            }
                        ),
                      ],
                    secondaryActions: [
                      IconSlideAction(
                          icon: EvaIcons.phoneCallOutline,
                          onTap: () {
                            print("edit");
                          }
                      ),
                      IconSlideAction(
                          icon: EvaIcons.messageSquareOutline,
                          onTap: () {
                            print("edit");
                          }
                      ),
                    ],
                  );
                },
              )
            ),
               const Padding(
                  padding: EdgeInsets.only(bottom: 5.0, top: 10),
                  child: ListTile(
                      title: Text("Hide property", style: TextStyle(color: Colors.orangeAccent, fontFamily: "ProductSans",)),
                      subtitle:Text("Keep from being listed"),
                      trailing: Icon(
                        EvaIcons.eyeOff2Outline,
                        color: Colors.orangeAccent,
                      )
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom:18.0),
                  child: ListTile(
                    title: Text("Delete property", style: TextStyle(color: Colors.redAccent, fontFamily: "ProductSans",)),
                    subtitle:Text("Remove property and all its units"),
                    trailing: Icon(
                      EvaIcons.trashOutline,
                      color: Colors.redAccent,
                    )
                  ),
                ),

          ]),
        ),
      ),
    );
  }
}
