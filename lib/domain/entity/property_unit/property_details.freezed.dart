// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'property_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeDetailsTearOff {
  const _$HomeDetailsTearOff();

// ignore: unused_element
  _HomeDetails call({double spaceSize, int bedrooms, int bathrooms}) {
    return _HomeDetails(
      spaceSize: spaceSize,
      bedrooms: bedrooms,
      bathrooms: bathrooms,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeDetails = _$HomeDetailsTearOff();

/// @nodoc
mixin _$HomeDetails {
  double get spaceSize;
  int get bedrooms;
  int get bathrooms;

  $HomeDetailsCopyWith<HomeDetails> get copyWith;
}

/// @nodoc
abstract class $HomeDetailsCopyWith<$Res> {
  factory $HomeDetailsCopyWith(
          HomeDetails value, $Res Function(HomeDetails) then) =
      _$HomeDetailsCopyWithImpl<$Res>;
  $Res call({double spaceSize, int bedrooms, int bathrooms});
}

/// @nodoc
class _$HomeDetailsCopyWithImpl<$Res> implements $HomeDetailsCopyWith<$Res> {
  _$HomeDetailsCopyWithImpl(this._value, this._then);

  final HomeDetails _value;
  // ignore: unused_field
  final $Res Function(HomeDetails) _then;

  @override
  $Res call({
    Object spaceSize = freezed,
    Object bedrooms = freezed,
    Object bathrooms = freezed,
  }) {
    return _then(_value.copyWith(
      spaceSize: spaceSize == freezed ? _value.spaceSize : spaceSize as double,
      bedrooms: bedrooms == freezed ? _value.bedrooms : bedrooms as int,
      bathrooms: bathrooms == freezed ? _value.bathrooms : bathrooms as int,
    ));
  }
}

/// @nodoc
abstract class _$HomeDetailsCopyWith<$Res>
    implements $HomeDetailsCopyWith<$Res> {
  factory _$HomeDetailsCopyWith(
          _HomeDetails value, $Res Function(_HomeDetails) then) =
      __$HomeDetailsCopyWithImpl<$Res>;
  @override
  $Res call({double spaceSize, int bedrooms, int bathrooms});
}

/// @nodoc
class __$HomeDetailsCopyWithImpl<$Res> extends _$HomeDetailsCopyWithImpl<$Res>
    implements _$HomeDetailsCopyWith<$Res> {
  __$HomeDetailsCopyWithImpl(
      _HomeDetails _value, $Res Function(_HomeDetails) _then)
      : super(_value, (v) => _then(v as _HomeDetails));

  @override
  _HomeDetails get _value => super._value as _HomeDetails;

  @override
  $Res call({
    Object spaceSize = freezed,
    Object bedrooms = freezed,
    Object bathrooms = freezed,
  }) {
    return _then(_HomeDetails(
      spaceSize: spaceSize == freezed ? _value.spaceSize : spaceSize as double,
      bedrooms: bedrooms == freezed ? _value.bedrooms : bedrooms as int,
      bathrooms: bathrooms == freezed ? _value.bathrooms : bathrooms as int,
    ));
  }
}

/// @nodoc
class _$_HomeDetails extends _HomeDetails {
  const _$_HomeDetails({this.spaceSize, this.bedrooms, this.bathrooms})
      : super._();

  @override
  final double spaceSize;
  @override
  final int bedrooms;
  @override
  final int bathrooms;

  @override
  String toString() {
    return 'HomeDetails(spaceSize: $spaceSize, bedrooms: $bedrooms, bathrooms: $bathrooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeDetails &&
            (identical(other.spaceSize, spaceSize) ||
                const DeepCollectionEquality()
                    .equals(other.spaceSize, spaceSize)) &&
            (identical(other.bedrooms, bedrooms) ||
                const DeepCollectionEquality()
                    .equals(other.bedrooms, bedrooms)) &&
            (identical(other.bathrooms, bathrooms) ||
                const DeepCollectionEquality()
                    .equals(other.bathrooms, bathrooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(spaceSize) ^
      const DeepCollectionEquality().hash(bedrooms) ^
      const DeepCollectionEquality().hash(bathrooms);

  @override
  _$HomeDetailsCopyWith<_HomeDetails> get copyWith =>
      __$HomeDetailsCopyWithImpl<_HomeDetails>(this, _$identity);
}

abstract class _HomeDetails extends HomeDetails {
  const _HomeDetails._() : super._();
  const factory _HomeDetails({double spaceSize, int bedrooms, int bathrooms}) =
      _$_HomeDetails;

  @override
  double get spaceSize;
  @override
  int get bedrooms;
  @override
  int get bathrooms;
  @override
  _$HomeDetailsCopyWith<_HomeDetails> get copyWith;
}
