import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics.freezed.dart';

@freezed
abstract class Analytics implements _$Analytics {
  const factory Analytics({
    String id,
    int views,
    double averageRating,
    int numberOfRatings,
    DateTime time,
    int numberOfBookings,
  }) = _Analytics;

  const Analytics._();

  factory Analytics.empty() => Analytics(
        views: 0,
        averageRating: 0.0,
        numberOfRatings: 0,
        numberOfBookings: 0,
        time: DateTime.now(),
      );
}
