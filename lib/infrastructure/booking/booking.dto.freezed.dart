// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'booking.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BookingDTO _$BookingDTOFromJson(Map<String, dynamic> json) {
  return _BookingDTO.fromJson(json);
}

/// @nodoc
class _$BookingDTOTearOff {
  const _$BookingDTOTearOff();

// ignore: unused_element
  _BookingDTO call(
      {String id,
      String message,
      String fname,
      String sname,
      String phoneNumber,
      String email,
      DateTime time}) {
    return _BookingDTO(
      id: id,
      message: message,
      fname: fname,
      sname: sname,
      phoneNumber: phoneNumber,
      email: email,
      time: time,
    );
  }

// ignore: unused_element
  BookingDTO fromJson(Map<String, Object> json) {
    return BookingDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BookingDTO = _$BookingDTOTearOff();

/// @nodoc
mixin _$BookingDTO {
  String get id;
  String get message;
  String get fname;
  String get sname;
  String get phoneNumber;
  String get email;
  DateTime get time;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BookingDTOCopyWith<BookingDTO> get copyWith;
}

/// @nodoc
abstract class $BookingDTOCopyWith<$Res> {
  factory $BookingDTOCopyWith(
          BookingDTO value, $Res Function(BookingDTO) then) =
      _$BookingDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String message,
      String fname,
      String sname,
      String phoneNumber,
      String email,
      DateTime time});
}

/// @nodoc
class _$BookingDTOCopyWithImpl<$Res> implements $BookingDTOCopyWith<$Res> {
  _$BookingDTOCopyWithImpl(this._value, this._then);

  final BookingDTO _value;
  // ignore: unused_field
  final $Res Function(BookingDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object message = freezed,
    Object fname = freezed,
    Object sname = freezed,
    Object phoneNumber = freezed,
    Object email = freezed,
    Object time = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      message: message == freezed ? _value.message : message as String,
      fname: fname == freezed ? _value.fname : fname as String,
      sname: sname == freezed ? _value.sname : sname as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      email: email == freezed ? _value.email : email as String,
      time: time == freezed ? _value.time : time as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$BookingDTOCopyWith<$Res> implements $BookingDTOCopyWith<$Res> {
  factory _$BookingDTOCopyWith(
          _BookingDTO value, $Res Function(_BookingDTO) then) =
      __$BookingDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String message,
      String fname,
      String sname,
      String phoneNumber,
      String email,
      DateTime time});
}

/// @nodoc
class __$BookingDTOCopyWithImpl<$Res> extends _$BookingDTOCopyWithImpl<$Res>
    implements _$BookingDTOCopyWith<$Res> {
  __$BookingDTOCopyWithImpl(
      _BookingDTO _value, $Res Function(_BookingDTO) _then)
      : super(_value, (v) => _then(v as _BookingDTO));

  @override
  _BookingDTO get _value => super._value as _BookingDTO;

  @override
  $Res call({
    Object id = freezed,
    Object message = freezed,
    Object fname = freezed,
    Object sname = freezed,
    Object phoneNumber = freezed,
    Object email = freezed,
    Object time = freezed,
  }) {
    return _then(_BookingDTO(
      id: id == freezed ? _value.id : id as String,
      message: message == freezed ? _value.message : message as String,
      fname: fname == freezed ? _value.fname : fname as String,
      sname: sname == freezed ? _value.sname : sname as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      email: email == freezed ? _value.email : email as String,
      time: time == freezed ? _value.time : time as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BookingDTO extends _BookingDTO {
  const _$_BookingDTO(
      {this.id,
      this.message,
      this.fname,
      this.sname,
      this.phoneNumber,
      this.email,
      this.time})
      : super._();

  factory _$_BookingDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_BookingDTOFromJson(json);

  @override
  final String id;
  @override
  final String message;
  @override
  final String fname;
  @override
  final String sname;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'BookingDTO(id: $id, message: $message, fname: $fname, sname: $sname, phoneNumber: $phoneNumber, email: $email, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookingDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.fname, fname) ||
                const DeepCollectionEquality().equals(other.fname, fname)) &&
            (identical(other.sname, sname) ||
                const DeepCollectionEquality().equals(other.sname, sname)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(fname) ^
      const DeepCollectionEquality().hash(sname) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$BookingDTOCopyWith<_BookingDTO> get copyWith =>
      __$BookingDTOCopyWithImpl<_BookingDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookingDTOToJson(this);
  }
}

abstract class _BookingDTO extends BookingDTO {
  const _BookingDTO._() : super._();
  const factory _BookingDTO(
      {String id,
      String message,
      String fname,
      String sname,
      String phoneNumber,
      String email,
      DateTime time}) = _$_BookingDTO;

  factory _BookingDTO.fromJson(Map<String, dynamic> json) =
      _$_BookingDTO.fromJson;

  @override
  String get id;
  @override
  String get message;
  @override
  String get fname;
  @override
  String get sname;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$BookingDTOCopyWith<_BookingDTO> get copyWith;
}
