// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'property.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PropertyDTO _$PropertyDTOFromJson(Map<String, dynamic> json) {
  return _PropertyDTO.fromJson(json);
}

/// @nodoc
class _$PropertyDTOTearOff {
  const _$PropertyDTOTearOff();

// ignore: unused_element
  _PropertyDTO call(
      {String id,
      String name,
      String description,
      List<PropertyUnitDTO> units,
      String imageURL,
      List<AnalyticsDTO> analytics,
      List<PropertyAgentDTO> agents,
      double lat,
      double long,
      DateTime createdAt}) {
    return _PropertyDTO(
      id: id,
      name: name,
      description: description,
      units: units,
      imageURL: imageURL,
      analytics: analytics,
      agents: agents,
      lat: lat,
      long: long,
      createdAt: createdAt,
    );
  }

// ignore: unused_element
  PropertyDTO fromJson(Map<String, Object> json) {
    return PropertyDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyDTO = _$PropertyDTOTearOff();

/// @nodoc
mixin _$PropertyDTO {
  String get id;
  String get name;
  String get description;
  List<PropertyUnitDTO> get units;
  String get imageURL;
  List<AnalyticsDTO> get analytics;
  List<PropertyAgentDTO> get agents;
  double get lat;
  double get long;
  DateTime get createdAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PropertyDTOCopyWith<PropertyDTO> get copyWith;
}

/// @nodoc
abstract class $PropertyDTOCopyWith<$Res> {
  factory $PropertyDTOCopyWith(
          PropertyDTO value, $Res Function(PropertyDTO) then) =
      _$PropertyDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      List<PropertyUnitDTO> units,
      String imageURL,
      List<AnalyticsDTO> analytics,
      List<PropertyAgentDTO> agents,
      double lat,
      double long,
      DateTime createdAt});
}

/// @nodoc
class _$PropertyDTOCopyWithImpl<$Res> implements $PropertyDTOCopyWith<$Res> {
  _$PropertyDTOCopyWithImpl(this._value, this._then);

  final PropertyDTO _value;
  // ignore: unused_field
  final $Res Function(PropertyDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object units = freezed,
    Object imageURL = freezed,
    Object analytics = freezed,
    Object agents = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      units: units == freezed ? _value.units : units as List<PropertyUnitDTO>,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      analytics: analytics == freezed
          ? _value.analytics
          : analytics as List<AnalyticsDTO>,
      agents:
          agents == freezed ? _value.agents : agents as List<PropertyAgentDTO>,
      lat: lat == freezed ? _value.lat : lat as double,
      long: long == freezed ? _value.long : long as double,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$PropertyDTOCopyWith<$Res>
    implements $PropertyDTOCopyWith<$Res> {
  factory _$PropertyDTOCopyWith(
          _PropertyDTO value, $Res Function(_PropertyDTO) then) =
      __$PropertyDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String description,
      List<PropertyUnitDTO> units,
      String imageURL,
      List<AnalyticsDTO> analytics,
      List<PropertyAgentDTO> agents,
      double lat,
      double long,
      DateTime createdAt});
}

/// @nodoc
class __$PropertyDTOCopyWithImpl<$Res> extends _$PropertyDTOCopyWithImpl<$Res>
    implements _$PropertyDTOCopyWith<$Res> {
  __$PropertyDTOCopyWithImpl(
      _PropertyDTO _value, $Res Function(_PropertyDTO) _then)
      : super(_value, (v) => _then(v as _PropertyDTO));

  @override
  _PropertyDTO get _value => super._value as _PropertyDTO;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object units = freezed,
    Object imageURL = freezed,
    Object analytics = freezed,
    Object agents = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_PropertyDTO(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      units: units == freezed ? _value.units : units as List<PropertyUnitDTO>,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      analytics: analytics == freezed
          ? _value.analytics
          : analytics as List<AnalyticsDTO>,
      agents:
          agents == freezed ? _value.agents : agents as List<PropertyAgentDTO>,
      lat: lat == freezed ? _value.lat : lat as double,
      long: long == freezed ? _value.long : long as double,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PropertyDTO extends _PropertyDTO {
  const _$_PropertyDTO(
      {this.id,
      this.name,
      this.description,
      this.units,
      this.imageURL,
      this.analytics,
      this.agents,
      this.lat,
      this.long,
      this.createdAt})
      : super._();

  factory _$_PropertyDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PropertyDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final List<PropertyUnitDTO> units;
  @override
  final String imageURL;
  @override
  final List<AnalyticsDTO> analytics;
  @override
  final List<PropertyAgentDTO> agents;
  @override
  final double lat;
  @override
  final double long;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PropertyDTO(id: $id, name: $name, description: $description, units: $units, imageURL: $imageURL, analytics: $analytics, agents: $agents, lat: $lat, long: $long, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertyDTO &&
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
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
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
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$PropertyDTOCopyWith<_PropertyDTO> get copyWith =>
      __$PropertyDTOCopyWithImpl<_PropertyDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PropertyDTOToJson(this);
  }
}

abstract class _PropertyDTO extends PropertyDTO {
  const _PropertyDTO._() : super._();
  const factory _PropertyDTO(
      {String id,
      String name,
      String description,
      List<PropertyUnitDTO> units,
      String imageURL,
      List<AnalyticsDTO> analytics,
      List<PropertyAgentDTO> agents,
      double lat,
      double long,
      DateTime createdAt}) = _$_PropertyDTO;

  factory _PropertyDTO.fromJson(Map<String, dynamic> json) =
      _$_PropertyDTO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  List<PropertyUnitDTO> get units;
  @override
  String get imageURL;
  @override
  List<AnalyticsDTO> get analytics;
  @override
  List<PropertyAgentDTO> get agents;
  @override
  double get lat;
  @override
  double get long;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$PropertyDTOCopyWith<_PropertyDTO> get copyWith;
}
