import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tripoo/domain/entity/analytics/analytics.dart';

part 'analytics.dto.freezed.dart';
part 'analytics.dto.g.dart';

@freezed
abstract class AnalyticsDTO with _$AnalyticsDTO {
  const factory AnalyticsDTO({
    @JsonKey(ignore: true) String id,
    int views,
    double averageRating,
    int numberOfBookings,
    @ServerTimestampConverter() FieldValue time,
  }) = _AnalyticsDTO;

  const AnalyticsDTO._();

  factory AnalyticsDTO.fromDomain(Analytics analytics) {
    return AnalyticsDTO(
        id: analytics.id,
        views: analytics.views,
        averageRating: analytics.averageRating,
        numberOfBookings: analytics.numberOfBookings,
        time: FieldValue.serverTimestamp());
  }

  Analytics toDomain() {
    return Analytics(
      id: id,
      views: views,
      averageRating: averageRating,
      numberOfBookings: numberOfBookings,
    );
  }

  factory AnalyticsDTO.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsDTOFromJson(json);

  factory AnalyticsDTO.fromFirestore(DocumentSnapshot doc) {
    return AnalyticsDTO.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
