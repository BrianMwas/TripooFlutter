// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnalyticsDTO _$_$_AnalyticsDTOFromJson(Map<String, dynamic> json) {
  return _$_AnalyticsDTO(
    views: json['views'] as int,
    averageRating: (json['averageRating'] as num)?.toDouble(),
    numberOfBookings: json['numberOfBookings'] as int,
    time: const ServerTimestampConverter().fromJson(json['time']),
  );
}

Map<String, dynamic> _$_$_AnalyticsDTOToJson(_$_AnalyticsDTO instance) =>
    <String, dynamic>{
      'views': instance.views,
      'averageRating': instance.averageRating,
      'numberOfBookings': instance.numberOfBookings,
      'time': const ServerTimestampConverter().toJson(instance.time),
    };
