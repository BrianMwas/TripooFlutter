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
      PropertyName name,
      PropertyDescription description,
      String imageURL,
      DateTime completionDate,
      bool hidden,
      String creator,
      bool live,
      GeoPoint location,
      DateTime createdAt}) {
    return _Property(
      id: id,
      name: name,
      description: description,
      imageURL: imageURL,
      completionDate: completionDate,
      hidden: hidden,
      creator: creator,
      live: live,
      location: location,
      createdAt: createdAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Property = _$PropertyTearOff();

/// @nodoc
mixin _$Property {
  String get id;
  PropertyName get name;
  PropertyDescription get description;
  String get imageURL;
  DateTime get completionDate;
  bool get hidden;
  String get creator;
  bool get live;
  GeoPoint get location;
  DateTime get createdAt;

  @JsonKey(ignore: true)
  $PropertyCopyWith<Property> get copyWith;
}

/// @nodoc
abstract class $PropertyCopyWith<$Res> {
  factory $PropertyCopyWith(Property value, $Res Function(Property) then) =
      _$PropertyCopyWithImpl<$Res>;
  $Res call(
      {String id,
      PropertyName name,
      PropertyDescription description,
      String imageURL,
      DateTime completionDate,
      bool hidden,
      String creator,
      bool live,
      GeoPoint location,
      DateTime createdAt});
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
    Object imageURL = freezed,
    Object completionDate = freezed,
    Object hidden = freezed,
    Object creator = freezed,
    Object live = freezed,
    Object location = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as PropertyName,
      description: description == freezed
          ? _value.description
          : description as PropertyDescription,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      completionDate: completionDate == freezed
          ? _value.completionDate
          : completionDate as DateTime,
      hidden: hidden == freezed ? _value.hidden : hidden as bool,
      creator: creator == freezed ? _value.creator : creator as String,
      live: live == freezed ? _value.live : live as bool,
      location: location == freezed ? _value.location : location as GeoPoint,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
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
      PropertyName name,
      PropertyDescription description,
      String imageURL,
      DateTime completionDate,
      bool hidden,
      String creator,
      bool live,
      GeoPoint location,
      DateTime createdAt});
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
    Object imageURL = freezed,
    Object completionDate = freezed,
    Object hidden = freezed,
    Object creator = freezed,
    Object live = freezed,
    Object location = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_Property(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as PropertyName,
      description: description == freezed
          ? _value.description
          : description as PropertyDescription,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      completionDate: completionDate == freezed
          ? _value.completionDate
          : completionDate as DateTime,
      hidden: hidden == freezed ? _value.hidden : hidden as bool,
      creator: creator == freezed ? _value.creator : creator as String,
      live: live == freezed ? _value.live : live as bool,
      location: location == freezed ? _value.location : location as GeoPoint,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }
}

/// @nodoc
class _$_Property extends _Property {
  const _$_Property(
      {this.id,
      this.name,
      this.description,
      this.imageURL,
      this.completionDate,
      this.hidden,
      this.creator,
      this.live,
      this.location,
      this.createdAt})
      : super._();

  @override
  final String id;
  @override
  final PropertyName name;
  @override
  final PropertyDescription description;
  @override
  final String imageURL;
  @override
  final DateTime completionDate;
  @override
  final bool hidden;
  @override
  final String creator;
  @override
  final bool live;
  @override
  final GeoPoint location;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Property(id: $id, name: $name, description: $description, imageURL: $imageURL, completionDate: $completionDate, hidden: $hidden, creator: $creator, live: $live, location: $location, createdAt: $createdAt)';
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
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.completionDate, completionDate) ||
                const DeepCollectionEquality()
                    .equals(other.completionDate, completionDate)) &&
            (identical(other.hidden, hidden) ||
                const DeepCollectionEquality().equals(other.hidden, hidden)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.live, live) ||
                const DeepCollectionEquality().equals(other.live, live)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
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
      const DeepCollectionEquality().hash(completionDate) ^
      const DeepCollectionEquality().hash(hidden) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(live) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$PropertyCopyWith<_Property> get copyWith =>
      __$PropertyCopyWithImpl<_Property>(this, _$identity);
}

abstract class _Property extends Property {
  const _Property._() : super._();
  const factory _Property(
      {String id,
      PropertyName name,
      PropertyDescription description,
      String imageURL,
      DateTime completionDate,
      bool hidden,
      String creator,
      bool live,
      GeoPoint location,
      DateTime createdAt}) = _$_Property;

  @override
  String get id;
  @override
  PropertyName get name;
  @override
  PropertyDescription get description;
  @override
  String get imageURL;
  @override
  DateTime get completionDate;
  @override
  bool get hidden;
  @override
  String get creator;
  @override
  bool get live;
  @override
  GeoPoint get location;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$PropertyCopyWith<_Property> get copyWith;
}
