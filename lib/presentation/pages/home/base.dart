
import 'package:auto_route/auto_route.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tripoo/application/auth/auth_bloc.dart';
import 'package:tripoo/presentation/pages/home/property/start_property.dart';
import 'package:tripoo/presentation/pages/home/property/favorites.dart';
import 'package:tripoo/presentation/routes/route.gr.dart';
// Property widgets
import '../../../injection.dart';
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
    CreateProperty(),
    Favorites(),
  ];

  void _onTapTab(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>())
      ],
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Colors.white,
        body: RepaintBoundary(
          child: SafeArea(
              child: _pages.elementAt(_selectedPage),
          ),
        ),
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButton: _selectedPage > 0 ? null :  FloatingActionButton(
          onPressed: () {
            ExtendedNavigator.of(context).push(Routes.propertyMapView);
          },
          backgroundColor: Colors.black87,
          splashColor: Theme.of(context).accentColor,
          child: const Icon(EvaIcons.pin, color: Colors.white),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(EvaIcons.grid),
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(EvaIcons.plusCircle), label: "New"),
            BottomNavigationBarItem(
                icon: Icon(EvaIcons.heart),
                label: "Favorite"
            ),
          ],
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.black87,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.grey.withOpacity(0.15),
          currentIndex: _selectedPage,
          showUnselectedLabels: false,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: "ProductSans",
              fontSize: 11, height: 2
          ),
          onTap: (i) => _onTapTab(i),
        ),
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
