import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tripoo/domain/entity/property_unit/property_features.dart';
import 'package:tripoo/domain/entity/property_unit/property_unit.dart';
import 'package:tripoo/infrastructure/booking/booking.dto.dart';
import 'package:tripoo/infrastructure/property/analytics.dto.dart';
import 'package:tripoo/infrastructure/propertyunit/propertyunitdetail.dto.dart';

part 'propertyunit.dto.freezed.dart';
part 'propertyunit.dto.g.dart';

@freezed
abstract class PropertyUnitDTO implements _$PropertyUnitDTO {
  const factory PropertyUnitDTO(
      {@JsonKey(ignore: true) String id,
      String name,
      String description,
      String thumbnail,
      bool used,
      String unitType,
      // Prevent duplicates
      int numberOfUnits,
      List<String> images,
      bool live,
      List<AnalyticsDTO> analytics,
      PropertyUnitDetailDTO details,
      List<String> features,
      double lat,
      double long,
      List<BookingDTO> bookings}) = _PropertyUnitDTO;

  const PropertyUnitDTO._();

  factory PropertyUnitDTO.fromDomain(PropertyUnit unit) {
    return PropertyUnitDTO(
        name: unit.name,
        description: unit.description,
        live: unit.live,
        used: unit.used,
        lat: unit.position.latitude,
        long: unit.position.longitude,
        images: unit.images,
        features:
            unit.features.map((f) => f.toString().split(".").first).toList(),
        analytics:
            unit.analytics.map((a) => AnalyticsDTO.fromDomain(a)).toList(),
        bookings: unit.bookings.map((b) => BookingDTO.fromDomain(b)).toList(),
        details: PropertyUnitDetailDTO.fromDomain(unit.details),
        numberOfUnits: unit.numberOfUnits,
        thumbnail: unit.thumbnail,
        unitType: unit.unitType.toString().split(".").first);
  }

  PropertyUnit toDomain() {
    return PropertyUnit(
      id: id,
      name: name,
      used: used,
      description: description,
      thumbnail: thumbnail,
      numberOfUnits: numberOfUnits,
      unitType: UnitType.values
          .firstWhere((f) => f.toString().split(".").first == unitType),
      images: images,
      live: live,
      analytics: analytics.map((a) => a.toDomain()).toList(),
      details: details.toDomain(),
      features: features
          .map((f) => PropertyFeatures.values
              .firstWhere((p) => p.toString().split('.').first == f))
          .toList(),
      position: LatLng(lat, long),
      bookings: bookings.map((b) => b.toDomain()).toList(),
    );
  }

  factory PropertyUnitDTO.fromJson(Map<String, dynamic> json) =>
      _$PropertyUnitDTOFromJson(json);

  factory PropertyUnitDTO.fromFirestore(DocumentSnapshot doc) {
    return PropertyUnitDTO.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
