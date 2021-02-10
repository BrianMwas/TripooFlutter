import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class PropertyDash extends StatefulWidget {

  @override
  _PropertyDashState createState() => _PropertyDashState();
}

class _PropertyDashState extends State<PropertyDash> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "My Property",
              style:
                  TextStyle(fontFamily: "ProductSans", color: Colors.black87),
            ),
            iconTheme: const IconThemeData(color: Colors.black87),
            bottom: TabBar(
                indicatorColor: Theme.of(context).primaryColorDark,
                labelColor: Colors.black87,
                indicatorWeight: 4.0,
                unselectedLabelColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "ProductSans",
                ),
                indicator: MD2Indicator(
                  indicatorHeight: 3,
                  indicatorSize: MD2IndicatorSize.normal,
                  indicatorColor: Theme.of(context).primaryColorDark,
                ),
                tabs: const [
                  Tab(
                    text: "Open",
                  ),
                  Tab(text: "Closed")
                ]),
          ),
          backgroundColor: Colors.white,
          body: TabBarView(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Center(
                  child: Text("Open properties"),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Center(
                  child: Text("Closed properties"),
                ),
              ),
            ],
          )),
    );
  }
}
