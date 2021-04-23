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
      String imageURL,
      bool live = true,
      @GeoPointConverter() GeoPoint location,
      String creator,
      DateTime completedAt,
      DateTime createdAt}) {
    return _PropertyDTO(
      id: id,
      name: name,
      description: description,
      imageURL: imageURL,
      live: live,
      location: location,
      creator: creator,
      completedAt: completedAt,
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
  String get imageURL;
  bool get live;
  @GeoPointConverter()
  GeoPoint get location;
  String get creator;
  DateTime get completedAt;
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
      String imageURL,
      bool live,
      @GeoPointConverter() GeoPoint location,
      String creator,
      DateTime completedAt,
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
    Object imageURL = freezed,
    Object live = freezed,
    Object location = freezed,
    Object creator = freezed,
    Object completedAt = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      live: live == freezed ? _value.live : live as bool,
      location: location == freezed ? _value.location : location as GeoPoint,
      creator: creator == freezed ? _value.creator : creator as String,
      completedAt:
          completedAt == freezed ? _value.completedAt : completedAt as DateTime,
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
      String imageURL,
      bool live,
      @GeoPointConverter() GeoPoint location,
      String creator,
      DateTime completedAt,
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
    Object imageURL = freezed,
    Object live = freezed,
    Object location = freezed,
    Object creator = freezed,
    Object completedAt = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_PropertyDTO(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      live: live == freezed ? _value.live : live as bool,
      location: location == freezed ? _value.location : location as GeoPoint,
      creator: creator == freezed ? _value.creator : creator as String,
      completedAt:
          completedAt == freezed ? _value.completedAt : completedAt as DateTime,
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
      this.imageURL,
      this.live = true,
      @GeoPointConverter() this.location,
      this.creator,
      this.completedAt,
      this.createdAt})
      : assert(live != null),
        super._();

  factory _$_PropertyDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PropertyDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageURL;
  @JsonKey(defaultValue: true)
  @override
  final bool live;
  @override
  @GeoPointConverter()
  final GeoPoint location;
  @override
  final String creator;
  @override
  final DateTime completedAt;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PropertyDTO(id: $id, name: $name, description: $description, imageURL: $imageURL, live: $live, location: $location, creator: $creator, completedAt: $completedAt, createdAt: $createdAt)';
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
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.live, live) ||
                const DeepCollectionEquality().equals(other.live, live)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.completedAt, completedAt) ||
                const DeepCollectionEquality()
                    .equals(other.completedAt, completedAt)) &&
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
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(live) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(completedAt) ^
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
      String imageURL,
      bool live,
      @GeoPointConverter() GeoPoint location,
      String creator,
      DateTime completedAt,
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
  String get imageURL;
  @override
  bool get live;
  @override
  @GeoPointConverter()
  GeoPoint get location;
  @override
  String get creator;
  @override
  DateTime get completedAt;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$PropertyDTOCopyWith<_PropertyDTO> get copyWith;
}
