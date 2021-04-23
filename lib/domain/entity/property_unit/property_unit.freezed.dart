// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'property_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PropertyUnitTearOff {
  const _$PropertyUnitTearOff();

// ignore: unused_element
  _PropertyUnit call(
      {String id,
      String name,
      String description,
      bool used,
      String thumbnail,
      UnitType unitType,
      int numberOfUnits,
      List<String> images,
      bool live,
      PropertyDetails details,
      List<PropertyFeatures> features,
      GeoPoint position,
      List<Analytics> analytics,
      List<Booking> bookings}) {
    return _PropertyUnit(
      id: id,
      name: name,
      description: description,
      used: used,
      thumbnail: thumbnail,
      unitType: unitType,
      numberOfUnits: numberOfUnits,
      images: images,
      live: live,
      details: details,
      features: features,
      position: position,
      analytics: analytics,
      bookings: bookings,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyUnit = _$PropertyUnitTearOff();

/// @nodoc
mixin _$PropertyUnit {
  String get id;
  String get name;
  String get description;
  bool get used;
  String get thumbnail;
  UnitType get unitType;
  int get numberOfUnits;
  List<String> get images;
  bool get live;
  PropertyDetails get details;
  List<PropertyFeatures> get features;
  GeoPoint get position;
  List<Analytics> get analytics;
  List<Booking> get bookings;

  @JsonKey(ignore: true)
  $PropertyUnitCopyWith<PropertyUnit> get copyWith;
}

/// @nodoc
abstract class $PropertyUnitCopyWith<$Res> {
  factory $PropertyUnitCopyWith(
          PropertyUnit value, $Res Function(PropertyUnit) then) =
      _$PropertyUnitCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      bool used,
      String thumbnail,
      UnitType unitType,
      int numberOfUnits,
      List<String> images,
      bool live,
      PropertyDetails details,
      List<PropertyFeatures> features,
      GeoPoint position,
      List<Analytics> analytics,
      List<Booking> bookings});

  $PropertyDetailsCopyWith<$Res> get details;
}

/// @nodoc
class _$PropertyUnitCopyWithImpl<$Res> implements $PropertyUnitCopyWith<$Res> {
  _$PropertyUnitCopyWithImpl(this._value, this._then);

  final PropertyUnit _value;
  // ignore: unused_field
  final $Res Function(PropertyUnit) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object used = freezed,
    Object thumbnail = freezed,
    Object unitType = freezed,
    Object numberOfUnits = freezed,
    Object images = freezed,
    Object live = freezed,
    Object details = freezed,
    Object features = freezed,
    Object position = freezed,
    Object analytics = freezed,
    Object bookings = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      used: used == freezed ? _value.used : used as bool,
      thumbnail: thumbnail == freezed ? _value.thumbnail : thumbnail as String,
      unitType: unitType == freezed ? _value.unitType : unitType as UnitType,
      numberOfUnits: numberOfUnits == freezed
          ? _value.numberOfUnits
          : numberOfUnits as int,
      images: images == freezed ? _value.images : images as List<String>,
      live: live == freezed ? _value.live : live as bool,
      details: details == freezed ? _value.details : details as PropertyDetails,
      features: features == freezed
          ? _value.features
          : features as List<PropertyFeatures>,
      position: position == freezed ? _value.position : position as GeoPoint,
      analytics: analytics == freezed
          ? _value.analytics
          : analytics as List<Analytics>,
      bookings:
          bookings == freezed ? _value.bookings : bookings as List<Booking>,
    ));
  }

  @override
  $PropertyDetailsCopyWith<$Res> get details {
    if (_value.details == null) {
      return null;
    }
    return $PropertyDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc
abstract class _$PropertyUnitCopyWith<$Res>
    implements $PropertyUnitCopyWith<$Res> {
  factory _$PropertyUnitCopyWith(
          _PropertyUnit value, $Res Function(_PropertyUnit) then) =
      __$PropertyUnitCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String description,
      bool used,
      String thumbnail,
      UnitType unitType,
      int numberOfUnits,
      List<String> images,
      bool live,
      PropertyDetails details,
      List<PropertyFeatures> features,
      GeoPoint position,
      List<Analytics> analytics,
      List<Booking> bookings});

  @override
  $PropertyDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$PropertyUnitCopyWithImpl<$Res> extends _$PropertyUnitCopyWithImpl<$Res>
    implements _$PropertyUnitCopyWith<$Res> {
  __$PropertyUnitCopyWithImpl(
      _PropertyUnit _value, $Res Function(_PropertyUnit) _then)
      : super(_value, (v) => _then(v as _PropertyUnit));

  @override
  _PropertyUnit get _value => super._value as _PropertyUnit;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object used = freezed,
    Object thumbnail = freezed,
    Object unitType = freezed,
    Object numberOfUnits = freezed,
    Object images = freezed,
    Object live = freezed,
    Object details = freezed,
    Object features = freezed,
    Object position = freezed,
    Object analytics = freezed,
    Object bookings = freezed,
  }) {
    return _then(_PropertyUnit(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      used: used == freezed ? _value.used : used as bool,
      thumbnail: thumbnail == freezed ? _value.thumbnail : thumbnail as String,
      unitType: unitType == freezed ? _value.unitType : unitType as UnitType,
      numberOfUnits: numberOfUnits == freezed
          ? _value.numberOfUnits
          : numberOfUnits as int,
      images: images == freezed ? _value.images : images as List<String>,
      live: live == freezed ? _value.live : live as bool,
      details: details == freezed ? _value.details : details as PropertyDetails,
      features: features == freezed
          ? _value.features
          : features as List<PropertyFeatures>,
      position: position == freezed ? _value.position : position as GeoPoint,
      analytics: analytics == freezed
          ? _value.analytics
          : analytics as List<Analytics>,
      bookings:
          bookings == freezed ? _value.bookings : bookings as List<Booking>,
    ));
  }
}

/// @nodoc
class _$_PropertyUnit extends _PropertyUnit {
  const _$_PropertyUnit(
      {this.id,
      this.name,
      this.description,
      this.used,
      this.thumbnail,
      this.unitType,
      this.numberOfUnits,
      this.images,
      this.live,
      this.details,
      this.features,
      this.position,
      this.analytics,
      this.bookings})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final bool used;
  @override
  final String thumbnail;
  @override
  final UnitType unitType;
  @override
  final int numberOfUnits;
  @override
  final List<String> images;
  @override
  final bool live;
  @override
  final PropertyDetails details;
  @override
  final List<PropertyFeatures> features;
  @override
  final GeoPoint position;
  @override
  final List<Analytics> analytics;
  @override
  final List<Booking> bookings;

  @override
  String toString() {
    return 'PropertyUnit(id: $id, name: $name, description: $description, used: $used, thumbnail: $thumbnail, unitType: $unitType, numberOfUnits: $numberOfUnits, images: $images, live: $live, details: $details, features: $features, position: $position, analytics: $analytics, bookings: $bookings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertyUnit &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.used, used) ||
                const DeepCollectionEquality().equals(other.used, used)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.unitType, unitType) ||
                const DeepCollectionEquality()
                    .equals(other.unitType, unitType)) &&
            (identical(other.numberOfUnits, numberOfUnits) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfUnits, numberOfUnits)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.live, live) ||
                const DeepCollectionEquality().equals(other.live, live)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.features, features) ||
                const DeepCollectionEquality()
                    .equals(other.features, features)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.analytics, analytics) ||
                const DeepCollectionEquality()
                    .equals(other.analytics, analytics)) &&
            (identical(other.bookings, bookings) ||
                const DeepCollectionEquality()
                    .equals(other.bookings, bookings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(used) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(unitType) ^
      const DeepCollectionEquality().hash(numberOfUnits) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(live) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(features) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(analytics) ^
      const DeepCollectionEquality().hash(bookings);

  @JsonKey(ignore: true)
  @override
  _$PropertyUnitCopyWith<_PropertyUnit> get copyWith =>
      __$PropertyUnitCopyWithImpl<_PropertyUnit>(this, _$identity);
}

abstract class _PropertyUnit extends PropertyUnit {
  const _PropertyUnit._() : super._();
  const factory _PropertyUnit(
      {String id,
      String name,
      String description,
      bool used,
      String thumbnail,
      UnitType unitType,
      int numberOfUnits,
      List<String> images,
      bool live,
      PropertyDetails details,
      List<PropertyFeatures> features,
      GeoPoint position,
      List<Analytics> analytics,
      List<Booking> bookings}) = _$_PropertyUnit;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  bool get used;
  @override
  String get thumbnail;
  @override
  UnitType get unitType;
  @override
  int get numberOfUnits;
  @override
  List<String> get images;
  @override
  bool get live;
  @override
  PropertyDetails get details;
  @override
  List<PropertyFeatures> get features;
  @override
  GeoPoint get position;
  @override
  List<Analytics> get analytics;
  @override
  List<Booking> get bookings;
  @override
  @JsonKey(ignore: true)
  _$PropertyUnitCopyWith<_PropertyUnit> get copyWith;
}
