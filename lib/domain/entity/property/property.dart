import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tripoo/domain/entity/agent/property_agent.dart';
import 'package:tripoo/domain/entity/analytics/analytics.dart';
import 'package:tripoo/domain/entity/property_unit/property_unit.dart';

part 'property.freezed.dart';

@freezed
abstract class Property implements _$Property {
  const factory Property({
    String id,
    String name,
    String description,
    List<PropertyUnit> units,
    String imageURL,
    List<Analytics> analytics,
    List<PropertyAgent> agents,
    DateTime createdAt,
    bool hidden,
    GeoPoint location,
  }) = _Property;

  const Property._();

  factory Property.empty() => Property(
        id: "",
        name: "",
        description: "",
        units: [],
        imageURL: "",
        analytics: [],
        agents: [],
        hidden: false,
        location: const GeoPoint(-1.2864389999999999, 36.973876),
      );
}
