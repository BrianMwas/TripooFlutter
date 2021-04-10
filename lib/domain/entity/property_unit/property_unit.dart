
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tripoo/domain/entity/analytics/analytics.dart';
import 'package:tripoo/domain/entity/booking/booking.dart';

import 'home_details.dart';
import 'home_features.dart';

part 'home_unit.freezed.dart';

@freezed
abstract class PropertyUnit implements _$PropertyUnit {

  const factory PropertyUnit({
    String id,
    String name,
    String description,
    String thumbnail,
    UnitType unitType,
    int numberOfUnits,
    List<String> images,
    bool live,
    HomeDetails details,
    List<HomeFeatures> features,
    LatLng position,
    Analytics analytics,
    List<Booking> bookings
  }) = _PropertyUnit;

  const PropertyUnit._();

  factory PropertyUnit.empty() => const PropertyUnit(
      id: "",
      name: "",
      description: "",
      live: true,
      numberOfUnits: 1,
      position: LatLng(42.878, 56.098),
      unitType: UnitType.apartment,
      details: HomeDetails.empty(),
      analytics: Analytics.empty(),
      bookings: [],
      images: [],
      features: [],
  );
}

enum UnitType {
  apartment,
  bedsitter,
  goDown,
  businessStall,
  hostel
}
