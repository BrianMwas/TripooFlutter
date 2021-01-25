// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    id: json['id'] as String,
    email: json['email'] as String,
    username: json['username'] as String,
    photoURL: json['photoURL'] as String,
    phoneNumber: json['phoneNumber'] as String,
    emailVerified: json['emailVerified'] as bool,
    fcmToken: json['fcmToken'] as String,
    providerId: json['providerId'] as String,
    joinDate: json['joinDate'] == null
        ? null
        : DateTime.parse(json['joinDate'] as String),
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'photoURL': instance.photoURL,
      'phoneNumber': instance.phoneNumber,
      'emailVerified': instance.emailVerified,
      'fcmToken': instance.fcmToken,
      'providerId': instance.providerId,
      'joinDate': instance.joinDate?.toIso8601String(),
    };
