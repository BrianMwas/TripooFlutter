
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class PropertyList extends StatefulWidget {
  @override
  _PropertyListState createState() => _PropertyListState();
}

class _PropertyListState extends State<PropertyList> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    EvaIcons.options2Outline,
                    color: Colors.black54,
                ),
                splashColor: const Color(0xffF2F8FD),
              ),
              IconButton(
                onPressed: () {
                  print("Person profile");
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
    );
  }
}
