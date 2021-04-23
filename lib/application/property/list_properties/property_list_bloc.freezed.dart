// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'property_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PropertyListEventTearOff {
  const _$PropertyListEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllOpen() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _PropertiesReceived propertiesReceived(
      Either<PropertyFailure, List<Property>> failureOrProperties) {
    return _PropertiesReceived(
      failureOrProperties,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyListEvent = _$PropertyListEventTearOff();

/// @nodoc
mixin _$PropertyListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllOpen(),
    @required
        TResult propertiesReceived(
            Either<PropertyFailure, List<Property>> failureOrProperties),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllOpen(),
    TResult propertiesReceived(
        Either<PropertyFailure, List<Property>> failureOrProperties),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllOpen(_WatchAllStarted value),
    @required TResult propertiesReceived(_PropertiesReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllOpen(_WatchAllStarted value),
    TResult propertiesReceived(_PropertiesReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PropertyListEventCopyWith<$Res> {
  factory $PropertyListEventCopyWith(
          PropertyListEvent value, $Res Function(PropertyListEvent) then) =
      _$PropertyListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PropertyListEventCopyWithImpl<$Res>
    implements $PropertyListEventCopyWith<$Res> {
  _$PropertyListEventCopyWithImpl(this._value, this._then);

  final PropertyListEvent _value;
  // ignore: unused_field
  final $Res Function(PropertyListEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$PropertyListEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'PropertyListEvent.watchAllOpen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllOpen(),
    @required
        TResult propertiesReceived(
            Either<PropertyFailure, List<Property>> failureOrProperties),
  }) {
    assert(watchAllOpen != null);
    assert(propertiesReceived != null);
    return watchAllOpen();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllOpen(),
    TResult propertiesReceived(
        Either<PropertyFailure, List<Property>> failureOrProperties),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllOpen != null) {
      return watchAllOpen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllOpen(_WatchAllStarted value),
    @required TResult propertiesReceived(_PropertiesReceived value),
  }) {
    assert(watchAllOpen != null);
    assert(propertiesReceived != null);
    return watchAllOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllOpen(_WatchAllStarted value),
    TResult propertiesReceived(_PropertiesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllOpen != null) {
      return watchAllOpen(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements PropertyListEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$PropertiesReceivedCopyWith<$Res> {
  factory _$PropertiesReceivedCopyWith(
          _PropertiesReceived value, $Res Function(_PropertiesReceived) then) =
      __$PropertiesReceivedCopyWithImpl<$Res>;
  $Res call({Either<PropertyFailure, List<Property>> failureOrProperties});
}

/// @nodoc
class __$PropertiesReceivedCopyWithImpl<$Res>
    extends _$PropertyListEventCopyWithImpl<$Res>
    implements _$PropertiesReceivedCopyWith<$Res> {
  __$PropertiesReceivedCopyWithImpl(
      _PropertiesReceived _value, $Res Function(_PropertiesReceived) _then)
      : super(_value, (v) => _then(v as _PropertiesReceived));

  @override
  _PropertiesReceived get _value => super._value as _PropertiesReceived;

  @override
  $Res call({
    Object failureOrProperties = freezed,
  }) {
    return _then(_PropertiesReceived(
      failureOrProperties == freezed
          ? _value.failureOrProperties
          : failureOrProperties as Either<PropertyFailure, List<Property>>,
    ));
  }
}

/// @nodoc
class _$_PropertiesReceived implements _PropertiesReceived {
  const _$_PropertiesReceived(this.failureOrProperties)
      : assert(failureOrProperties != null);

  @override
  final Either<PropertyFailure, List<Property>> failureOrProperties;

  @override
  String toString() {
    return 'PropertyListEvent.propertiesReceived(failureOrProperties: $failureOrProperties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertiesReceived &&
            (identical(other.failureOrProperties, failureOrProperties) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrProperties, failureOrProperties)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrProperties);

  @JsonKey(ignore: true)
  @override
  _$PropertiesReceivedCopyWith<_PropertiesReceived> get copyWith =>
      __$PropertiesReceivedCopyWithImpl<_PropertiesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllOpen(),
    @required
        TResult propertiesReceived(
            Either<PropertyFailure, List<Property>> failureOrProperties),
  }) {
    assert(watchAllOpen != null);
    assert(propertiesReceived != null);
    return propertiesReceived(failureOrProperties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllOpen(),
    TResult propertiesReceived(
        Either<PropertyFailure, List<Property>> failureOrProperties),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (propertiesReceived != null) {
      return propertiesReceived(failureOrProperties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllOpen(_WatchAllStarted value),
    @required TResult propertiesReceived(_PropertiesReceived value),
  }) {
    assert(watchAllOpen != null);
    assert(propertiesReceived != null);
    return propertiesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllOpen(_WatchAllStarted value),
    TResult propertiesReceived(_PropertiesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (propertiesReceived != null) {
      return propertiesReceived(this);
    }
    return orElse();
  }
}

abstract class _PropertiesReceived implements PropertyListEvent {
  const factory _PropertiesReceived(
          Either<PropertyFailure, List<Property>> failureOrProperties) =
      _$_PropertiesReceived;

  Either<PropertyFailure, List<Property>> get failureOrProperties;
  @JsonKey(ignore: true)
  _$PropertiesReceivedCopyWith<_PropertiesReceived> get copyWith;
}

/// @nodoc
class _$PropertyListStateTearOff {
  const _$PropertyListStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<Property> properties) {
    return _LoadSuccess(
      properties,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(PropertyFailure propertyFailure) {
    return _LoadFailure(
      propertyFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyListState = _$PropertyListStateTearOff();

/// @nodoc
mixin _$PropertyListState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Property> properties),
    @required TResult loadFailure(PropertyFailure propertyFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Property> properties),
    TResult loadFailure(PropertyFailure propertyFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PropertyListStateCopyWith<$Res> {
  factory $PropertyListStateCopyWith(
          PropertyListState value, $Res Function(PropertyListState) then) =
      _$PropertyListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PropertyListStateCopyWithImpl<$Res>
    implements $PropertyListStateCopyWith<$Res> {
  _$PropertyListStateCopyWithImpl(this._value, this._then);

  final PropertyListState _value;
  // ignore: unused_field
  final $Res Function(PropertyListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PropertyListStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PropertyListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Property> properties),
    @required TResult loadFailure(PropertyFailure propertyFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Property> properties),
    TResult loadFailure(PropertyFailure propertyFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PropertyListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$PropertyListStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'PropertyListState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Property> properties),
    @required TResult loadFailure(PropertyFailure propertyFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Property> properties),
    TResult loadFailure(PropertyFailure propertyFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PropertyListState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Property> properties});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PropertyListStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object properties = freezed,
  }) {
    return _then(_LoadSuccess(
      properties == freezed ? _value.properties : properties as List<Property>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.properties) : assert(properties != null);

  @override
  final List<Property> properties;

  @override
  String toString() {
    return 'PropertyListState.loadSuccess(properties: $properties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(properties);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Property> properties),
    @required TResult loadFailure(PropertyFailure propertyFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(properties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Property> properties),
    TResult loadFailure(PropertyFailure propertyFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(properties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements PropertyListState {
  const factory _LoadSuccess(List<Property> properties) = _$_LoadSuccess;

  List<Property> get properties;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({PropertyFailure propertyFailure});

  $PropertyFailureCopyWith<$Res> get propertyFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$PropertyListStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object propertyFailure = freezed,
  }) {
    return _then(_LoadFailure(
      propertyFailure == freezed
          ? _value.propertyFailure
          : propertyFailure as PropertyFailure,
    ));
  }

  @override
  $PropertyFailureCopyWith<$Res> get propertyFailure {
    if (_value.propertyFailure == null) {
      return null;
    }
    return $PropertyFailureCopyWith<$Res>(_value.propertyFailure, (value) {
      return _then(_value.copyWith(propertyFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.propertyFailure) : assert(propertyFailure != null);

  @override
  final PropertyFailure propertyFailure;

  @override
  String toString() {
    return 'PropertyListState.loadFailure(propertyFailure: $propertyFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.propertyFailure, propertyFailure) ||
                const DeepCollectionEquality()
                    .equals(other.propertyFailure, propertyFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(propertyFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Property> properties),
    @required TResult loadFailure(PropertyFailure propertyFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(propertyFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Property> properties),
    TResult loadFailure(PropertyFailure propertyFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(propertyFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements PropertyListState {
  const factory _LoadFailure(PropertyFailure propertyFailure) = _$_LoadFailure;

  PropertyFailure get propertyFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
