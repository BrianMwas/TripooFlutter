
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'home_unit_widgets/single_unit_details.dart';
import 'home_unit_widgets/single_unit_overview.dart';

class EditUnitView extends StatefulWidget {
  @override
  _EditUnitViewState createState() => _EditUnitViewState();
}

class _EditUnitViewState extends State<EditUnitView> {

  List<Widget> _singleUnitBottomWidgets;

  @override
  void initState() {
    super.initState();
    setState(() {
      _singleUnitBottomWidgets = [
        EditUnitOverview(),
        EditUnitDetails(),
      ];
    });
  }

  void _onTapTab(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  int _selectedPage = 0;

  final GlobalKey<FormState> _updateUnitKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text("Mul12", style: TextStyle(
          color: Colors.black87,
          fontFamily: "ProductSans"
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                print("changed to live");
              },
              icon: Icon(
                EvaIcons.wifi,
                color: Colors.orange
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0),),
                  ),
                  builder: (context) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Update unit",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18, fontFamily: "ProductSans",
                          ),
                        ),
                        const SizedBox(height: 20),
                        Form(
                          key: _updateUnitKey,
                          child : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                cursorColor: Colors.black87,
                                decoration: const InputDecoration(
                                  labelText: "Unit name",
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                cursorColor: Colors.black87,
                                maxLines: 8,
                                decoration: const InputDecoration(
                                  labelText: "Unit description",
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                ),
                              ),
                              const SizedBox(height: 40),
                              RaisedButton(
                                onPressed: () {
                                  print("Saved information");
                                },
                                color: Colors.black87,
                                elevation: 0.0,
                                child: const Text(
                                  "Save",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 0.95
                                  )
                                )
                              )
                            ]
                          )
                        ),
                      ],
                    ),
                  )
                );
              },
              icon: const Icon(
                  EvaIcons.editOutline,
                  color: Colors.black54
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: RepaintBoundary(
          child: _singleUnitBottomWidgets.elementAt(_selectedPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.barChartOutline),
            label: "Overview"
          ),
          BottomNavigationBarItem(icon: Icon(EvaIcons.settingsOutline), label: "Details")
        ],
        selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: "ProductSans",
            fontSize: 11, height: 2
        ),
        currentIndex: _selectedPage,
        onTap: (i) => _onTapTab(i),
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.black87,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.grey.withOpacity(0.15),
      ),
    );
  }
}
