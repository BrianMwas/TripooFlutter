


import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';

@freezed
abstract class Booking implements _$Booking {
  const factory Booking({
    String id,
    String firstName,
    String secondName,
    String emailAddress,
    String phoneNumber,
    DateTime date,
    String message,
  }) = _Booking;

  const Booking._();

  factory Booking.empty() => Booking(
    id: "",
    firstName: "",
    secondName: "",
    emailAddress: "",
    phoneNumber: "",
    date: DateTime.now(),
    message: "",
  );
}