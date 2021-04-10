// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'property_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PropertyDetailsTearOff {
  const _$PropertyDetailsTearOff();

// ignore: unused_element
  _PropertyDetails call({double spaceSize, int rooms, int bathrooms}) {
    return _PropertyDetails(
      spaceSize: spaceSize,
      rooms: rooms,
      bathrooms: bathrooms,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyDetails = _$PropertyDetailsTearOff();

/// @nodoc
mixin _$PropertyDetails {
  double get spaceSize;
  int get rooms;
  int get bathrooms;

  @JsonKey(ignore: true)
  $PropertyDetailsCopyWith<PropertyDetails> get copyWith;
}

/// @nodoc
abstract class $PropertyDetailsCopyWith<$Res> {
  factory $PropertyDetailsCopyWith(
          PropertyDetails value, $Res Function(PropertyDetails) then) =
      _$PropertyDetailsCopyWithImpl<$Res>;
  $Res call({double spaceSize, int rooms, int bathrooms});
}

/// @nodoc
class _$PropertyDetailsCopyWithImpl<$Res>
    implements $PropertyDetailsCopyWith<$Res> {
  _$PropertyDetailsCopyWithImpl(this._value, this._then);

  final PropertyDetails _value;
  // ignore: unused_field
  final $Res Function(PropertyDetails) _then;

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
abstract class _$PropertyDetailsCopyWith<$Res>
    implements $PropertyDetailsCopyWith<$Res> {
  factory _$PropertyDetailsCopyWith(
          _PropertyDetails value, $Res Function(_PropertyDetails) then) =
      __$PropertyDetailsCopyWithImpl<$Res>;
  @override
  $Res call({double spaceSize, int rooms, int bathrooms});
}

/// @nodoc
class __$PropertyDetailsCopyWithImpl<$Res>
    extends _$PropertyDetailsCopyWithImpl<$Res>
    implements _$PropertyDetailsCopyWith<$Res> {
  __$PropertyDetailsCopyWithImpl(
      _PropertyDetails _value, $Res Function(_PropertyDetails) _then)
      : super(_value, (v) => _then(v as _PropertyDetails));

  @override
  _PropertyDetails get _value => super._value as _PropertyDetails;

  @override
  $Res call({
    Object spaceSize = freezed,
    Object rooms = freezed,
    Object bathrooms = freezed,
  }) {
    return _then(_PropertyDetails(
      spaceSize: spaceSize == freezed ? _value.spaceSize : spaceSize as double,
      rooms: rooms == freezed ? _value.rooms : rooms as int,
      bathrooms: bathrooms == freezed ? _value.bathrooms : bathrooms as int,
    ));
  }
}

/// @nodoc
class _$_PropertyDetails extends _PropertyDetails {
  const _$_PropertyDetails({this.spaceSize, this.rooms, this.bathrooms})
      : super._();

  @override
  final double spaceSize;
  @override
  final int rooms;
  @override
  final int bathrooms;

  @override
  String toString() {
    return 'PropertyDetails(spaceSize: $spaceSize, rooms: $rooms, bathrooms: $bathrooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertyDetails &&
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
  _$PropertyDetailsCopyWith<_PropertyDetails> get copyWith =>
      __$PropertyDetailsCopyWithImpl<_PropertyDetails>(this, _$identity);
}

abstract class _PropertyDetails extends PropertyDetails {
  const _PropertyDetails._() : super._();
  const factory _PropertyDetails({double spaceSize, int rooms, int bathrooms}) =
      _$_PropertyDetails;

  @override
  double get spaceSize;
  @override
  int get rooms;
  @override
  int get bathrooms;
  @override
  @JsonKey(ignore: true)
  _$PropertyDetailsCopyWith<_PropertyDetails> get copyWith;
}
