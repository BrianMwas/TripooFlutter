import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tripoo/domain/entity/analytics/analytics.dart';
import 'package:tripoo/domain/entity/booking/booking.dart';

import 'property_details.dart';
import 'property_features.dart';

part 'property_unit.freezed.dart';

@freezed
abstract class PropertyUnit implements _$PropertyUnit {
  const factory PropertyUnit(
      {String id,
      String name,
      String description,
      bool used,
      String thumbnail,
      UnitType unitType,
      int numberOfUnits,
      List<String> images,
      bool live,
      PropertyDetails details,
      List<PropertyFeatures> features,
      GeoPoint position,
      List<Analytics> analytics,
      List<Booking> bookings}) = _PropertyUnit;

  const PropertyUnit._();

  factory PropertyUnit.empty() => PropertyUnit(
        id: "",
        name: "",
        description: "",
        live: true,
        used: true,
        numberOfUnits: 1,
        position: const GeoPoint(-1.2864389999999999, 36.973876),
        unitType: UnitType.apartment,
        details: PropertyDetails.empty(),
        analytics: [],
        bookings: [],
        images: [],
        features: [],
      );
}

enum UnitType { apartment, bedsitter, goDown, businessStall, hostel }
