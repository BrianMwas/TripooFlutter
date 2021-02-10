// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required String id,
      @required Username username,
      @required EmailAddress email,
      @required String fcm_token,
      @required bool emailVerified,
      @nullable String profileImageURL,
      String phoneNumber,
      @nullable DateTime joinDate,
      @required String providerId}) {
    return _User(
      id: id,
      username: username,
      email: email,
      fcm_token: fcm_token,
      emailVerified: emailVerified,
      profileImageURL: profileImageURL,
      phoneNumber: phoneNumber,
      joinDate: joinDate,
      providerId: providerId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id;
  Username get username;
  EmailAddress get email;
  String get fcm_token;
  bool get emailVerified;
  @nullable
  String get profileImageURL;
  String get phoneNumber;
  @nullable
  DateTime get joinDate;
  String get providerId;

  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Username username,
      EmailAddress email,
      String fcm_token,
      bool emailVerified,
      @nullable String profileImageURL,
      String phoneNumber,
      @nullable DateTime joinDate,
      String providerId});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object email = freezed,
    Object fcm_token = freezed,
    Object emailVerified = freezed,
    Object profileImageURL = freezed,
    Object phoneNumber = freezed,
    Object joinDate = freezed,
    Object providerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as Username,
      email: email == freezed ? _value.email : email as EmailAddress,
      fcm_token: fcm_token == freezed ? _value.fcm_token : fcm_token as String,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified as bool,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      joinDate: joinDate == freezed ? _value.joinDate : joinDate as DateTime,
      providerId:
          providerId == freezed ? _value.providerId : providerId as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Username username,
      EmailAddress email,
      String fcm_token,
      bool emailVerified,
      @nullable String profileImageURL,
      String phoneNumber,
      @nullable DateTime joinDate,
      String providerId});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object email = freezed,
    Object fcm_token = freezed,
    Object emailVerified = freezed,
    Object profileImageURL = freezed,
    Object phoneNumber = freezed,
    Object joinDate = freezed,
    Object providerId = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as Username,
      email: email == freezed ? _value.email : email as EmailAddress,
      fcm_token: fcm_token == freezed ? _value.fcm_token : fcm_token as String,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified as bool,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      joinDate: joinDate == freezed ? _value.joinDate : joinDate as DateTime,
      providerId:
          providerId == freezed ? _value.providerId : providerId as String,
    ));
  }
}

/// @nodoc
class _$_User implements _User {
  const _$_User(
      {@required this.id,
      @required this.username,
      @required this.email,
      @required this.fcm_token,
      @required this.emailVerified,
      @nullable this.profileImageURL,
      this.phoneNumber,
      @nullable this.joinDate,
      @required this.providerId})
      : assert(id != null),
        assert(username != null),
        assert(email != null),
        assert(fcm_token != null),
        assert(emailVerified != null),
        assert(providerId != null);

  @override
  final String id;
  @override
  final Username username;
  @override
  final EmailAddress email;
  @override
  final String fcm_token;
  @override
  final bool emailVerified;
  @override
  @nullable
  final String profileImageURL;
  @override
  final String phoneNumber;
  @override
  @nullable
  final DateTime joinDate;
  @override
  final String providerId;

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, fcm_token: $fcm_token, emailVerified: $emailVerified, profileImageURL: $profileImageURL, phoneNumber: $phoneNumber, joinDate: $joinDate, providerId: $providerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.fcm_token, fcm_token) ||
                const DeepCollectionEquality()
                    .equals(other.fcm_token, fcm_token)) &&
            (identical(other.emailVerified, emailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.emailVerified, emailVerified)) &&
            (identical(other.profileImageURL, profileImageURL) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageURL, profileImageURL)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.joinDate, joinDate) ||
                const DeepCollectionEquality()
                    .equals(other.joinDate, joinDate)) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality()
                    .equals(other.providerId, providerId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(fcm_token) ^
      const DeepCollectionEquality().hash(emailVerified) ^
      const DeepCollectionEquality().hash(profileImageURL) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(joinDate) ^
      const DeepCollectionEquality().hash(providerId);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required String id,
      @required Username username,
      @required EmailAddress email,
      @required String fcm_token,
      @required bool emailVerified,
      @nullable String profileImageURL,
      String phoneNumber,
      @nullable DateTime joinDate,
      @required String providerId}) = _$_User;

  @override
  String get id;
  @override
  Username get username;
  @override
  EmailAddress get email;
  @override
  String get fcm_token;
  @override
  bool get emailVerified;
  @override
  @nullable
  String get profileImageURL;
  @override
  String get phoneNumber;
  @override
  @nullable
  DateTime get joinDate;
  @override
  String get providerId;
  @override
  _$UserCopyWith<_User> get copyWith;
}
