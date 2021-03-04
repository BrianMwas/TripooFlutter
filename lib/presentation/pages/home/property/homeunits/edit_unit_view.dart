
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class EditUnitView extends StatefulWidget {
  @override
  _EditUnitViewState createState() => _EditUnitViewState();
}

class _EditUnitViewState extends State<EditUnitView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text("Edit Unit", style: TextStyle(
          color: Colors.black87,
          fontFamily: "ProductSans"
        ),),
        actions: [
          IconButton(
            onPressed: () {
              print("create new person");
            },
            icon: Icon(
              EvaIcons.wifi,
              color: Colors.orange
            ),
          ),

        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: const Center(
          child: Text("Edit unit view")
        )
      )
    );
  }
}
