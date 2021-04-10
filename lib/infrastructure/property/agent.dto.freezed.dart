// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'agent.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PropertyAgentDTO _$PropertyAgentDTOFromJson(Map<String, dynamic> json) {
  return _PropertyAgentDTO.fromJson(json);
}

/// @nodoc
class _$PropertyAgentDTOTearOff {
  const _$PropertyAgentDTOTearOff();

// ignore: unused_element
  _PropertyAgentDTO call(
      {String id,
      String name,
      String imageURL,
      String emailAddress,
      String phoneNumber,
      DateTime createdAt}) {
    return _PropertyAgentDTO(
      id: id,
      name: name,
      imageURL: imageURL,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
      createdAt: createdAt,
    );
  }

// ignore: unused_element
  PropertyAgentDTO fromJson(Map<String, Object> json) {
    return PropertyAgentDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyAgentDTO = _$PropertyAgentDTOTearOff();

/// @nodoc
mixin _$PropertyAgentDTO {
  String get id;
  String get name;
  String get imageURL;
  String get emailAddress;
  String get phoneNumber;
  DateTime get createdAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PropertyAgentDTOCopyWith<PropertyAgentDTO> get copyWith;
}

/// @nodoc
abstract class $PropertyAgentDTOCopyWith<$Res> {
  factory $PropertyAgentDTOCopyWith(
          PropertyAgentDTO value, $Res Function(PropertyAgentDTO) then) =
      _$PropertyAgentDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String imageURL,
      String emailAddress,
      String phoneNumber,
      DateTime createdAt});
}

/// @nodoc
class _$PropertyAgentDTOCopyWithImpl<$Res>
    implements $PropertyAgentDTOCopyWith<$Res> {
  _$PropertyAgentDTOCopyWithImpl(this._value, this._then);

  final PropertyAgentDTO _value;
  // ignore: unused_field
  final $Res Function(PropertyAgentDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object imageURL = freezed,
    Object emailAddress = freezed,
    Object phoneNumber = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$PropertyAgentDTOCopyWith<$Res>
    implements $PropertyAgentDTOCopyWith<$Res> {
  factory _$PropertyAgentDTOCopyWith(
          _PropertyAgentDTO value, $Res Function(_PropertyAgentDTO) then) =
      __$PropertyAgentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String imageURL,
      String emailAddress,
      String phoneNumber,
      DateTime createdAt});
}

/// @nodoc
class __$PropertyAgentDTOCopyWithImpl<$Res>
    extends _$PropertyAgentDTOCopyWithImpl<$Res>
    implements _$PropertyAgentDTOCopyWith<$Res> {
  __$PropertyAgentDTOCopyWithImpl(
      _PropertyAgentDTO _value, $Res Function(_PropertyAgentDTO) _then)
      : super(_value, (v) => _then(v as _PropertyAgentDTO));

  @override
  _PropertyAgentDTO get _value => super._value as _PropertyAgentDTO;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object imageURL = freezed,
    Object emailAddress = freezed,
    Object phoneNumber = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_PropertyAgentDTO(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PropertyAgentDTO extends _PropertyAgentDTO {
  const _$_PropertyAgentDTO(
      {this.id,
      this.name,
      this.imageURL,
      this.emailAddress,
      this.phoneNumber,
      this.createdAt})
      : super._();

  factory _$_PropertyAgentDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PropertyAgentDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageURL;
  @override
  final String emailAddress;
  @override
  final String phoneNumber;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PropertyAgentDTO(id: $id, name: $name, imageURL: $imageURL, emailAddress: $emailAddress, phoneNumber: $phoneNumber, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertyAgentDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$PropertyAgentDTOCopyWith<_PropertyAgentDTO> get copyWith =>
      __$PropertyAgentDTOCopyWithImpl<_PropertyAgentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PropertyAgentDTOToJson(this);
  }
}

abstract class _PropertyAgentDTO extends PropertyAgentDTO {
  const _PropertyAgentDTO._() : super._();
  const factory _PropertyAgentDTO(
      {String id,
      String name,
      String imageURL,
      String emailAddress,
      String phoneNumber,
      DateTime createdAt}) = _$_PropertyAgentDTO;

  factory _PropertyAgentDTO.fromJson(Map<String, dynamic> json) =
      _$_PropertyAgentDTO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageURL;
  @override
  String get emailAddress;
  @override
  String get phoneNumber;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$PropertyAgentDTOCopyWith<_PropertyAgentDTO> get copyWith;
}
