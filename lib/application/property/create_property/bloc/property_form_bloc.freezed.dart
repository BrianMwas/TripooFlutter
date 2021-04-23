// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'property_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PropertyFormEventTearOff {
  const _$PropertyFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Property> initialProperty) {
    return _Initialized(
      initialProperty,
    );
  }

// ignore: unused_element
  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

// ignore: unused_element
  _DescriptionEvent descriptionChanged(String description) {
    return _DescriptionEvent(
      description,
    );
  }

// ignore: unused_element
  _DateChanged dateChanged(DateTime date) {
    return _DateChanged(
      date,
    );
  }

// ignore: unused_element
  _LiveStatusChanged liveStatusChanged() {
    return const _LiveStatusChanged();
  }

// ignore: unused_element
  _ImageChanged imageChanged(String image) {
    return _ImageChanged(
      image,
    );
  }

// ignore: unused_element
  _LocationChanged locationChanged(GeoPoint location) {
    return _LocationChanged(
      location,
    );
  }

// ignore: unused_element
  _SaveBtnPressed save() {
    return const _SaveBtnPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyFormEvent = _$PropertyFormEventTearOff();

/// @nodoc
mixin _$PropertyFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Property> initialProperty),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult liveStatusChanged(),
    @required TResult imageChanged(String image),
    @required TResult locationChanged(GeoPoint location),
    @required TResult save(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Property> initialProperty),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult liveStatusChanged(),
    TResult imageChanged(String image),
    TResult locationChanged(GeoPoint location),
    TResult save(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionEvent value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult liveStatusChanged(_LiveStatusChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult save(_SaveBtnPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionEvent value),
    TResult dateChanged(_DateChanged value),
    TResult liveStatusChanged(_LiveStatusChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult save(_SaveBtnPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PropertyFormEventCopyWith<$Res> {
  factory $PropertyFormEventCopyWith(
          PropertyFormEvent value, $Res Function(PropertyFormEvent) then) =
      _$PropertyFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PropertyFormEventCopyWithImpl<$Res>
    implements $PropertyFormEventCopyWith<$Res> {
  _$PropertyFormEventCopyWithImpl(this._value, this._then);

  final PropertyFormEvent _value;
  // ignore: unused_field
  final $Res Function(PropertyFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Property> initialProperty});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$PropertyFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialProperty = freezed,
  }) {
    return _then(_Initialized(
      initialProperty == freezed
          ? _value.initialProperty
          : initialProperty as Option<Property>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialProperty) : assert(initialProperty != null);

  @override
  final Option<Property> initialProperty;

  @override
  String toString() {
    return 'PropertyFormEvent.initialized(initialProperty: $initialProperty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialProperty, initialProperty) ||
                const DeepCollectionEquality()
                    .equals(other.initialProperty, initialProperty)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialProperty);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Property> initialProperty),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult liveStatusChanged(),
    @required TResult imageChanged(String image),
    @required TResult locationChanged(GeoPoint location),
    @required TResult save(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return initialized(initialProperty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Property> initialProperty),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult liveStatusChanged(),
    TResult imageChanged(String image),
    TResult locationChanged(GeoPoint location),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialProperty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionEvent value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult liveStatusChanged(_LiveStatusChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult save(_SaveBtnPressed value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionEvent value),
    TResult dateChanged(_DateChanged value),
    TResult liveStatusChanged(_LiveStatusChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult save(_SaveBtnPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PropertyFormEvent {
  const factory _Initialized(Option<Property> initialProperty) = _$_Initialized;

  Option<Property> get initialProperty;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$PropertyFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'PropertyFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Property> initialProperty),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult liveStatusChanged(),
    @required TResult imageChanged(String image),
    @required TResult locationChanged(GeoPoint location),
    @required TResult save(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Property> initialProperty),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult liveStatusChanged(),
    TResult imageChanged(String image),
    TResult locationChanged(GeoPoint location),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionEvent value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult liveStatusChanged(_LiveStatusChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult save(_SaveBtnPressed value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionEvent value),
    TResult dateChanged(_DateChanged value),
    TResult liveStatusChanged(_LiveStatusChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult save(_SaveBtnPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements PropertyFormEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

/// @nodoc
abstract class _$DescriptionEventCopyWith<$Res> {
  factory _$DescriptionEventCopyWith(
          _DescriptionEvent value, $Res Function(_DescriptionEvent) then) =
      __$DescriptionEventCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$DescriptionEventCopyWithImpl<$Res>
    extends _$PropertyFormEventCopyWithImpl<$Res>
    implements _$DescriptionEventCopyWith<$Res> {
  __$DescriptionEventCopyWithImpl(
      _DescriptionEvent _value, $Res Function(_DescriptionEvent) _then)
      : super(_value, (v) => _then(v as _DescriptionEvent));

  @override
  _DescriptionEvent get _value => super._value as _DescriptionEvent;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_DescriptionEvent(
      description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$_DescriptionEvent implements _DescriptionEvent {
  const _$_DescriptionEvent(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString() {
    return 'PropertyFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionEvent &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$DescriptionEventCopyWith<_DescriptionEvent> get copyWith =>
      __$DescriptionEventCopyWithImpl<_DescriptionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Property> initialProperty),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult liveStatusChanged(),
    @required TResult imageChanged(String image),
    @required TResult locationChanged(GeoPoint location),
    @required TResult save(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Property> initialProperty),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult liveStatusChanged(),
    TResult imageChanged(String image),
    TResult locationChanged(GeoPoint location),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionEvent value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult liveStatusChanged(_LiveStatusChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult save(_SaveBtnPressed value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionEvent value),
    TResult dateChanged(_DateChanged value),
    TResult liveStatusChanged(_LiveStatusChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult save(_SaveBtnPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionEvent implements PropertyFormEvent {
  const factory _DescriptionEvent(String description) = _$_DescriptionEvent;

  String get description;
  @JsonKey(ignore: true)
  _$DescriptionEventCopyWith<_DescriptionEvent> get copyWith;
}

/// @nodoc
abstract class _$DateChangedCopyWith<$Res> {
  factory _$DateChangedCopyWith(
          _DateChanged value, $Res Function(_DateChanged) then) =
      __$DateChangedCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class __$DateChangedCopyWithImpl<$Res>
    extends _$PropertyFormEventCopyWithImpl<$Res>
    implements _$DateChangedCopyWith<$Res> {
  __$DateChangedCopyWithImpl(
      _DateChanged _value, $Res Function(_DateChanged) _then)
      : super(_value, (v) => _then(v as _DateChanged));

  @override
  _DateChanged get _value => super._value as _DateChanged;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(_DateChanged(
      date == freezed ? _value.date : date as DateTime,
    ));
  }
}

/// @nodoc
class _$_DateChanged implements _DateChanged {
  const _$_DateChanged(this.date) : assert(date != null);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'PropertyFormEvent.dateChanged(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateChanged &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$DateChangedCopyWith<_DateChanged> get copyWith =>
      __$DateChangedCopyWithImpl<_DateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Property> initialProperty),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult liveStatusChanged(),
    @required TResult imageChanged(String image),
    @required TResult locationChanged(GeoPoint location),
    @required TResult save(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return dateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Property> initialProperty),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult liveStatusChanged(),
    TResult imageChanged(String image),
    TResult locationChanged(GeoPoint location),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateChanged != null) {
      return dateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionEvent value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult liveStatusChanged(_LiveStatusChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult save(_SaveBtnPressed value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionEvent value),
    TResult dateChanged(_DateChanged value),
    TResult liveStatusChanged(_LiveStatusChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult save(_SaveBtnPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements PropertyFormEvent {
  const factory _DateChanged(DateTime date) = _$_DateChanged;

  DateTime get date;
  @JsonKey(ignore: true)
  _$DateChangedCopyWith<_DateChanged> get copyWith;
}

/// @nodoc
abstract class _$LiveStatusChangedCopyWith<$Res> {
  factory _$LiveStatusChangedCopyWith(
          _LiveStatusChanged value, $Res Function(_LiveStatusChanged) then) =
      __$LiveStatusChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LiveStatusChangedCopyWithImpl<$Res>
    extends _$PropertyFormEventCopyWithImpl<$Res>
    implements _$LiveStatusChangedCopyWith<$Res> {
  __$LiveStatusChangedCopyWithImpl(
      _LiveStatusChanged _value, $Res Function(_LiveStatusChanged) _then)
      : super(_value, (v) => _then(v as _LiveStatusChanged));

  @override
  _LiveStatusChanged get _value => super._value as _LiveStatusChanged;
}

/// @nodoc
class _$_LiveStatusChanged implements _LiveStatusChanged {
  const _$_LiveStatusChanged();

  @override
  String toString() {
    return 'PropertyFormEvent.liveStatusChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LiveStatusChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Property> initialProperty),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult liveStatusChanged(),
    @required TResult imageChanged(String image),
    @required TResult locationChanged(GeoPoint location),
    @required TResult save(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return liveStatusChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Property> initialProperty),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult liveStatusChanged(),
    TResult imageChanged(String image),
    TResult locationChanged(GeoPoint location),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (liveStatusChanged != null) {
      return liveStatusChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionEvent value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult liveStatusChanged(_LiveStatusChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult save(_SaveBtnPressed value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return liveStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionEvent value),
    TResult dateChanged(_DateChanged value),
    TResult liveStatusChanged(_LiveStatusChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult save(_SaveBtnPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (liveStatusChanged != null) {
      return liveStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _LiveStatusChanged implements PropertyFormEvent {
  const factory _LiveStatusChanged() = _$_LiveStatusChanged;
}

/// @nodoc
abstract class _$ImageChangedCopyWith<$Res> {
  factory _$ImageChangedCopyWith(
          _ImageChanged value, $Res Function(_ImageChanged) then) =
      __$ImageChangedCopyWithImpl<$Res>;
  $Res call({String image});
}

/// @nodoc
class __$ImageChangedCopyWithImpl<$Res>
    extends _$PropertyFormEventCopyWithImpl<$Res>
    implements _$ImageChangedCopyWith<$Res> {
  __$ImageChangedCopyWithImpl(
      _ImageChanged _value, $Res Function(_ImageChanged) _then)
      : super(_value, (v) => _then(v as _ImageChanged));

  @override
  _ImageChanged get _value => super._value as _ImageChanged;

  @override
  $Res call({
    Object image = freezed,
  }) {
    return _then(_ImageChanged(
      image == freezed ? _value.image : image as String,
    ));
  }
}

/// @nodoc
class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.image) : assert(image != null);

  @override
  final String image;

  @override
  String toString() {
    return 'PropertyFormEvent.imageChanged(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageChanged &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
      __$ImageChangedCopyWithImpl<_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Property> initialProperty),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult liveStatusChanged(),
    @required TResult imageChanged(String image),
    @required TResult locationChanged(GeoPoint location),
    @required TResult save(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return imageChanged(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Property> initialProperty),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult liveStatusChanged(),
    TResult imageChanged(String image),
    TResult locationChanged(GeoPoint location),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionEvent value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult liveStatusChanged(_LiveStatusChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult save(_SaveBtnPressed value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionEvent value),
    TResult dateChanged(_DateChanged value),
    TResult liveStatusChanged(_LiveStatusChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult save(_SaveBtnPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements PropertyFormEvent {
  const factory _ImageChanged(String image) = _$_ImageChanged;

  String get image;
  @JsonKey(ignore: true)
  _$ImageChangedCopyWith<_ImageChanged> get copyWith;
}

/// @nodoc
abstract class _$LocationChangedCopyWith<$Res> {
  factory _$LocationChangedCopyWith(
          _LocationChanged value, $Res Function(_LocationChanged) then) =
      __$LocationChangedCopyWithImpl<$Res>;
  $Res call({GeoPoint location});
}

/// @nodoc
class __$LocationChangedCopyWithImpl<$Res>
    extends _$PropertyFormEventCopyWithImpl<$Res>
    implements _$LocationChangedCopyWith<$Res> {
  __$LocationChangedCopyWithImpl(
      _LocationChanged _value, $Res Function(_LocationChanged) _then)
      : super(_value, (v) => _then(v as _LocationChanged));

  @override
  _LocationChanged get _value => super._value as _LocationChanged;

  @override
  $Res call({
    Object location = freezed,
  }) {
    return _then(_LocationChanged(
      location == freezed ? _value.location : location as GeoPoint,
    ));
  }
}

/// @nodoc
class _$_LocationChanged implements _LocationChanged {
  const _$_LocationChanged(this.location) : assert(location != null);

  @override
  final GeoPoint location;

  @override
  String toString() {
    return 'PropertyFormEvent.locationChanged(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationChanged &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$LocationChangedCopyWith<_LocationChanged> get copyWith =>
      __$LocationChangedCopyWithImpl<_LocationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Property> initialProperty),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult liveStatusChanged(),
    @required TResult imageChanged(String image),
    @required TResult locationChanged(GeoPoint location),
    @required TResult save(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return locationChanged(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Property> initialProperty),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult liveStatusChanged(),
    TResult imageChanged(String image),
    TResult locationChanged(GeoPoint location),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (locationChanged != null) {
      return locationChanged(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionEvent value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult liveStatusChanged(_LiveStatusChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult save(_SaveBtnPressed value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionEvent value),
    TResult dateChanged(_DateChanged value),
    TResult liveStatusChanged(_LiveStatusChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult save(_SaveBtnPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class _LocationChanged implements PropertyFormEvent {
  const factory _LocationChanged(GeoPoint location) = _$_LocationChanged;

  GeoPoint get location;
  @JsonKey(ignore: true)
  _$LocationChangedCopyWith<_LocationChanged> get copyWith;
}

/// @nodoc
abstract class _$SaveBtnPressedCopyWith<$Res> {
  factory _$SaveBtnPressedCopyWith(
          _SaveBtnPressed value, $Res Function(_SaveBtnPressed) then) =
      __$SaveBtnPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveBtnPressedCopyWithImpl<$Res>
    extends _$PropertyFormEventCopyWithImpl<$Res>
    implements _$SaveBtnPressedCopyWith<$Res> {
  __$SaveBtnPressedCopyWithImpl(
      _SaveBtnPressed _value, $Res Function(_SaveBtnPressed) _then)
      : super(_value, (v) => _then(v as _SaveBtnPressed));

  @override
  _SaveBtnPressed get _value => super._value as _SaveBtnPressed;
}

/// @nodoc
class _$_SaveBtnPressed implements _SaveBtnPressed {
  const _$_SaveBtnPressed();

  @override
  String toString() {
    return 'PropertyFormEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SaveBtnPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Property> initialProperty),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult liveStatusChanged(),
    @required TResult imageChanged(String image),
    @required TResult locationChanged(GeoPoint location),
    @required TResult save(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Property> initialProperty),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult liveStatusChanged(),
    TResult imageChanged(String image),
    TResult locationChanged(GeoPoint location),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionEvent value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult liveStatusChanged(_LiveStatusChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult save(_SaveBtnPressed value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(liveStatusChanged != null);
    assert(imageChanged != null);
    assert(locationChanged != null);
    assert(save != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionEvent value),
    TResult dateChanged(_DateChanged value),
    TResult liveStatusChanged(_LiveStatusChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult save(_SaveBtnPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _SaveBtnPressed implements PropertyFormEvent {
  const factory _SaveBtnPressed() = _$_SaveBtnPressed;
}

/// @nodoc
class _$PropertyFormStateTearOff {
  const _$PropertyFormStateTearOff();

// ignore: unused_element
  _PropertyFormState call(
      {@required
          Property property,
      @required
          bool showErrors,
      @required
          bool hasLocation,
      @required
          bool isSaving,
      @required
          bool isEditing,
      @required
          Option<Either<PropertyFailure, Unit>>
              propertyFailureOrSuccessOption}) {
    return _PropertyFormState(
      property: property,
      showErrors: showErrors,
      hasLocation: hasLocation,
      isSaving: isSaving,
      isEditing: isEditing,
      propertyFailureOrSuccessOption: propertyFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyFormState = _$PropertyFormStateTearOff();

/// @nodoc
mixin _$PropertyFormState {
  Property get property;
  bool get showErrors;
  bool get hasLocation;
  bool get isSaving;
  bool get isEditing;
  Option<Either<PropertyFailure, Unit>> get propertyFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $PropertyFormStateCopyWith<PropertyFormState> get copyWith;
}

/// @nodoc
abstract class $PropertyFormStateCopyWith<$Res> {
  factory $PropertyFormStateCopyWith(
          PropertyFormState value, $Res Function(PropertyFormState) then) =
      _$PropertyFormStateCopyWithImpl<$Res>;
  $Res call(
      {Property property,
      bool showErrors,
      bool hasLocation,
      bool isSaving,
      bool isEditing,
      Option<Either<PropertyFailure, Unit>> propertyFailureOrSuccessOption});

  $PropertyCopyWith<$Res> get property;
}

/// @nodoc
class _$PropertyFormStateCopyWithImpl<$Res>
    implements $PropertyFormStateCopyWith<$Res> {
  _$PropertyFormStateCopyWithImpl(this._value, this._then);

  final PropertyFormState _value;
  // ignore: unused_field
  final $Res Function(PropertyFormState) _then;

  @override
  $Res call({
    Object property = freezed,
    Object showErrors = freezed,
    Object hasLocation = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object propertyFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      property: property == freezed ? _value.property : property as Property,
      showErrors:
          showErrors == freezed ? _value.showErrors : showErrors as bool,
      hasLocation:
          hasLocation == freezed ? _value.hasLocation : hasLocation as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      propertyFailureOrSuccessOption: propertyFailureOrSuccessOption == freezed
          ? _value.propertyFailureOrSuccessOption
          : propertyFailureOrSuccessOption
              as Option<Either<PropertyFailure, Unit>>,
    ));
  }

  @override
  $PropertyCopyWith<$Res> get property {
    if (_value.property == null) {
      return null;
    }
    return $PropertyCopyWith<$Res>(_value.property, (value) {
      return _then(_value.copyWith(property: value));
    });
  }
}

/// @nodoc
abstract class _$PropertyFormStateCopyWith<$Res>
    implements $PropertyFormStateCopyWith<$Res> {
  factory _$PropertyFormStateCopyWith(
          _PropertyFormState value, $Res Function(_PropertyFormState) then) =
      __$PropertyFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Property property,
      bool showErrors,
      bool hasLocation,
      bool isSaving,
      bool isEditing,
      Option<Either<PropertyFailure, Unit>> propertyFailureOrSuccessOption});

  @override
  $PropertyCopyWith<$Res> get property;
}

/// @nodoc
class __$PropertyFormStateCopyWithImpl<$Res>
    extends _$PropertyFormStateCopyWithImpl<$Res>
    implements _$PropertyFormStateCopyWith<$Res> {
  __$PropertyFormStateCopyWithImpl(
      _PropertyFormState _value, $Res Function(_PropertyFormState) _then)
      : super(_value, (v) => _then(v as _PropertyFormState));

  @override
  _PropertyFormState get _value => super._value as _PropertyFormState;

  @override
  $Res call({
    Object property = freezed,
    Object showErrors = freezed,
    Object hasLocation = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object propertyFailureOrSuccessOption = freezed,
  }) {
    return _then(_PropertyFormState(
      property: property == freezed ? _value.property : property as Property,
      showErrors:
          showErrors == freezed ? _value.showErrors : showErrors as bool,
      hasLocation:
          hasLocation == freezed ? _value.hasLocation : hasLocation as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      propertyFailureOrSuccessOption: propertyFailureOrSuccessOption == freezed
          ? _value.propertyFailureOrSuccessOption
          : propertyFailureOrSuccessOption
              as Option<Either<PropertyFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_PropertyFormState implements _PropertyFormState {
  const _$_PropertyFormState(
      {@required this.property,
      @required this.showErrors,
      @required this.hasLocation,
      @required this.isSaving,
      @required this.isEditing,
      @required this.propertyFailureOrSuccessOption})
      : assert(property != null),
        assert(showErrors != null),
        assert(hasLocation != null),
        assert(isSaving != null),
        assert(isEditing != null),
        assert(propertyFailureOrSuccessOption != null);

  @override
  final Property property;
  @override
  final bool showErrors;
  @override
  final bool hasLocation;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final Option<Either<PropertyFailure, Unit>> propertyFailureOrSuccessOption;

  @override
  String toString() {
    return 'PropertyFormState(property: $property, showErrors: $showErrors, hasLocation: $hasLocation, isSaving: $isSaving, isEditing: $isEditing, propertyFailureOrSuccessOption: $propertyFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertyFormState &&
            (identical(other.property, property) ||
                const DeepCollectionEquality()
                    .equals(other.property, property)) &&
            (identical(other.showErrors, showErrors) ||
                const DeepCollectionEquality()
                    .equals(other.showErrors, showErrors)) &&
            (identical(other.hasLocation, hasLocation) ||
                const DeepCollectionEquality()
                    .equals(other.hasLocation, hasLocation)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.propertyFailureOrSuccessOption,
                    propertyFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.propertyFailureOrSuccessOption,
                    propertyFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(property) ^
      const DeepCollectionEquality().hash(showErrors) ^
      const DeepCollectionEquality().hash(hasLocation) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(propertyFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$PropertyFormStateCopyWith<_PropertyFormState> get copyWith =>
      __$PropertyFormStateCopyWithImpl<_PropertyFormState>(this, _$identity);
}

abstract class _PropertyFormState implements PropertyFormState {
  const factory _PropertyFormState(
      {@required
          Property property,
      @required
          bool showErrors,
      @required
          bool hasLocation,
      @required
          bool isSaving,
      @required
          bool isEditing,
      @required
          Option<Either<PropertyFailure, Unit>>
              propertyFailureOrSuccessOption}) = _$_PropertyFormState;

  @override
  Property get property;
  @override
  bool get showErrors;
  @override
  bool get hasLocation;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  Option<Either<PropertyFailure, Unit>> get propertyFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$PropertyFormStateCopyWith<_PropertyFormState> get copyWith;
}
