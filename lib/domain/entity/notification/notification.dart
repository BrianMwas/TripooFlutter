
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

@freezed
abstract class Notification implements _$Notification {
    const factory Notification({
       String id,
      String title,
      String description,
      PriorityLevel level,
    }) = _Notification;

    const Notification._();

    factory Notification.empty() => const Notification(
      id: "",
      title: "",
      description: "",
      level: PriorityLevel.low,
    );
}

enum PriorityLevel {
  high,
  mid,
  low
}

