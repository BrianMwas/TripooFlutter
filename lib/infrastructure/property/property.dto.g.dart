// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PropertyDTO _$_$_PropertyDTOFromJson(Map<String, dynamic> json) {
  return _$_PropertyDTO(
    id: json['id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    imageURL: json['imageURL'] as String,
    live: json['live'] as bool ?? true,
    location: const GeoPointConverter()
        .fromJson(json['location'] as Map<String, dynamic>),
    creator: json['creator'] as String,
    completedAt: json['completedAt'] == null
        ? null
        : DateTime.parse(json['completedAt'] as String),
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$_$_PropertyDTOToJson(_$_PropertyDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageURL': instance.imageURL,
      'live': instance.live,
      'location': const GeoPointConverter().toJson(instance.location),
      'creator': instance.creator,
      'completedAt': instance.completedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };
