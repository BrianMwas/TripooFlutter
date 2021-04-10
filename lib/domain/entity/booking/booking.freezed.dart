// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BookingTearOff {
  const _$BookingTearOff();

// ignore: unused_element
  _Booking call(
      {String id,
      String firstName,
      String secondName,
      String emailAddress,
      String phoneNumber,
      DateTime date,
      String message}) {
    return _Booking(
      id: id,
      firstName: firstName,
      secondName: secondName,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
      date: date,
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Booking = _$BookingTearOff();

/// @nodoc
mixin _$Booking {
  String get id;
  String get firstName;
  String get secondName;
  String get emailAddress;
  String get phoneNumber;
  DateTime get date;
  String get message;

  @JsonKey(ignore: true)
  $BookingCopyWith<Booking> get copyWith;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String firstName,
      String secondName,
      String emailAddress,
      String phoneNumber,
      DateTime date,
      String message});
}

/// @nodoc
class _$BookingCopyWithImpl<$Res> implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  final Booking _value;
  // ignore: unused_field
  final $Res Function(Booking) _then;

  @override
  $Res call({
    Object id = freezed,
    Object firstName = freezed,
    Object secondName = freezed,
    Object emailAddress = freezed,
    Object phoneNumber = freezed,
    Object date = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      secondName:
          secondName == freezed ? _value.secondName : secondName as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      date: date == freezed ? _value.date : date as DateTime,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class _$BookingCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$BookingCopyWith(_Booking value, $Res Function(_Booking) then) =
      __$BookingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String firstName,
      String secondName,
      String emailAddress,
      String phoneNumber,
      DateTime date,
      String message});
}

/// @nodoc
class __$BookingCopyWithImpl<$Res> extends _$BookingCopyWithImpl<$Res>
    implements _$BookingCopyWith<$Res> {
  __$BookingCopyWithImpl(_Booking _value, $Res Function(_Booking) _then)
      : super(_value, (v) => _then(v as _Booking));

  @override
  _Booking get _value => super._value as _Booking;

  @override
  $Res call({
    Object id = freezed,
    Object firstName = freezed,
    Object secondName = freezed,
    Object emailAddress = freezed,
    Object phoneNumber = freezed,
    Object date = freezed,
    Object message = freezed,
  }) {
    return _then(_Booking(
      id: id == freezed ? _value.id : id as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      secondName:
          secondName == freezed ? _value.secondName : secondName as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      date: date == freezed ? _value.date : date as DateTime,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_Booking extends _Booking {
  const _$_Booking(
      {this.id,
      this.firstName,
      this.secondName,
      this.emailAddress,
      this.phoneNumber,
      this.date,
      this.message})
      : super._();

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String secondName;
  @override
  final String emailAddress;
  @override
  final String phoneNumber;
  @override
  final DateTime date;
  @override
  final String message;

  @override
  String toString() {
    return 'Booking(id: $id, firstName: $firstName, secondName: $secondName, emailAddress: $emailAddress, phoneNumber: $phoneNumber, date: $date, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Booking &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.secondName, secondName) ||
                const DeepCollectionEquality()
                    .equals(other.secondName, secondName)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(secondName) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$BookingCopyWith<_Booking> get copyWith =>
      __$BookingCopyWithImpl<_Booking>(this, _$identity);
}

abstract class _Booking extends Booking {
  const _Booking._() : super._();
  const factory _Booking(
      {String id,
      String firstName,
      String secondName,
      String emailAddress,
      String phoneNumber,
      DateTime date,
      String message}) = _$_Booking;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get secondName;
  @override
  String get emailAddress;
  @override
  String get phoneNumber;
  @override
  DateTime get date;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$BookingCopyWith<_Booking> get copyWith;
}
