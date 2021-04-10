import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tripoo/domain/entity/property/property.dart';
import 'package:tripoo/infrastructure/property/agent.dto.dart';
import 'package:tripoo/infrastructure/property/analytics.dto.dart';
import 'package:tripoo/infrastructure/propertyunit/propertyunit.dto.dart';

part 'property.dto.freezed.dart';
part 'property.dto.g.dart';

@freezed
abstract class PropertyDTO with _$PropertyDTO {
  const factory PropertyDTO(
      {String id,
      String name,
      String description,
      List<PropertyUnitDTO> units,
      String imageURL,
      List<AnalyticsDTO> analytics,
      List<PropertyAgentDTO> agents,
      GeoPoint location,
      DateTime createdAt}) = _PropertyDTO;

  const PropertyDTO._();

  factory PropertyDTO.fromDomain(Property property) {
    return PropertyDTO(
      name: property.name,
      description: property.description,
      units: property.units.map((u) => PropertyUnitDTO.fromDomain(u)).toList(),
      imageURL: property.imageURL,
      createdAt: property.createdAt,
      analytics:
          property.analytics.map((a) => AnalyticsDTO.fromDomain(a)).toList(),
      agents:
          property.agents.map((ag) => PropertyAgentDTO.fromDomain(ag)).toList(),
      location: property.location,
    );
  }

  Property toDomain() {
    return Property(
      id: id,
      name: name,
      description: description,
      imageURL: imageURL,
      units: units.map((u) => u.toDomain()).toList(),
      analytics: analytics.map((a) => a.toDomain()).toList(),
      agents: agents.map((a) => a.toDomain()).toList(),
      createdAt: createdAt,
      location: location,
    );
  }

  factory PropertyDTO.fromJson(Map<String, dynamic> json) =>
      _$PropertyDTOFromJson(json);

  factory PropertyDTO.fromFirestore(DocumentSnapshot doc) {
    return PropertyDTO.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
