
import 'package:auto_route/auto_route.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tripoo/domain/entity/property/property.dart';
import 'package:tripoo/presentation/pages/home/property/property_detail_widgets/property_info_widgets.dart';
import 'package:tripoo/presentation/pages/home/property/property_detail_widgets/property_units.dart';
import 'package:tripoo/presentation/routes/route.gr.dart';

class PropertyDetail extends StatefulWidget {
  final Property property;
  const PropertyDetail({
     Key key,
    @required this.property,
  }): super(key: key);
  @override
  _PropertyDetailState createState() => _PropertyDetailState();
}

class _PropertyDetailState extends State<PropertyDetail> {
  List<Widget> bottomWidgets;


  @override
  void initState() {
    super.initState();
    bottomWidgets = [
      PropertyUnitsList(property: widget.property),
      PropertyInfoWidget(property: widget.property),
    ];
  }

  void _onTapTab(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black87
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          ExtendedNavigator.of(context).push(Routes.createUnitView);
        },
        child: const Icon(
          EvaIcons.plus,
          color: Colors.white
        )
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: RepaintBoundary(
        child : bottomWidgets.elementAt(_selectedPage),
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(EvaIcons.layoutOutline),
              label: "My Property",
          ),
          BottomNavigationBarItem(
              icon: Icon(EvaIcons.fileTextOutline),
              label: "Details",
          )
        ],
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.black87,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.grey.withOpacity(0.15),
        selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: "ProductSans",
            fontSize: 11, height: 2
        ),
        currentIndex: _selectedPage,
        onTap: (i) => _onTapTab(i),
      ),
    );
  }
}
