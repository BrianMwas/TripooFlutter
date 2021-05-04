import 'package:auto_route/auto_route.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tripoo/application/property/singleproperty/single_property_bloc.dart';
import 'package:tripoo/domain/entity/property/property.dart';
import 'package:tripoo/presentation/pages/home/property/property_detail_widgets/property_info_widgets.dart';
import 'package:tripoo/presentation/pages/home/property/property_detail_widgets/property_units.dart';
import 'package:tripoo/presentation/pages/home/property/property_detail_widgets/update_property_form.dart';

import '../../../../injection.dart';

class PropertyDetail extends StatefulWidget {
  final Property property;
  const PropertyDetail({
    Key key,
    @required this.property,
  }) : super(key: key);
  @override
  _PropertyDetailState createState() => _PropertyDetailState();
}

class _PropertyDetailState extends State<PropertyDetail> {
  final GlobalKey<ScaffoldState> _scaffKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  void _onTapTab(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => getIt<SinglePropertyBloc>()..add(SinglePropertyEvent.watchProperty(widget.property.id)),
        ),
      ],
      child: BlocBuilder<SinglePropertyBloc, SinglePropertyState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const Align(
                  child: Center(
                      child: SpinKitFadingFour(
                        color: Color(0xff00CF91),
                      )
                  ),
                ),
                loadSuccess: (state) {
                  return Scaffold(
                    key: _scaffKey,
                    appBar: AppBar(
                      iconTheme: const IconThemeData(color: Colors.black87),
                      elevation: 0.0,
                      backgroundColor: Colors.white,
                      actions: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: IconButton(
                              onPressed: () {
                                showBarModalBottomSheet(
                                  context: context,
                                  builder: (context) => UpdatePropertyFormWidget(property: state.property),
                                );
                              },
                              icon: const Icon(EvaIcons.edit2Outline)),
                        )
                      ],
                    ),
                    backgroundColor: Colors.white,
                    body: IndexedStack(
                      index: _selectedPage,
                      children: [
                        PropertyUnitsList(property: state.property),
                        PropertyInfoWidget(scaffKey: _scaffKey, property: state.property,),
                      ],
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
                          fontSize: 11,
                          height: 2),
                      currentIndex: _selectedPage,
                      onTap: (i) => _onTapTab(i),
                    ),
                  );
                },
                loadFailure: (state) {
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(EvaIcons.alertTriangleOutline, color: Colors.white60),
                        SizedBox(height: 20),
                        Text(
                          "Failed to load property details",
                          style: TextStyle(
                            color: Colors.white12,
                            fontSize: 18,
                          )
                        )
                      ]
                    )
                  );
                },
            );
          },
        ),
    );
  }
}
