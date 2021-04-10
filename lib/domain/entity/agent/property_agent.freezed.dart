// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'property_agent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PropertyAgentTearOff {
  const _$PropertyAgentTearOff();

// ignore: unused_element
  _PropertyAgent call(
      {String name, String imageURL, String emailAddress, String phoneNumber}) {
    return _PropertyAgent(
      name: name,
      imageURL: imageURL,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyAgent = _$PropertyAgentTearOff();

/// @nodoc
mixin _$PropertyAgent {
  String get name;
  String get imageURL;
  String get emailAddress;
  String get phoneNumber;

  $PropertyAgentCopyWith<PropertyAgent> get copyWith;
}

/// @nodoc
abstract class $PropertyAgentCopyWith<$Res> {
  factory $PropertyAgentCopyWith(
          PropertyAgent value, $Res Function(PropertyAgent) then) =
      _$PropertyAgentCopyWithImpl<$Res>;
  $Res call(
      {String name, String imageURL, String emailAddress, String phoneNumber});
}

/// @nodoc
class _$PropertyAgentCopyWithImpl<$Res>
    implements $PropertyAgentCopyWith<$Res> {
  _$PropertyAgentCopyWithImpl(this._value, this._then);

  final PropertyAgent _value;
  // ignore: unused_field
  final $Res Function(PropertyAgent) _then;

  @override
  $Res call({
    Object name = freezed,
    Object imageURL = freezed,
    Object emailAddress = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

/// @nodoc
abstract class _$PropertyAgentCopyWith<$Res>
    implements $PropertyAgentCopyWith<$Res> {
  factory _$PropertyAgentCopyWith(
          _PropertyAgent value, $Res Function(_PropertyAgent) then) =
      __$PropertyAgentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, String imageURL, String emailAddress, String phoneNumber});
}

/// @nodoc
class __$PropertyAgentCopyWithImpl<$Res>
    extends _$PropertyAgentCopyWithImpl<$Res>
    implements _$PropertyAgentCopyWith<$Res> {
  __$PropertyAgentCopyWithImpl(
      _PropertyAgent _value, $Res Function(_PropertyAgent) _then)
      : super(_value, (v) => _then(v as _PropertyAgent));

  @override
  _PropertyAgent get _value => super._value as _PropertyAgent;

  @override
  $Res call({
    Object name = freezed,
    Object imageURL = freezed,
    Object emailAddress = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_PropertyAgent(
      name: name == freezed ? _value.name : name as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

/// @nodoc
class _$_PropertyAgent extends _PropertyAgent {
  const _$_PropertyAgent(
      {this.name, this.imageURL, this.emailAddress, this.phoneNumber})
      : super._();

  @override
  final String name;
  @override
  final String imageURL;
  @override
  final String emailAddress;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PropertyAgent(name: $name, imageURL: $imageURL, emailAddress: $emailAddress, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertyAgent &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(phoneNumber);

  @override
  _$PropertyAgentCopyWith<_PropertyAgent> get copyWith =>
      __$PropertyAgentCopyWithImpl<_PropertyAgent>(this, _$identity);
}

abstract class _PropertyAgent extends PropertyAgent {
  const _PropertyAgent._() : super._();
  const factory _PropertyAgent(
      {String name,
      String imageURL,
      String emailAddress,
      String phoneNumber}) = _$_PropertyAgent;

  @override
  String get name;
  @override
  String get imageURL;
  @override
  String get emailAddress;
  @override
  String get phoneNumber;
  @override
  _$PropertyAgentCopyWith<_PropertyAgent> get copyWith;
}
