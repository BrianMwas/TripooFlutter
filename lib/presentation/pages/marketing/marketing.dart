import 'package:flutter/material.dart';

class Marketing extends StatefulWidget {
  @override
  _MarketingState createState() => _MarketingState();
}

class _MarketingState extends State<Marketing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/coming_soon.png",
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
              Text("Marketing", style: TextStyle(fontFamily: "ProductSans", fontSize: 25,)),
              Text("Coming Soon", style: TextStyle(
                fontFamily: "ProductSans"
              ),)
            ]
          )
        )
      )
    );
  }
}
