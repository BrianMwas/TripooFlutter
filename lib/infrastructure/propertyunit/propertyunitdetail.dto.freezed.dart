// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'propertyunitdetail.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PropertyUnitDetailDTO _$PropertyUnitDetailDTOFromJson(
    Map<String, dynamic> json) {
  return _PropertyUnitDetailDTO.fromJson(json);
}

/// @nodoc
class _$PropertyUnitDetailDTOTearOff {
  const _$PropertyUnitDetailDTOTearOff();

// ignore: unused_element
  _PropertyUnitDetailDTO call({double spaceSize, int rooms, int bathrooms}) {
    return _PropertyUnitDetailDTO(
      spaceSize: spaceSize,
      rooms: rooms,
      bathrooms: bathrooms,
    );
  }

// ignore: unused_element
  PropertyUnitDetailDTO fromJson(Map<String, Object> json) {
    return PropertyUnitDetailDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyUnitDetailDTO = _$PropertyUnitDetailDTOTearOff();

/// @nodoc
mixin _$PropertyUnitDetailDTO {
  double get spaceSize;
  int get rooms;
  int get bathrooms;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PropertyUnitDetailDTOCopyWith<PropertyUnitDetailDTO> get copyWith;
}

/// @nodoc
abstract class $PropertyUnitDetailDTOCopyWith<$Res> {
  factory $PropertyUnitDetailDTOCopyWith(PropertyUnitDetailDTO value,
          $Res Function(PropertyUnitDetailDTO) then) =
      _$PropertyUnitDetailDTOCopyWithImpl<$Res>;
  $Res call({double spaceSize, int rooms, int bathrooms});
}

/// @nodoc
class _$PropertyUnitDetailDTOCopyWithImpl<$Res>
    implements $PropertyUnitDetailDTOCopyWith<$Res> {
  _$PropertyUnitDetailDTOCopyWithImpl(this._value, this._then);

  final PropertyUnitDetailDTO _value;
  // ignore: unused_field
  final $Res Function(PropertyUnitDetailDTO) _then;

  @override
  $Res call({
    Object spaceSize = freezed,
    Object rooms = freezed,
    Object bathrooms = freezed,
  }) {
    return _then(_value.copyWith(
      spaceSize: spaceSize == freezed ? _value.spaceSize : spaceSize as double,
      rooms: rooms == freezed ? _value.rooms : rooms as int,
      bathrooms: bathrooms == freezed ? _value.bathrooms : bathrooms as int,
    ));
  }
}

/// @nodoc
abstract class _$PropertyUnitDetailDTOCopyWith<$Res>
    implements $PropertyUnitDetailDTOCopyWith<$Res> {
  factory _$PropertyUnitDetailDTOCopyWith(_PropertyUnitDetailDTO value,
          $Res Function(_PropertyUnitDetailDTO) then) =
      __$PropertyUnitDetailDTOCopyWithImpl<$Res>;
  @override
  $Res call({double spaceSize, int rooms, int bathrooms});
}

/// @nodoc
class __$PropertyUnitDetailDTOCopyWithImpl<$Res>
    extends _$PropertyUnitDetailDTOCopyWithImpl<$Res>
    implements _$PropertyUnitDetailDTOCopyWith<$Res> {
  __$PropertyUnitDetailDTOCopyWithImpl(_PropertyUnitDetailDTO _value,
      $Res Function(_PropertyUnitDetailDTO) _then)
      : super(_value, (v) => _then(v as _PropertyUnitDetailDTO));

  @override
  _PropertyUnitDetailDTO get _value => super._value as _PropertyUnitDetailDTO;

  @override
  $Res call({
    Object spaceSize = freezed,
    Object rooms = freezed,
    Object bathrooms = freezed,
  }) {
    return _then(_PropertyUnitDetailDTO(
      spaceSize: spaceSize == freezed ? _value.spaceSize : spaceSize as double,
      rooms: rooms == freezed ? _value.rooms : rooms as int,
      bathrooms: bathrooms == freezed ? _value.bathrooms : bathrooms as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PropertyUnitDetailDTO extends _PropertyUnitDetailDTO {
  const _$_PropertyUnitDetailDTO({this.spaceSize, this.rooms, this.bathrooms})
      : super._();

  factory _$_PropertyUnitDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PropertyUnitDetailDTOFromJson(json);

  @override
  final double spaceSize;
  @override
  final int rooms;
  @override
  final int bathrooms;

  @override
  String toString() {
    return 'PropertyUnitDetailDTO(spaceSize: $spaceSize, rooms: $rooms, bathrooms: $bathrooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertyUnitDetailDTO &&
            (identical(other.spaceSize, spaceSize) ||
                const DeepCollectionEquality()
                    .equals(other.spaceSize, spaceSize)) &&
            (identical(other.rooms, rooms) ||
                const DeepCollectionEquality().equals(other.rooms, rooms)) &&
            (identical(other.bathrooms, bathrooms) ||
                const DeepCollectionEquality()
                    .equals(other.bathrooms, bathrooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(spaceSize) ^
      const DeepCollectionEquality().hash(rooms) ^
      const DeepCollectionEquality().hash(bathrooms);

  @JsonKey(ignore: true)
  @override
  _$PropertyUnitDetailDTOCopyWith<_PropertyUnitDetailDTO> get copyWith =>
      __$PropertyUnitDetailDTOCopyWithImpl<_PropertyUnitDetailDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PropertyUnitDetailDTOToJson(this);
  }
}

abstract class _PropertyUnitDetailDTO extends PropertyUnitDetailDTO {
  const _PropertyUnitDetailDTO._() : super._();
  const factory _PropertyUnitDetailDTO(
      {double spaceSize, int rooms, int bathrooms}) = _$_PropertyUnitDetailDTO;

  factory _PropertyUnitDetailDTO.fromJson(Map<String, dynamic> json) =
      _$_PropertyUnitDetailDTO.fromJson;

  @override
  double get spaceSize;
  @override
  int get rooms;
  @override
  int get bathrooms;
  @override
  @JsonKey(ignore: true)
  _$PropertyUnitDetailDTOCopyWith<_PropertyUnitDetailDTO> get copyWith;
}
