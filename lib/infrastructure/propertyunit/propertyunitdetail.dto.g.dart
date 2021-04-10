// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propertyunitdetail.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PropertyUnitDetailDTO _$_$_PropertyUnitDetailDTOFromJson(
    Map<String, dynamic> json) {
  return _$_PropertyUnitDetailDTO(
    spaceSize: (json['spaceSize'] as num)?.toDouble(),
    rooms: json['rooms'] as int,
    bathrooms: json['bathrooms'] as int,
  );
}

Map<String, dynamic> _$_$_PropertyUnitDetailDTOToJson(
        _$_PropertyUnitDetailDTO instance) =>
    <String, dynamic>{
      'spaceSize': instance.spaceSize,
      'rooms': instance.rooms,
      'bathrooms': instance.bathrooms,
    };
