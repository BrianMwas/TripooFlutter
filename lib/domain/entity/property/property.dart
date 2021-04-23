import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:tripoo/domain/entity/agent/property_agent.dart';
import 'package:tripoo/domain/entity/analytics/analytics.dart';
import 'package:tripoo/domain/entity/property/value_objects.dart';
import 'package:tripoo/domain/entity/property_unit/property_unit.dart';

part 'property.freezed.dart';

@freezed
abstract class Property implements _$Property {
  const factory Property({
    String id,
    PropertyName name,
    PropertyDescription description,
    String imageURL,
    DateTime completionDate,
    bool hidden,
    String creator,
    bool live,
    GeoPoint location,
    DateTime createdAt
  }) = _Property;

  const Property._();

  factory Property.empty() => Property(
        id: "",
        name: PropertyName(""),
        description: PropertyDescription(""),
        imageURL: "",
        hidden: false,
        live: true,
        location: const GeoPoint(-1.2864389999999999, 36.973876),
        createdAt: DateTime.now(),
      );
}
