// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingDTO _$_$_BookingDTOFromJson(Map<String, dynamic> json) {
  return _$_BookingDTO(
    id: json['id'] as String,
    message: json['message'] as String,
    fname: json['fname'] as String,
    sname: json['sname'] as String,
    phoneNumber: json['phoneNumber'] as String,
    email: json['email'] as String,
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
  );
}

Map<String, dynamic> _$_$_BookingDTOToJson(_$_BookingDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'fname': instance.fname,
      'sname': instance.sname,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'time': instance.time?.toIso8601String(),
    };
