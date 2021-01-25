
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PropertyMapView extends StatefulWidget {
  @override
  _PropertyMapViewState createState() => _PropertyMapViewState();
}

class _PropertyMapViewState extends State<PropertyMapView> {
  final Completer<GoogleMapController> _controller = Completer();

  //Used to style the maps
  String _mapStyle;

  Future<Position> getCurrentLocation() async {
    final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    LocationPermission permission;

    if(!serviceEnabled) {
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
    return Geolocator.getCurrentPosition();
  }

  CameraPosition currentPosition;

  @override
  void initState() {
    super.initState();

    rootBundle.loadString("assets/util.map_style.txt")
    .then((style) {
      _mapStyle = style;
    });

    setState(() {
      getCurrentLocation()
          .then((value) {
            currentPosition = CameraPosition(
              zoom: 12,
                target: LatLng(value.latitude, value.longitude),
            );
      });
    });
  }

  Future<void> _gotoLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;
    //Adding a tilt of 50deg to allow for better navigation.
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(lat, long), tilt: 50)));
  }

  @override
  Widget build(BuildContext context) {
    
    return GoogleMap(
      mapType: MapType.hybrid,
      initialCameraPosition: currentPosition,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
        controller.setMapStyle(_mapStyle);
      },
    );
  }
}
