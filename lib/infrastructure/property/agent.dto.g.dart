// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PropertyAgentDTO _$_$_PropertyAgentDTOFromJson(Map<String, dynamic> json) {
  return _$_PropertyAgentDTO(
    id: json['id'] as String,
    name: json['name'] as String,
    imageURL: json['imageURL'] as String,
    emailAddress: json['emailAddress'] as String,
    phoneNumber: json['phoneNumber'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$_$_PropertyAgentDTOToJson(
        _$_PropertyAgentDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageURL': instance.imageURL,
      'emailAddress': instance.emailAddress,
      'phoneNumber': instance.phoneNumber,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
