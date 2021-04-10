import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tripoo/domain/entity/booking/booking.dart';

part 'booking.dto.freezed.dart';
part 'booking.dto.g.dart';

@freezed
abstract class BookingDTO with _$BookingDTO {
  const factory BookingDTO({
    String id,
    String message,
    String fname,
    String sname,
    String phoneNumber,
    String email,
    DateTime time,
  }) = _BookingDTO;

  const BookingDTO._();

  factory BookingDTO.fromDomain(Booking booking) {
    return BookingDTO(
      id: booking.id,
      message: booking.message,
      phoneNumber: booking.phoneNumber,
      email: booking.emailAddress,
      time: booking.date,
      fname: booking.firstName,
      sname: booking.secondName,
    );
  }

  Booking toDomain() {
    return Booking(
      firstName: fname,
      secondName: sname,
      emailAddress: email,
      phoneNumber: phoneNumber,
      message: message,
      date: time,
    );
  }

  factory BookingDTO.fromJson(Map<String, dynamic> json) =>
      _$BookingDTOFromJson(json);

  factory BookingDTO.fromFirestore(DocumentSnapshot doc) {
    return BookingDTO.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
