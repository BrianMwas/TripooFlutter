// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'single_property_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SinglePropertyEventTearOff {
  const _$SinglePropertyEventTearOff();

// ignore: unused_element
  _WatchProperty watchProperty(String propertyId) {
    return _WatchProperty(
      propertyId,
    );
  }

// ignore: unused_element
  _GetSingleProperty getSingleProperty(
      Either<PropertyFailure, Property> failureOrSuccess) {
    return _GetSingleProperty(
      failureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SinglePropertyEvent = _$SinglePropertyEventTearOff();

/// @nodoc
mixin _$SinglePropertyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchProperty(String propertyId),
    @required
        TResult getSingleProperty(
            Either<PropertyFailure, Property> failureOrSuccess),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchProperty(String propertyId),
    TResult getSingleProperty(
        Either<PropertyFailure, Property> failureOrSuccess),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchProperty(_WatchProperty value),
    @required TResult getSingleProperty(_GetSingleProperty value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchProperty(_WatchProperty value),
    TResult getSingleProperty(_GetSingleProperty value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SinglePropertyEventCopyWith<$Res> {
  factory $SinglePropertyEventCopyWith(
          SinglePropertyEvent value, $Res Function(SinglePropertyEvent) then) =
      _$SinglePropertyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SinglePropertyEventCopyWithImpl<$Res>
    implements $SinglePropertyEventCopyWith<$Res> {
  _$SinglePropertyEventCopyWithImpl(this._value, this._then);

  final SinglePropertyEvent _value;
  // ignore: unused_field
  final $Res Function(SinglePropertyEvent) _then;
}

/// @nodoc
abstract class _$WatchPropertyCopyWith<$Res> {
  factory _$WatchPropertyCopyWith(
          _WatchProperty value, $Res Function(_WatchProperty) then) =
      __$WatchPropertyCopyWithImpl<$Res>;
  $Res call({String propertyId});
}

/// @nodoc
class __$WatchPropertyCopyWithImpl<$Res>
    extends _$SinglePropertyEventCopyWithImpl<$Res>
    implements _$WatchPropertyCopyWith<$Res> {
  __$WatchPropertyCopyWithImpl(
      _WatchProperty _value, $Res Function(_WatchProperty) _then)
      : super(_value, (v) => _then(v as _WatchProperty));

  @override
  _WatchProperty get _value => super._value as _WatchProperty;

  @override
  $Res call({
    Object propertyId = freezed,
  }) {
    return _then(_WatchProperty(
      propertyId == freezed ? _value.propertyId : propertyId as String,
    ));
  }
}

/// @nodoc
class _$_WatchProperty implements _WatchProperty {
  const _$_WatchProperty(this.propertyId) : assert(propertyId != null);

  @override
  final String propertyId;

  @override
  String toString() {
    return 'SinglePropertyEvent.watchProperty(propertyId: $propertyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchProperty &&
            (identical(other.propertyId, propertyId) ||
                const DeepCollectionEquality()
                    .equals(other.propertyId, propertyId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(propertyId);

  @JsonKey(ignore: true)
  @override
  _$WatchPropertyCopyWith<_WatchProperty> get copyWith =>
      __$WatchPropertyCopyWithImpl<_WatchProperty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchProperty(String propertyId),
    @required
        TResult getSingleProperty(
            Either<PropertyFailure, Property> failureOrSuccess),
  }) {
    assert(watchProperty != null);
    assert(getSingleProperty != null);
    return watchProperty(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchProperty(String propertyId),
    TResult getSingleProperty(
        Either<PropertyFailure, Property> failureOrSuccess),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchProperty != null) {
      return watchProperty(propertyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchProperty(_WatchProperty value),
    @required TResult getSingleProperty(_GetSingleProperty value),
  }) {
    assert(watchProperty != null);
    assert(getSingleProperty != null);
    return watchProperty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchProperty(_WatchProperty value),
    TResult getSingleProperty(_GetSingleProperty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchProperty != null) {
      return watchProperty(this);
    }
    return orElse();
  }
}

abstract class _WatchProperty implements SinglePropertyEvent {
  const factory _WatchProperty(String propertyId) = _$_WatchProperty;

  String get propertyId;
  @JsonKey(ignore: true)
  _$WatchPropertyCopyWith<_WatchProperty> get copyWith;
}

/// @nodoc
abstract class _$GetSinglePropertyCopyWith<$Res> {
  factory _$GetSinglePropertyCopyWith(
          _GetSingleProperty value, $Res Function(_GetSingleProperty) then) =
      __$GetSinglePropertyCopyWithImpl<$Res>;
  $Res call({Either<PropertyFailure, Property> failureOrSuccess});
}

/// @nodoc
class __$GetSinglePropertyCopyWithImpl<$Res>
    extends _$SinglePropertyEventCopyWithImpl<$Res>
    implements _$GetSinglePropertyCopyWith<$Res> {
  __$GetSinglePropertyCopyWithImpl(
      _GetSingleProperty _value, $Res Function(_GetSingleProperty) _then)
      : super(_value, (v) => _then(v as _GetSingleProperty));

  @override
  _GetSingleProperty get _value => super._value as _GetSingleProperty;

  @override
  $Res call({
    Object failureOrSuccess = freezed,
  }) {
    return _then(_GetSingleProperty(
      failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess as Either<PropertyFailure, Property>,
    ));
  }
}

/// @nodoc
class _$_GetSingleProperty implements _GetSingleProperty {
  const _$_GetSingleProperty(this.failureOrSuccess)
      : assert(failureOrSuccess != null);

  @override
  final Either<PropertyFailure, Property> failureOrSuccess;

  @override
  String toString() {
    return 'SinglePropertyEvent.getSingleProperty(failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSingleProperty &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccess, failureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$GetSinglePropertyCopyWith<_GetSingleProperty> get copyWith =>
      __$GetSinglePropertyCopyWithImpl<_GetSingleProperty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchProperty(String propertyId),
    @required
        TResult getSingleProperty(
            Either<PropertyFailure, Property> failureOrSuccess),
  }) {
    assert(watchProperty != null);
    assert(getSingleProperty != null);
    return getSingleProperty(failureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchProperty(String propertyId),
    TResult getSingleProperty(
        Either<PropertyFailure, Property> failureOrSuccess),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getSingleProperty != null) {
      return getSingleProperty(failureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchProperty(_WatchProperty value),
    @required TResult getSingleProperty(_GetSingleProperty value),
  }) {
    assert(watchProperty != null);
    assert(getSingleProperty != null);
    return getSingleProperty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchProperty(_WatchProperty value),
    TResult getSingleProperty(_GetSingleProperty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getSingleProperty != null) {
      return getSingleProperty(this);
    }
    return orElse();
  }
}

abstract class _GetSingleProperty implements SinglePropertyEvent {
  const factory _GetSingleProperty(
          Either<PropertyFailure, Property> failureOrSuccess) =
      _$_GetSingleProperty;

  Either<PropertyFailure, Property> get failureOrSuccess;
  @JsonKey(ignore: true)
  _$GetSinglePropertyCopyWith<_GetSingleProperty> get copyWith;
}

/// @nodoc
class _$SinglePropertyStateTearOff {
  const _$SinglePropertyStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(Property property) {
    return _LoadSuccess(
      property,
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
const $SinglePropertyState = _$SinglePropertyStateTearOff();

/// @nodoc
mixin _$SinglePropertyState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Property property),
    @required TResult loadFailure(PropertyFailure propertyFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(Property property),
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
abstract class $SinglePropertyStateCopyWith<$Res> {
  factory $SinglePropertyStateCopyWith(
          SinglePropertyState value, $Res Function(SinglePropertyState) then) =
      _$SinglePropertyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SinglePropertyStateCopyWithImpl<$Res>
    implements $SinglePropertyStateCopyWith<$Res> {
  _$SinglePropertyStateCopyWithImpl(this._value, this._then);

  final SinglePropertyState _value;
  // ignore: unused_field
  final $Res Function(SinglePropertyState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$SinglePropertyStateCopyWithImpl<$Res>
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
    return 'SinglePropertyState.initial()';
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
    @required TResult loadSuccess(Property property),
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
    TResult loadSuccess(Property property),
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

abstract class _Initial implements SinglePropertyState {
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
    extends _$SinglePropertyStateCopyWithImpl<$Res>
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
    return 'SinglePropertyState.loadInProgress()';
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
    @required TResult loadSuccess(Property property),
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
    TResult loadSuccess(Property property),
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

abstract class _LoadInProgress implements SinglePropertyState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Property property});

  $PropertyCopyWith<$Res> get property;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$SinglePropertyStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object property = freezed,
  }) {
    return _then(_LoadSuccess(
      property == freezed ? _value.property : property as Property,
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
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.property) : assert(property != null);

  @override
  final Property property;

  @override
  String toString() {
    return 'SinglePropertyState.loadSuccess(property: $property)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.property, property) ||
                const DeepCollectionEquality()
                    .equals(other.property, property)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(property);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Property property),
    @required TResult loadFailure(PropertyFailure propertyFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(property);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(Property property),
    TResult loadFailure(PropertyFailure propertyFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(property);
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

abstract class _LoadSuccess implements SinglePropertyState {
  const factory _LoadSuccess(Property property) = _$_LoadSuccess;

  Property get property;
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
    extends _$SinglePropertyStateCopyWithImpl<$Res>
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
    return 'SinglePropertyState.loadFailure(propertyFailure: $propertyFailure)';
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
    @required TResult loadSuccess(Property property),
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
    TResult loadSuccess(Property property),
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

abstract class _LoadFailure implements SinglePropertyState {
  const factory _LoadFailure(PropertyFailure propertyFailure) = _$_LoadFailure;

  PropertyFailure get propertyFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
