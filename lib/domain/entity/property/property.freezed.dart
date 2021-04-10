// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PropertyTearOff {
  const _$PropertyTearOff();

// ignore: unused_element
  _Property call(
      {String id,
      String name,
      String description,
      List<PropertyUnit> units,
      String imageURL,
      List<Analytics> analytics,
      List<PropertyAgent> agents,
      DateTime createdAt,
      bool hidden,
      LatLng position}) {
    return _Property(
      id: id,
      name: name,
      description: description,
      units: units,
      imageURL: imageURL,
      analytics: analytics,
      agents: agents,
      createdAt: createdAt,
      hidden: hidden,
      position: position,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Property = _$PropertyTearOff();

/// @nodoc
mixin _$Property {
  String get id;
  String get name;
  String get description;
  List<PropertyUnit> get units;
  String get imageURL;
  List<Analytics> get analytics;
  List<PropertyAgent> get agents;
  DateTime get createdAt;
  bool get hidden;
  LatLng get position;

  @JsonKey(ignore: true)
  $PropertyCopyWith<Property> get copyWith;
}

/// @nodoc
abstract class $PropertyCopyWith<$Res> {
  factory $PropertyCopyWith(Property value, $Res Function(Property) then) =
      _$PropertyCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      List<PropertyUnit> units,
      String imageURL,
      List<Analytics> analytics,
      List<PropertyAgent> agents,
      DateTime createdAt,
      bool hidden,
      LatLng position});
}

/// @nodoc
class _$PropertyCopyWithImpl<$Res> implements $PropertyCopyWith<$Res> {
  _$PropertyCopyWithImpl(this._value, this._then);

  final Property _value;
  // ignore: unused_field
  final $Res Function(Property) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object units = freezed,
    Object imageURL = freezed,
    Object analytics = freezed,
    Object agents = freezed,
    Object createdAt = freezed,
    Object hidden = freezed,
    Object position = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      units: units == freezed ? _value.units : units as List<PropertyUnit>,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      analytics: analytics == freezed
          ? _value.analytics
          : analytics as List<Analytics>,
      agents: agents == freezed ? _value.agents : agents as List<PropertyAgent>,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      hidden: hidden == freezed ? _value.hidden : hidden as bool,
      position: position == freezed ? _value.position : position as LatLng,
    ));
  }
}

/// @nodoc
abstract class _$PropertyCopyWith<$Res> implements $PropertyCopyWith<$Res> {
  factory _$PropertyCopyWith(_Property value, $Res Function(_Property) then) =
      __$PropertyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String description,
      List<PropertyUnit> units,
      String imageURL,
      List<Analytics> analytics,
      List<PropertyAgent> agents,
      DateTime createdAt,
      bool hidden,
      LatLng position});
}

/// @nodoc
class __$PropertyCopyWithImpl<$Res> extends _$PropertyCopyWithImpl<$Res>
    implements _$PropertyCopyWith<$Res> {
  __$PropertyCopyWithImpl(_Property _value, $Res Function(_Property) _then)
      : super(_value, (v) => _then(v as _Property));

  @override
  _Property get _value => super._value as _Property;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object units = freezed,
    Object imageURL = freezed,
    Object analytics = freezed,
    Object agents = freezed,
    Object createdAt = freezed,
    Object hidden = freezed,
    Object position = freezed,
  }) {
    return _then(_Property(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      units: units == freezed ? _value.units : units as List<PropertyUnit>,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      analytics: analytics == freezed
          ? _value.analytics
          : analytics as List<Analytics>,
      agents: agents == freezed ? _value.agents : agents as List<PropertyAgent>,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      hidden: hidden == freezed ? _value.hidden : hidden as bool,
      position: position == freezed ? _value.position : position as LatLng,
    ));
  }
}

/// @nodoc
class _$_Property extends _Property {
  const _$_Property(
      {this.id,
      this.name,
      this.description,
      this.units,
      this.imageURL,
      this.analytics,
      this.agents,
      this.createdAt,
      this.hidden,
      this.position})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final List<PropertyUnit> units;
  @override
  final String imageURL;
  @override
  final List<Analytics> analytics;
  @override
  final List<PropertyAgent> agents;
  @override
  final DateTime createdAt;
  @override
  final bool hidden;
  @override
  final LatLng position;

  @override
  String toString() {
    return 'Property(id: $id, name: $name, description: $description, units: $units, imageURL: $imageURL, analytics: $analytics, agents: $agents, createdAt: $createdAt, hidden: $hidden, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Property &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.units, units) ||
                const DeepCollectionEquality().equals(other.units, units)) &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.analytics, analytics) ||
                const DeepCollectionEquality()
                    .equals(other.analytics, analytics)) &&
            (identical(other.agents, agents) ||
                const DeepCollectionEquality().equals(other.agents, agents)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.hidden, hidden) ||
                const DeepCollectionEquality().equals(other.hidden, hidden)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(units) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(analytics) ^
      const DeepCollectionEquality().hash(agents) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(hidden) ^
      const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$PropertyCopyWith<_Property> get copyWith =>
      __$PropertyCopyWithImpl<_Property>(this, _$identity);
}

abstract class _Property extends Property {
  const _Property._() : super._();
  const factory _Property(
      {String id,
      String name,
      String description,
      List<PropertyUnit> units,
      String imageURL,
      List<Analytics> analytics,
      List<PropertyAgent> agents,
      DateTime createdAt,
      bool hidden,
      LatLng position}) = _$_Property;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  List<PropertyUnit> get units;
  @override
  String get imageURL;
  @override
  List<Analytics> get analytics;
  @override
  List<PropertyAgent> get agents;
  @override
  DateTime get createdAt;
  @override
  bool get hidden;
  @override
  LatLng get position;
  @override
  @JsonKey(ignore: true)
  _$PropertyCopyWith<_Property> get copyWith;
}
