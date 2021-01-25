// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

// ignore: unused_element
  _UserDto call(
      {String id,
      @required String email,
      @required String username,
      @nullable String photoURL,
      @nullable String phoneNumber,
      @required bool emailVerified,
      @required String fcmToken,
      String providerId,
      DateTime joinDate}) {
    return _UserDto(
      id: id,
      email: email,
      username: username,
      photoURL: photoURL,
      phoneNumber: phoneNumber,
      emailVerified: emailVerified,
      fcmToken: fcmToken,
      providerId: providerId,
      joinDate: joinDate,
    );
  }

// ignore: unused_element
  UserDto fromJson(Map<String, Object> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  String get id;
  String get email;
  String get username;
  @nullable
  String get photoURL;
  @nullable
  String get phoneNumber;
  bool get emailVerified;
  String get fcmToken;
  String get providerId;
  DateTime get joinDate;

  Map<String, dynamic> toJson();
  $UserDtoCopyWith<UserDto> get copyWith;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String email,
      String username,
      @nullable String photoURL,
      @nullable String phoneNumber,
      bool emailVerified,
      String fcmToken,
      String providerId,
      DateTime joinDate});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object username = freezed,
    Object photoURL = freezed,
    Object phoneNumber = freezed,
    Object emailVerified = freezed,
    Object fcmToken = freezed,
    Object providerId = freezed,
    Object joinDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      username: username == freezed ? _value.username : username as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified as bool,
      fcmToken: fcmToken == freezed ? _value.fcmToken : fcmToken as String,
      providerId:
          providerId == freezed ? _value.providerId : providerId as String,
      joinDate: joinDate == freezed ? _value.joinDate : joinDate as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String email,
      String username,
      @nullable String photoURL,
      @nullable String phoneNumber,
      bool emailVerified,
      String fcmToken,
      String providerId,
      DateTime joinDate});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object username = freezed,
    Object photoURL = freezed,
    Object phoneNumber = freezed,
    Object emailVerified = freezed,
    Object fcmToken = freezed,
    Object providerId = freezed,
    Object joinDate = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      username: username == freezed ? _value.username : username as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified as bool,
      fcmToken: fcmToken == freezed ? _value.fcmToken : fcmToken as String,
      providerId:
          providerId == freezed ? _value.providerId : providerId as String,
      joinDate: joinDate == freezed ? _value.joinDate : joinDate as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {this.id,
      @required this.email,
      @required this.username,
      @nullable this.photoURL,
      @nullable this.phoneNumber,
      @required this.emailVerified,
      @required this.fcmToken,
      this.providerId,
      this.joinDate})
      : assert(email != null),
        assert(username != null),
        assert(emailVerified != null),
        assert(fcmToken != null),
        super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String username;
  @override
  @nullable
  final String photoURL;
  @override
  @nullable
  final String phoneNumber;
  @override
  final bool emailVerified;
  @override
  final String fcmToken;
  @override
  final String providerId;
  @override
  final DateTime joinDate;

  @override
  String toString() {
    return 'UserDto(id: $id, email: $email, username: $username, photoURL: $photoURL, phoneNumber: $phoneNumber, emailVerified: $emailVerified, fcmToken: $fcmToken, providerId: $providerId, joinDate: $joinDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.emailVerified, emailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.emailVerified, emailVerified)) &&
            (identical(other.fcmToken, fcmToken) ||
                const DeepCollectionEquality()
                    .equals(other.fcmToken, fcmToken)) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality()
                    .equals(other.providerId, providerId)) &&
            (identical(other.joinDate, joinDate) ||
                const DeepCollectionEquality()
                    .equals(other.joinDate, joinDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(emailVerified) ^
      const DeepCollectionEquality().hash(fcmToken) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(joinDate);

  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const _UserDto._() : super._();
  const factory _UserDto(
      {String id,
      @required String email,
      @required String username,
      @nullable String photoURL,
      @nullable String phoneNumber,
      @required bool emailVerified,
      @required String fcmToken,
      String providerId,
      DateTime joinDate}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get username;
  @override
  @nullable
  String get photoURL;
  @override
  @nullable
  String get phoneNumber;
  @override
  bool get emailVerified;
  @override
  String get fcmToken;
  @override
  String get providerId;
  @override
  DateTime get joinDate;
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith;
}
