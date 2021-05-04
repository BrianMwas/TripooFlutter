import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tripoo/domain/entity/property/property.dart';
import 'package:tripoo/domain/entity/property/value_objects.dart';
import 'package:tripoo/infrastructure/core/firestore_helpers.dart';
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
      String imageURL,
        @Default(true)
        bool live,
      @GeoPointConverter() GeoPoint location,
      String creator,
      DateTime completedAt,
      DateTime createdAt}) = _PropertyDTO;

  const PropertyDTO._();

  factory PropertyDTO.fromDomain(Property property) {
    return PropertyDTO(
      id: property.id,
      name: property.name.getOrCrash(),
      description: property.description.getOrCrash(),
      imageURL: property.imageURL,
      live: property.live,
      creator: property.creator,
      createdAt: property.createdAt,
      completedAt: property.completionDate,
      location: property.location,
    );
  }

  Property toDomain() {
    return Property(
      id: id,
      name: PropertyName(name),
      description: PropertyDescription(description),
      imageURL: imageURL,
      createdAt: createdAt,
      live: live,
      completionDate: completedAt,
      creator: creator,
      location: location,
    );
  }

  factory PropertyDTO.fromJson(Map<String, dynamic> json) =>
      _$PropertyDTOFromJson(json);

  factory PropertyDTO.fromFirestore(DocumentSnapshot doc) {
    return PropertyDTO.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
