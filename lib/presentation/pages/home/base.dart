
import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tripoo/presentation/pages/auth/user/profile.dart';
import 'package:tripoo/presentation/pages/home/property/create_property.dart';
import 'package:tripoo/presentation/pages/home/property/favorites.dart';
import 'package:tripoo/presentation/pages/home/property/property_map_view.dart';
// Property widgets
import 'property/property_list.dart';

class BaseLayout extends StatefulWidget {
  @override
  _BaseLayoutState createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {
  // Used to select the current page index from the list of widgets.
  int _selectedPage = 0;

  // The pages that will be shown by tapping the bottom nav icons.
  final List<Widget> _pages = [
    PropertyList(),
    PropertyMapView(),
    CreateProperty(),
    Favorites(),
    Profile()
  ];

  void _onTapTab(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  LinearGradient getGradient(Color color) {
    return LinearGradient(
        colors: [color.withOpacity(0.5), color.withOpacity(0.1)],
        stops: const [0.0, 0.7]);
  }

  List<Tabs> tabs = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      tabs.add(Tabs(
        EvaIcons.grid, "Home", Colors.deepPurple, getGradient(Colors.deepPurple)
      ));
      tabs.add(Tabs(
          EvaIcons.pin, "Map", Colors.green, getGradient(Colors.green)
      ));
      tabs.add(Tabs(
          EvaIcons.plusCircle, "Add", const Color(0xff7EB3FF), getGradient(const Color(0xff7EB3FF))
      ));
      tabs.add(Tabs(
          EvaIcons.heart, "Favorites", const Color(0xffF85C50), getGradient(const Color(0xffF85C50))
      ));
      tabs.add(Tabs(
          EvaIcons.person, "Profile",const Color(0xff17F1D7), getGradient(const Color(0xff17F1D7))
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: RepaintBoundary(
        child: SafeArea(
            child: _pages.elementAt(_selectedPage),
        ),
      ),
      bottomNavigationBar: CubertoBottomBar(
        key: const Key("BottomBar"),
        selectedTab: _selectedPage,
        tabStyle: CubertoTabStyle.STYLE_FADED_BACKGROUND,
        inactiveIconColor: const Color(0xffF2F8FD),
        drawer: const CubertoDrawer(
          style: CubertoDrawerStyle.NO_DRAWER
        ),
        tabs: tabs
            .map((value) => TabData(
            key: Key(value.title),
            iconData: value.icon,
            title: value.title,
            tabColor: value.color,
            tabGradient: value.gradient))
            .toList(),
        onTabChangedListener: (int position, String title, Color tabColor) {
          _onTapTab(position);
        },
      ),
    );
  }
}

class Tabs {
  final IconData icon;
  final String title;
  final Color color;
  final Gradient gradient;

  Tabs(this.icon, this.title, this.color, this.gradient);
}
