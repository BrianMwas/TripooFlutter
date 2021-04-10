// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'example_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeUnitTearOff {
  const _$HomeUnitTearOff();

// ignore: unused_element
  _HomeUnit call(
      {String id,
      String name,
      String simple_description,
      String thumbnail,
      String long_description,
      LatLng position}) {
    return _HomeUnit(
      id: id,
      name: name,
      simple_description: simple_description,
      thumbnail: thumbnail,
      long_description: long_description,
      position: position,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeUnit = _$HomeUnitTearOff();

/// @nodoc
mixin _$HomeUnit {
  String get id;
  String get name;
  String get simple_description;
  String get thumbnail;
  String get long_description;
  LatLng get position;

  @JsonKey(ignore: true)
  $HomeUnitCopyWith<HomeUnit> get copyWith;
}

/// @nodoc
abstract class $HomeUnitCopyWith<$Res> {
  factory $HomeUnitCopyWith(HomeUnit value, $Res Function(HomeUnit) then) =
      _$HomeUnitCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String simple_description,
      String thumbnail,
      String long_description,
      LatLng position});
}

/// @nodoc
class _$HomeUnitCopyWithImpl<$Res> implements $HomeUnitCopyWith<$Res> {
  _$HomeUnitCopyWithImpl(this._value, this._then);

  final HomeUnit _value;
  // ignore: unused_field
  final $Res Function(HomeUnit) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object simple_description = freezed,
    Object thumbnail = freezed,
    Object long_description = freezed,
    Object position = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      simple_description: simple_description == freezed
          ? _value.simple_description
          : simple_description as String,
      thumbnail: thumbnail == freezed ? _value.thumbnail : thumbnail as String,
      long_description: long_description == freezed
          ? _value.long_description
          : long_description as String,
      position: position == freezed ? _value.position : position as LatLng,
    ));
  }
}

/// @nodoc
abstract class _$HomeUnitCopyWith<$Res> implements $HomeUnitCopyWith<$Res> {
  factory _$HomeUnitCopyWith(_HomeUnit value, $Res Function(_HomeUnit) then) =
      __$HomeUnitCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String simple_description,
      String thumbnail,
      String long_description,
      LatLng position});
}

/// @nodoc
class __$HomeUnitCopyWithImpl<$Res> extends _$HomeUnitCopyWithImpl<$Res>
    implements _$HomeUnitCopyWith<$Res> {
  __$HomeUnitCopyWithImpl(_HomeUnit _value, $Res Function(_HomeUnit) _then)
      : super(_value, (v) => _then(v as _HomeUnit));

  @override
  _HomeUnit get _value => super._value as _HomeUnit;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object simple_description = freezed,
    Object thumbnail = freezed,
    Object long_description = freezed,
    Object position = freezed,
  }) {
    return _then(_HomeUnit(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      simple_description: simple_description == freezed
          ? _value.simple_description
          : simple_description as String,
      thumbnail: thumbnail == freezed ? _value.thumbnail : thumbnail as String,
      long_description: long_description == freezed
          ? _value.long_description
          : long_description as String,
      position: position == freezed ? _value.position : position as LatLng,
    ));
  }
}

/// @nodoc
class _$_HomeUnit extends _HomeUnit {
  const _$_HomeUnit(
      {this.id,
      this.name,
      this.simple_description,
      this.thumbnail,
      this.long_description,
      this.position})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String simple_description;
  @override
  final String thumbnail;
  @override
  final String long_description;
  @override
  final LatLng position;

  @override
  String toString() {
    return 'HomeUnit(id: $id, name: $name, simple_description: $simple_description, thumbnail: $thumbnail, long_description: $long_description, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeUnit &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.simple_description, simple_description) ||
                const DeepCollectionEquality()
                    .equals(other.simple_description, simple_description)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.long_description, long_description) ||
                const DeepCollectionEquality()
                    .equals(other.long_description, long_description)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(simple_description) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(long_description) ^
      const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$HomeUnitCopyWith<_HomeUnit> get copyWith =>
      __$HomeUnitCopyWithImpl<_HomeUnit>(this, _$identity);
}

abstract class _HomeUnit extends HomeUnit {
  const _HomeUnit._() : super._();
  const factory _HomeUnit(
      {String id,
      String name,
      String simple_description,
      String thumbnail,
      String long_description,
      LatLng position}) = _$_HomeUnit;

  @override
  String get id;
  @override
  String get name;
  @override
  String get simple_description;
  @override
  String get thumbnail;
  @override
  String get long_description;
  @override
  LatLng get position;
  @override
  @JsonKey(ignore: true)
  _$HomeUnitCopyWith<_HomeUnit> get copyWith;
}
