// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propertyunit.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PropertyUnitDTO _$_$_PropertyUnitDTOFromJson(Map<String, dynamic> json) {
  return _$_PropertyUnitDTO(
    name: json['name'] as String,
    description: json['description'] as String,
    thumbnail: json['thumbnail'] as String,
    used: json['used'] as bool,
    unitType: json['unitType'] as String,
    numberOfUnits: json['numberOfUnits'] as int,
    images: (json['images'] as List)?.map((e) => e as String)?.toList(),
    live: json['live'] as bool,
    analytics: (json['analytics'] as List)
        ?.map((e) =>
            e == null ? null : AnalyticsDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    details: json['details'] == null
        ? null
        : PropertyUnitDetailDTO.fromJson(
            json['details'] as Map<String, dynamic>),
    features: (json['features'] as List)?.map((e) => e as String)?.toList(),
    location: const GeoPointConverter()
        .fromJson(json['location'] as Map<String, dynamic>),
    bookings: (json['bookings'] as List)
        ?.map((e) =>
            e == null ? null : BookingDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_PropertyUnitDTOToJson(_$_PropertyUnitDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
      'used': instance.used,
      'unitType': instance.unitType,
      'numberOfUnits': instance.numberOfUnits,
      'images': instance.images,
      'live': instance.live,
      'analytics': instance.analytics,
      'details': instance.details,
      'features': instance.features,
      'location': const GeoPointConverter().toJson(instance.location),
      'bookings': instance.bookings,
    };
