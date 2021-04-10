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
    units: (json['units'] as List)
        ?.map((e) => e == null
            ? null
            : PropertyUnitDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    imageURL: json['imageURL'] as String,
    analytics: (json['analytics'] as List)
        ?.map((e) =>
            e == null ? null : AnalyticsDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    agents: (json['agents'] as List)
        ?.map((e) => e == null
            ? null
            : PropertyAgentDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lat: (json['lat'] as num)?.toDouble(),
    long: (json['long'] as num)?.toDouble(),
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
      'units': instance.units,
      'imageURL': instance.imageURL,
      'analytics': instance.analytics,
      'agents': instance.agents,
      'lat': instance.lat,
      'long': instance.long,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
