// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'propertyunit.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PropertyUnitDTO _$PropertyUnitDTOFromJson(Map<String, dynamic> json) {
  return _PropertyUnitDTO.fromJson(json);
}

/// @nodoc
class _$PropertyUnitDTOTearOff {
  const _$PropertyUnitDTOTearOff();

// ignore: unused_element
  _PropertyUnitDTO call(
      {@JsonKey(ignore: true) String id,
      String name,
      String description,
      String thumbnail,
      bool used,
      String unitType,
      int numberOfUnits,
      List<String> images,
      bool live,
      List<AnalyticsDTO> analytics,
      PropertyUnitDetailDTO details,
      List<String> features,
      double lat,
      double long,
      List<BookingDTO> bookings}) {
    return _PropertyUnitDTO(
      id: id,
      name: name,
      description: description,
      thumbnail: thumbnail,
      used: used,
      unitType: unitType,
      numberOfUnits: numberOfUnits,
      images: images,
      live: live,
      analytics: analytics,
      details: details,
      features: features,
      lat: lat,
      long: long,
      bookings: bookings,
    );
  }

// ignore: unused_element
  PropertyUnitDTO fromJson(Map<String, Object> json) {
    return PropertyUnitDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyUnitDTO = _$PropertyUnitDTOTearOff();

/// @nodoc
mixin _$PropertyUnitDTO {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  String get description;
  String get thumbnail;
  bool get used;
  String get unitType; // Prevent duplicates
  int get numberOfUnits;
  List<String> get images;
  bool get live;
  List<AnalyticsDTO> get analytics;
  PropertyUnitDetailDTO get details;
  List<String> get features;
  double get lat;
  double get long;
  List<BookingDTO> get bookings;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PropertyUnitDTOCopyWith<PropertyUnitDTO> get copyWith;
}

/// @nodoc
abstract class $PropertyUnitDTOCopyWith<$Res> {
  factory $PropertyUnitDTOCopyWith(
          PropertyUnitDTO value, $Res Function(PropertyUnitDTO) then) =
      _$PropertyUnitDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String description,
      String thumbnail,
      bool used,
      String unitType,
      int numberOfUnits,
      List<String> images,
      bool live,
      List<AnalyticsDTO> analytics,
      PropertyUnitDetailDTO details,
      List<String> features,
      double lat,
      double long,
      List<BookingDTO> bookings});

  $PropertyUnitDetailDTOCopyWith<$Res> get details;
}

/// @nodoc
class _$PropertyUnitDTOCopyWithImpl<$Res>
    implements $PropertyUnitDTOCopyWith<$Res> {
  _$PropertyUnitDTOCopyWithImpl(this._value, this._then);

  final PropertyUnitDTO _value;
  // ignore: unused_field
  final $Res Function(PropertyUnitDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object thumbnail = freezed,
    Object used = freezed,
    Object unitType = freezed,
    Object numberOfUnits = freezed,
    Object images = freezed,
    Object live = freezed,
    Object analytics = freezed,
    Object details = freezed,
    Object features = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object bookings = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      thumbnail: thumbnail == freezed ? _value.thumbnail : thumbnail as String,
      used: used == freezed ? _value.used : used as bool,
      unitType: unitType == freezed ? _value.unitType : unitType as String,
      numberOfUnits: numberOfUnits == freezed
          ? _value.numberOfUnits
          : numberOfUnits as int,
      images: images == freezed ? _value.images : images as List<String>,
      live: live == freezed ? _value.live : live as bool,
      analytics: analytics == freezed
          ? _value.analytics
          : analytics as List<AnalyticsDTO>,
      details: details == freezed
          ? _value.details
          : details as PropertyUnitDetailDTO,
      features:
          features == freezed ? _value.features : features as List<String>,
      lat: lat == freezed ? _value.lat : lat as double,
      long: long == freezed ? _value.long : long as double,
      bookings:
          bookings == freezed ? _value.bookings : bookings as List<BookingDTO>,
    ));
  }

  @override
  $PropertyUnitDetailDTOCopyWith<$Res> get details {
    if (_value.details == null) {
      return null;
    }
    return $PropertyUnitDetailDTOCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc
abstract class _$PropertyUnitDTOCopyWith<$Res>
    implements $PropertyUnitDTOCopyWith<$Res> {
  factory _$PropertyUnitDTOCopyWith(
          _PropertyUnitDTO value, $Res Function(_PropertyUnitDTO) then) =
      __$PropertyUnitDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String description,
      String thumbnail,
      bool used,
      String unitType,
      int numberOfUnits,
      List<String> images,
      bool live,
      List<AnalyticsDTO> analytics,
      PropertyUnitDetailDTO details,
      List<String> features,
      double lat,
      double long,
      List<BookingDTO> bookings});

  @override
  $PropertyUnitDetailDTOCopyWith<$Res> get details;
}

/// @nodoc
class __$PropertyUnitDTOCopyWithImpl<$Res>
    extends _$PropertyUnitDTOCopyWithImpl<$Res>
    implements _$PropertyUnitDTOCopyWith<$Res> {
  __$PropertyUnitDTOCopyWithImpl(
      _PropertyUnitDTO _value, $Res Function(_PropertyUnitDTO) _then)
      : super(_value, (v) => _then(v as _PropertyUnitDTO));

  @override
  _PropertyUnitDTO get _value => super._value as _PropertyUnitDTO;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object thumbnail = freezed,
    Object used = freezed,
    Object unitType = freezed,
    Object numberOfUnits = freezed,
    Object images = freezed,
    Object live = freezed,
    Object analytics = freezed,
    Object details = freezed,
    Object features = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object bookings = freezed,
  }) {
    return _then(_PropertyUnitDTO(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      thumbnail: thumbnail == freezed ? _value.thumbnail : thumbnail as String,
      used: used == freezed ? _value.used : used as bool,
      unitType: unitType == freezed ? _value.unitType : unitType as String,
      numberOfUnits: numberOfUnits == freezed
          ? _value.numberOfUnits
          : numberOfUnits as int,
      images: images == freezed ? _value.images : images as List<String>,
      live: live == freezed ? _value.live : live as bool,
      analytics: analytics == freezed
          ? _value.analytics
          : analytics as List<AnalyticsDTO>,
      details: details == freezed
          ? _value.details
          : details as PropertyUnitDetailDTO,
      features:
          features == freezed ? _value.features : features as List<String>,
      lat: lat == freezed ? _value.lat : lat as double,
      long: long == freezed ? _value.long : long as double,
      bookings:
          bookings == freezed ? _value.bookings : bookings as List<BookingDTO>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PropertyUnitDTO extends _PropertyUnitDTO {
  const _$_PropertyUnitDTO(
      {@JsonKey(ignore: true) this.id,
      this.name,
      this.description,
      this.thumbnail,
      this.used,
      this.unitType,
      this.numberOfUnits,
      this.images,
      this.live,
      this.analytics,
      this.details,
      this.features,
      this.lat,
      this.long,
      this.bookings})
      : super._();

  factory _$_PropertyUnitDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PropertyUnitDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String thumbnail;
  @override
  final bool used;
  @override
  final String unitType;
  @override // Prevent duplicates
  final int numberOfUnits;
  @override
  final List<String> images;
  @override
  final bool live;
  @override
  final List<AnalyticsDTO> analytics;
  @override
  final PropertyUnitDetailDTO details;
  @override
  final List<String> features;
  @override
  final double lat;
  @override
  final double long;
  @override
  final List<BookingDTO> bookings;

  @override
  String toString() {
    return 'PropertyUnitDTO(id: $id, name: $name, description: $description, thumbnail: $thumbnail, used: $used, unitType: $unitType, numberOfUnits: $numberOfUnits, images: $images, live: $live, analytics: $analytics, details: $details, features: $features, lat: $lat, long: $long, bookings: $bookings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertyUnitDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.used, used) ||
                const DeepCollectionEquality().equals(other.used, used)) &&
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
            (identical(other.analytics, analytics) ||
                const DeepCollectionEquality()
                    .equals(other.analytics, analytics)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.features, features) ||
                const DeepCollectionEquality()
                    .equals(other.features, features)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)) &&
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
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(used) ^
      const DeepCollectionEquality().hash(unitType) ^
      const DeepCollectionEquality().hash(numberOfUnits) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(live) ^
      const DeepCollectionEquality().hash(analytics) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(features) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      const DeepCollectionEquality().hash(bookings);

  @JsonKey(ignore: true)
  @override
  _$PropertyUnitDTOCopyWith<_PropertyUnitDTO> get copyWith =>
      __$PropertyUnitDTOCopyWithImpl<_PropertyUnitDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PropertyUnitDTOToJson(this);
  }
}

abstract class _PropertyUnitDTO extends PropertyUnitDTO {
  const _PropertyUnitDTO._() : super._();
  const factory _PropertyUnitDTO(
      {@JsonKey(ignore: true) String id,
      String name,
      String description,
      String thumbnail,
      bool used,
      String unitType,
      int numberOfUnits,
      List<String> images,
      bool live,
      List<AnalyticsDTO> analytics,
      PropertyUnitDetailDTO details,
      List<String> features,
      double lat,
      double long,
      List<BookingDTO> bookings}) = _$_PropertyUnitDTO;

  factory _PropertyUnitDTO.fromJson(Map<String, dynamic> json) =
      _$_PropertyUnitDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get thumbnail;
  @override
  bool get used;
  @override
  String get unitType;
  @override // Prevent duplicates
  int get numberOfUnits;
  @override
  List<String> get images;
  @override
  bool get live;
  @override
  List<AnalyticsDTO> get analytics;
  @override
  PropertyUnitDetailDTO get details;
  @override
  List<String> get features;
  @override
  double get lat;
  @override
  double get long;
  @override
  List<BookingDTO> get bookings;
  @override
  @JsonKey(ignore: true)
  _$PropertyUnitDTOCopyWith<_PropertyUnitDTO> get copyWith;
}
