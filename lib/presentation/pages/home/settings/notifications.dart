
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class Notifications extends StatelessWidget {
  final bool isShowingMainData = false;
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black87,
        ),
        elevation: 0,
        title:const Text("Notifications", style: TextStyle(
          color: Colors.black87,
          fontFamily: "ProductSans",
          fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Group view"),
          ]
        )
      )
    );
  }
}
