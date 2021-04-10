import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lottie/lottie.dart' as l;
import 'package:tripoo/domain/entity/property_unit/example_unit.dart';

class PropertyMapView extends StatefulWidget {
  @override
  _PropertyMapViewState createState() => _PropertyMapViewState();
}

class _PropertyMapViewState extends State<PropertyMapView> {
  final Completer<GoogleMapController> _controller = Completer();
  PageController _pageController;

  //Used to style the maps
  String _mapStyle;
  LocationPermission permission;

  void _getCurrentLocation() async {
    final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error("Location services are disabled");
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return Future.error(
            'Location permissions are denied (actual value: $permission).');
      }
    }

    final p = await Geolocator.getCurrentPosition();
    setState(() {
      _currentPosition = LatLng(p.latitude, p.longitude);
    });
  }

  static LatLng _currentPosition;
  static final LatLng _lastMapPosition = _currentPosition;
  BitmapDescriptor _currentMarkerIcon;
  List<Marker> _allMarkers = [];
  int prevPage;
  List<HomeUnit> homes = [
    const HomeUnit(
        id: "1",
        name: "Home one",
        simple_description: "Home one simple description",
        long_description: "Long description",
        thumbnail: "https://source.unsplash.com/weekly?water",
        position: LatLng(1.2746752, 36.8345088)),
    const HomeUnit(
        id: "2",
        name: "Home two",
        simple_description: "Home one simple description",
        long_description: "Long description",
        thumbnail: "https://source.unsplash.com/weekly?water",
        position: LatLng(1.3746752, 36.8335088)),
    const HomeUnit(
        id: "3",
        name: "Home three",
        simple_description: "Home one simple description",
        long_description: "Long description",
        thumbnail: "https://source.unsplash.com/weekly?water",
        position: LatLng(1.2986752, 36.8367088)),
    const HomeUnit(
        id: "4",
        name: "Home four",
        simple_description: "Home one simple description",
        long_description: "Long description",
        thumbnail: "https://source.unsplash.com/weekly?water",
        position: LatLng(1.2846752, 36.8335088)),
  ];

  @override
  void initState() {
    super.initState();

    _getCurrentLocation();

    rootBundle.loadString("assets/util/map_style.txt").then((style) {
      _mapStyle = style;
    });

    for (var i = 0; i < homes.length; i++) {
      _allMarkers.add(Marker(
          markerId: MarkerId(homes[i].id),
          position: homes[i].position,
          infoWindow: InfoWindow(
              title: homes[i].name, snippet: homes[i].simple_description)));
    }

    setCustomPin();
    _pageController = PageController(
      initialPage: 1,
      viewportFraction: 0.8,
    )..addListener(_onScroll);
  }

  void _onScroll() {
    if (_pageController.page.toInt() != prevPage) {
      prevPage = _pageController.page.toInt();
      moveCamera();
    }
  }

  void moveCamera() async {
    await _controller.future.then((controller) {
      controller.animateCamera(
        CameraUpdate.newCameraPosition(CameraPosition(
          target: homes[_pageController.page.toInt()].position,
          zoom: 14,
          bearing: 45,
          tilt: 45,
        )),
      );
    });
  }

  Widget initHomeList(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0).toDouble();
        }
        return Center(
            child: SizedBox(
                height: Curves.easeInOut.transform(value) * 125.0,
                width: Curves.easeInOut.transform(value) * 350.0,
                child: widget));
      },
      child: InkWell(
        onTap: () {
          moveCamera();
        },
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 20.0,
                ),
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.55),
                      offset: const Offset(0.0, 4.0),
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 120.0,
                        width: 90.0,
                        margin: const EdgeInsets.only(
                            top: 8.0, left: 8.0, bottom: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage(homes[index].thumbnail),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                homes[index].name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "ProductSans",
                                ),
                              ),
                            ),
                            Row(children: const [
                              Text(
                                "RENT",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff45D09E),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "ProductSans",
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "KSH 6500",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff00CF91),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "ProductSans",
                                ),
                              ),
                            ]),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: InkWell(
                                  onTap: () {
                                    print("details $index");
                                  },
                                  child: const Text(
                                    "Details",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setCustomPin() async {
    _currentMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5, size: Size(250, 250)),
        "assets/images/home_marker.png");
  }

  Future<void> _gotoLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;
    //Adding a tilt of 50deg to allow for better navigation.
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, long), tilt: 50)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _currentPosition == null
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  l.Lottie.asset(
                    "assets/images/google-loading.json",
                    width: 200,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Loading up the map...",
                    style: TextStyle(
                      color: Colors.black54,
                      fontFamily: "ProductSans",
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              ),
            )
          : Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.height,
                  child: GoogleMap(
                    initialCameraPosition:
                        CameraPosition(zoom: 16.0, target: _currentPosition),
                    markers: Set.from(_allMarkers),
                    zoomControlsEnabled: false,
                    padding: const EdgeInsets.all(24.0),
                    myLocationEnabled: true,
                    onMapCreated: (GoogleMapController controller) {
                      controller.setMapStyle(_mapStyle);
                      _controller.complete(controller);
                    },
                  ),
                ),
                Positioned(
                  bottom: 20.0,
                  child: SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: homes.length,
                      itemBuilder: (context, index) {
                        return initHomeList(index);
                      },
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
