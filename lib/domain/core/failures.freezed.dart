// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  InvalidEmail<T> invalidEmailAddress<T>({@required String failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidUsername<T> invalidUsername<T>({@required String failedValue}) {
    return InvalidUsername<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  _InvalidPhoneNumber<T> invalidPhoneNumber<T>({@required String failedValue}) {
    return _InvalidPhoneNumber<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  _InvalidURL<T> invalidURL<T>({@required String failedValue}) {
    return _InvalidURL<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidPassword<T> invalidPassword<T>({@required String failedValue}) {
    return InvalidPassword<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ExceedingLength<T> exceedingLength<T>(
      {@required String failedValue, @required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  WrongFormat<T> wrongFormat<T>({@required T failedValue}) {
    return WrongFormat<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  LowValue<T> lowValue<T>(
      {@required double failedValue,
      @required double minValue,
      @required double maxValue}) {
    return LowValue<T>(
      failedValue: failedValue,
      minValue: minValue,
      maxValue: maxValue,
    );
  }

// ignore: unused_element
  BelowMinLength<T> belowMinLength<T>(
      {@required String failedValue, @required int min}) {
    return BelowMinLength<T>(
      failedValue: failedValue,
      min: min,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidURL(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(String failedValue, int max),
    @required TResult wrongFormat(T failedValue),
    @required
        TResult lowValue(double failedValue, double minValue, double maxValue),
    @required TResult belowMinLength(String failedValue, int min),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidURL(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult empty(T failedValue),
    TResult exceedingLength(String failedValue, int max),
    TResult wrongFormat(T failedValue),
    TResult lowValue(double failedValue, double minValue, double maxValue),
    TResult belowMinLength(String failedValue, int min),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    @required TResult invalidURL(_InvalidURL<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult wrongFormat(WrongFormat<T> value),
    @required TResult lowValue(LowValue<T> value),
    @required TResult belowMinLength(BelowMinLength<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    TResult invalidURL(_InvalidURL<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult wrongFormat(WrongFormat<T> value),
    TResult lowValue(LowValue<T> value),
    TResult belowMinLength(BelowMinLength<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmailAddress(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidURL(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(String failedValue, int max),
    @required TResult wrongFormat(T failedValue),
    @required
        TResult lowValue(double failedValue, double minValue, double maxValue),
    @required TResult belowMinLength(String failedValue, int min),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return invalidEmailAddress(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidURL(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult empty(T failedValue),
    TResult exceedingLength(String failedValue, int max),
    TResult wrongFormat(T failedValue),
    TResult lowValue(double failedValue, double minValue, double maxValue),
    TResult belowMinLength(String failedValue, int min),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAddress != null) {
      return invalidEmailAddress(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    @required TResult invalidURL(_InvalidURL<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult wrongFormat(WrongFormat<T> value),
    @required TResult lowValue(LowValue<T> value),
    @required TResult belowMinLength(BelowMinLength<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return invalidEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    TResult invalidURL(_InvalidURL<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult wrongFormat(WrongFormat<T> value),
    TResult lowValue(LowValue<T> value),
    TResult belowMinLength(BelowMinLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAddress != null) {
      return invalidEmailAddress(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required String failedValue}) =
      _$InvalidEmail<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidUsernameCopyWith<T, $Res> {
  factory $InvalidUsernameCopyWith(
          InvalidUsername<T> value, $Res Function(InvalidUsername<T>) then) =
      _$InvalidUsernameCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidUsernameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUsernameCopyWith<T, $Res> {
  _$InvalidUsernameCopyWithImpl(
      InvalidUsername<T> _value, $Res Function(InvalidUsername<T>) _then)
      : super(_value, (v) => _then(v as InvalidUsername<T>));

  @override
  InvalidUsername<T> get _value => super._value as InvalidUsername<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidUsername<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidUsername<T> implements InvalidUsername<T> {
  const _$InvalidUsername({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUsername(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUsername<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith =>
      _$InvalidUsernameCopyWithImpl<T, InvalidUsername<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidURL(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(String failedValue, int max),
    @required TResult wrongFormat(T failedValue),
    @required
        TResult lowValue(double failedValue, double minValue, double maxValue),
    @required TResult belowMinLength(String failedValue, int min),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return invalidUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidURL(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult empty(T failedValue),
    TResult exceedingLength(String failedValue, int max),
    TResult wrongFormat(T failedValue),
    TResult lowValue(double failedValue, double minValue, double maxValue),
    TResult belowMinLength(String failedValue, int min),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    @required TResult invalidURL(_InvalidURL<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult wrongFormat(WrongFormat<T> value),
    @required TResult lowValue(LowValue<T> value),
    @required TResult belowMinLength(BelowMinLength<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    TResult invalidURL(_InvalidURL<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult wrongFormat(WrongFormat<T> value),
    TResult lowValue(LowValue<T> value),
    TResult belowMinLength(BelowMinLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class InvalidUsername<T> implements ValueFailure<T> {
  const factory InvalidUsername({@required String failedValue}) =
      _$InvalidUsername<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith;
}

/// @nodoc
abstract class _$InvalidPhoneNumberCopyWith<T, $Res> {
  factory _$InvalidPhoneNumberCopyWith(_InvalidPhoneNumber<T> value,
          $Res Function(_InvalidPhoneNumber<T>) then) =
      __$InvalidPhoneNumberCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class __$InvalidPhoneNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidPhoneNumberCopyWith<T, $Res> {
  __$InvalidPhoneNumberCopyWithImpl(_InvalidPhoneNumber<T> _value,
      $Res Function(_InvalidPhoneNumber<T>) _then)
      : super(_value, (v) => _then(v as _InvalidPhoneNumber<T>));

  @override
  _InvalidPhoneNumber<T> get _value => super._value as _InvalidPhoneNumber<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_InvalidPhoneNumber<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$_InvalidPhoneNumber<T> implements _InvalidPhoneNumber<T> {
  const _$_InvalidPhoneNumber({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhoneNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidPhoneNumber<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidPhoneNumberCopyWith<T, _InvalidPhoneNumber<T>> get copyWith =>
      __$InvalidPhoneNumberCopyWithImpl<T, _InvalidPhoneNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidURL(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(String failedValue, int max),
    @required TResult wrongFormat(T failedValue),
    @required
        TResult lowValue(double failedValue, double minValue, double maxValue),
    @required TResult belowMinLength(String failedValue, int min),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return invalidPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidURL(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult empty(T failedValue),
    TResult exceedingLength(String failedValue, int max),
    TResult wrongFormat(T failedValue),
    TResult lowValue(double failedValue, double minValue, double maxValue),
    TResult belowMinLength(String failedValue, int min),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    @required TResult invalidURL(_InvalidURL<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult wrongFormat(WrongFormat<T> value),
    @required TResult lowValue(LowValue<T> value),
    @required TResult belowMinLength(BelowMinLength<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    TResult invalidURL(_InvalidURL<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult wrongFormat(WrongFormat<T> value),
    TResult lowValue(LowValue<T> value),
    TResult belowMinLength(BelowMinLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidPhoneNumber<T> implements ValueFailure<T> {
  const factory _InvalidPhoneNumber({@required String failedValue}) =
      _$_InvalidPhoneNumber<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  _$InvalidPhoneNumberCopyWith<T, _InvalidPhoneNumber<T>> get copyWith;
}

/// @nodoc
abstract class _$InvalidURLCopyWith<T, $Res> {
  factory _$InvalidURLCopyWith(
          _InvalidURL<T> value, $Res Function(_InvalidURL<T>) then) =
      __$InvalidURLCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class __$InvalidURLCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidURLCopyWith<T, $Res> {
  __$InvalidURLCopyWithImpl(
      _InvalidURL<T> _value, $Res Function(_InvalidURL<T>) _then)
      : super(_value, (v) => _then(v as _InvalidURL<T>));

  @override
  _InvalidURL<T> get _value => super._value as _InvalidURL<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_InvalidURL<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$_InvalidURL<T> implements _InvalidURL<T> {
  const _$_InvalidURL({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidURL(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidURL<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidURLCopyWith<T, _InvalidURL<T>> get copyWith =>
      __$InvalidURLCopyWithImpl<T, _InvalidURL<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidURL(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(String failedValue, int max),
    @required TResult wrongFormat(T failedValue),
    @required
        TResult lowValue(double failedValue, double minValue, double maxValue),
    @required TResult belowMinLength(String failedValue, int min),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return invalidURL(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidURL(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult empty(T failedValue),
    TResult exceedingLength(String failedValue, int max),
    TResult wrongFormat(T failedValue),
    TResult lowValue(double failedValue, double minValue, double maxValue),
    TResult belowMinLength(String failedValue, int min),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidURL != null) {
      return invalidURL(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    @required TResult invalidURL(_InvalidURL<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult wrongFormat(WrongFormat<T> value),
    @required TResult lowValue(LowValue<T> value),
    @required TResult belowMinLength(BelowMinLength<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return invalidURL(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    TResult invalidURL(_InvalidURL<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult wrongFormat(WrongFormat<T> value),
    TResult lowValue(LowValue<T> value),
    TResult belowMinLength(BelowMinLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidURL != null) {
      return invalidURL(this);
    }
    return orElse();
  }
}

abstract class _InvalidURL<T> implements ValueFailure<T> {
  const factory _InvalidURL({@required String failedValue}) = _$_InvalidURL<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  _$InvalidURLCopyWith<T, _InvalidURL<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidPasswordCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPasswordCopyWith<T, $Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword<T> _value, $Res Function(InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as InvalidPassword<T>));

  @override
  InvalidPassword<T> get _value => super._value as InvalidPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidPassword<T> implements InvalidPassword<T> {
  const _$InvalidPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      _$InvalidPasswordCopyWithImpl<T, InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidURL(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(String failedValue, int max),
    @required TResult wrongFormat(T failedValue),
    @required
        TResult lowValue(double failedValue, double minValue, double maxValue),
    @required TResult belowMinLength(String failedValue, int min),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidURL(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult empty(T failedValue),
    TResult exceedingLength(String failedValue, int max),
    TResult wrongFormat(T failedValue),
    TResult lowValue(double failedValue, double minValue, double maxValue),
    TResult belowMinLength(String failedValue, int min),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    @required TResult invalidURL(_InvalidURL<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult wrongFormat(WrongFormat<T> value),
    @required TResult lowValue(LowValue<T> value),
    @required TResult belowMinLength(BelowMinLength<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    TResult invalidURL(_InvalidURL<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult wrongFormat(WrongFormat<T> value),
    TResult lowValue(LowValue<T> value),
    TResult belowMinLength(BelowMinLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements ValueFailure<T> {
  const factory InvalidPassword({@required String failedValue}) =
      _$InvalidPassword<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Empty<T> implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidURL(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(String failedValue, int max),
    @required TResult wrongFormat(T failedValue),
    @required
        TResult lowValue(double failedValue, double minValue, double maxValue),
    @required TResult belowMinLength(String failedValue, int min),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidURL(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult empty(T failedValue),
    TResult exceedingLength(String failedValue, int max),
    TResult wrongFormat(T failedValue),
    TResult lowValue(double failedValue, double minValue, double maxValue),
    TResult belowMinLength(String failedValue, int min),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    @required TResult invalidURL(_InvalidURL<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult wrongFormat(WrongFormat<T> value),
    @required TResult lowValue(LowValue<T> value),
    @required TResult belowMinLength(BelowMinLength<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    TResult invalidURL(_InvalidURL<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult wrongFormat(WrongFormat<T> value),
    TResult lowValue(LowValue<T> value),
    TResult belowMinLength(BelowMinLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({String failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final String failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidURL(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(String failedValue, int max),
    @required TResult wrongFormat(T failedValue),
    @required
        TResult lowValue(double failedValue, double minValue, double maxValue),
    @required TResult belowMinLength(String failedValue, int min),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidURL(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult empty(T failedValue),
    TResult exceedingLength(String failedValue, int max),
    TResult wrongFormat(T failedValue),
    TResult lowValue(double failedValue, double minValue, double maxValue),
    TResult belowMinLength(String failedValue, int min),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    @required TResult invalidURL(_InvalidURL<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult wrongFormat(WrongFormat<T> value),
    @required TResult lowValue(LowValue<T> value),
    @required TResult belowMinLength(BelowMinLength<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    TResult invalidURL(_InvalidURL<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult wrongFormat(WrongFormat<T> value),
    TResult lowValue(LowValue<T> value),
    TResult belowMinLength(BelowMinLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {@required String failedValue, @required int max}) = _$ExceedingLength<T>;

  String get failedValue;
  int get max;
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

/// @nodoc
abstract class $WrongFormatCopyWith<T, $Res> {
  factory $WrongFormatCopyWith(
          WrongFormat<T> value, $Res Function(WrongFormat<T>) then) =
      _$WrongFormatCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$WrongFormatCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $WrongFormatCopyWith<T, $Res> {
  _$WrongFormatCopyWithImpl(
      WrongFormat<T> _value, $Res Function(WrongFormat<T>) _then)
      : super(_value, (v) => _then(v as WrongFormat<T>));

  @override
  WrongFormat<T> get _value => super._value as WrongFormat<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(WrongFormat<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$WrongFormat<T> implements WrongFormat<T> {
  const _$WrongFormat({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.wrongFormat(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WrongFormat<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $WrongFormatCopyWith<T, WrongFormat<T>> get copyWith =>
      _$WrongFormatCopyWithImpl<T, WrongFormat<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidURL(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(String failedValue, int max),
    @required TResult wrongFormat(T failedValue),
    @required
        TResult lowValue(double failedValue, double minValue, double maxValue),
    @required TResult belowMinLength(String failedValue, int min),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return wrongFormat(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidURL(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult empty(T failedValue),
    TResult exceedingLength(String failedValue, int max),
    TResult wrongFormat(T failedValue),
    TResult lowValue(double failedValue, double minValue, double maxValue),
    TResult belowMinLength(String failedValue, int min),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wrongFormat != null) {
      return wrongFormat(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    @required TResult invalidURL(_InvalidURL<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult wrongFormat(WrongFormat<T> value),
    @required TResult lowValue(LowValue<T> value),
    @required TResult belowMinLength(BelowMinLength<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return wrongFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    TResult invalidURL(_InvalidURL<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult wrongFormat(WrongFormat<T> value),
    TResult lowValue(LowValue<T> value),
    TResult belowMinLength(BelowMinLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wrongFormat != null) {
      return wrongFormat(this);
    }
    return orElse();
  }
}

abstract class WrongFormat<T> implements ValueFailure<T> {
  const factory WrongFormat({@required T failedValue}) = _$WrongFormat<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $WrongFormatCopyWith<T, WrongFormat<T>> get copyWith;
}

/// @nodoc
abstract class $LowValueCopyWith<T, $Res> {
  factory $LowValueCopyWith(
          LowValue<T> value, $Res Function(LowValue<T>) then) =
      _$LowValueCopyWithImpl<T, $Res>;
  $Res call({double failedValue, double minValue, double maxValue});
}

/// @nodoc
class _$LowValueCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $LowValueCopyWith<T, $Res> {
  _$LowValueCopyWithImpl(LowValue<T> _value, $Res Function(LowValue<T>) _then)
      : super(_value, (v) => _then(v as LowValue<T>));

  @override
  LowValue<T> get _value => super._value as LowValue<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object minValue = freezed,
    Object maxValue = freezed,
  }) {
    return _then(LowValue<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as double,
      minValue: minValue == freezed ? _value.minValue : minValue as double,
      maxValue: maxValue == freezed ? _value.maxValue : maxValue as double,
    ));
  }
}

/// @nodoc
class _$LowValue<T> implements LowValue<T> {
  const _$LowValue(
      {@required this.failedValue,
      @required this.minValue,
      @required this.maxValue})
      : assert(failedValue != null),
        assert(minValue != null),
        assert(maxValue != null);

  @override
  final double failedValue;
  @override
  final double minValue;
  @override
  final double maxValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.lowValue(failedValue: $failedValue, minValue: $minValue, maxValue: $maxValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LowValue<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.minValue, minValue) ||
                const DeepCollectionEquality()
                    .equals(other.minValue, minValue)) &&
            (identical(other.maxValue, maxValue) ||
                const DeepCollectionEquality()
                    .equals(other.maxValue, maxValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(minValue) ^
      const DeepCollectionEquality().hash(maxValue);

  @JsonKey(ignore: true)
  @override
  $LowValueCopyWith<T, LowValue<T>> get copyWith =>
      _$LowValueCopyWithImpl<T, LowValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidURL(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(String failedValue, int max),
    @required TResult wrongFormat(T failedValue),
    @required
        TResult lowValue(double failedValue, double minValue, double maxValue),
    @required TResult belowMinLength(String failedValue, int min),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return lowValue(failedValue, minValue, maxValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidURL(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult empty(T failedValue),
    TResult exceedingLength(String failedValue, int max),
    TResult wrongFormat(T failedValue),
    TResult lowValue(double failedValue, double minValue, double maxValue),
    TResult belowMinLength(String failedValue, int min),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lowValue != null) {
      return lowValue(failedValue, minValue, maxValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    @required TResult invalidURL(_InvalidURL<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult wrongFormat(WrongFormat<T> value),
    @required TResult lowValue(LowValue<T> value),
    @required TResult belowMinLength(BelowMinLength<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return lowValue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    TResult invalidURL(_InvalidURL<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult wrongFormat(WrongFormat<T> value),
    TResult lowValue(LowValue<T> value),
    TResult belowMinLength(BelowMinLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lowValue != null) {
      return lowValue(this);
    }
    return orElse();
  }
}

abstract class LowValue<T> implements ValueFailure<T> {
  const factory LowValue(
      {@required double failedValue,
      @required double minValue,
      @required double maxValue}) = _$LowValue<T>;

  double get failedValue;
  double get minValue;
  double get maxValue;
  @JsonKey(ignore: true)
  $LowValueCopyWith<T, LowValue<T>> get copyWith;
}

/// @nodoc
abstract class $BelowMinLengthCopyWith<T, $Res> {
  factory $BelowMinLengthCopyWith(
          BelowMinLength<T> value, $Res Function(BelowMinLength<T>) then) =
      _$BelowMinLengthCopyWithImpl<T, $Res>;
  $Res call({String failedValue, int min});
}

/// @nodoc
class _$BelowMinLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $BelowMinLengthCopyWith<T, $Res> {
  _$BelowMinLengthCopyWithImpl(
      BelowMinLength<T> _value, $Res Function(BelowMinLength<T>) _then)
      : super(_value, (v) => _then(v as BelowMinLength<T>));

  @override
  BelowMinLength<T> get _value => super._value as BelowMinLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object min = freezed,
  }) {
    return _then(BelowMinLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
      min: min == freezed ? _value.min : min as int,
    ));
  }
}

/// @nodoc
class _$BelowMinLength<T> implements BelowMinLength<T> {
  const _$BelowMinLength({@required this.failedValue, @required this.min})
      : assert(failedValue != null),
        assert(min != null);

  @override
  final String failedValue;
  @override
  final int min;

  @override
  String toString() {
    return 'ValueFailure<$T>.belowMinLength(failedValue: $failedValue, min: $min)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BelowMinLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(min);

  @JsonKey(ignore: true)
  @override
  $BelowMinLengthCopyWith<T, BelowMinLength<T>> get copyWith =>
      _$BelowMinLengthCopyWithImpl<T, BelowMinLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidURL(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(String failedValue, int max),
    @required TResult wrongFormat(T failedValue),
    @required
        TResult lowValue(double failedValue, double minValue, double maxValue),
    @required TResult belowMinLength(String failedValue, int min),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return belowMinLength(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidURL(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult empty(T failedValue),
    TResult exceedingLength(String failedValue, int max),
    TResult wrongFormat(T failedValue),
    TResult lowValue(double failedValue, double minValue, double maxValue),
    TResult belowMinLength(String failedValue, int min),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (belowMinLength != null) {
      return belowMinLength(failedValue, min);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    @required TResult invalidURL(_InvalidURL<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult wrongFormat(WrongFormat<T> value),
    @required TResult lowValue(LowValue<T> value),
    @required TResult belowMinLength(BelowMinLength<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidUsername != null);
    assert(invalidPhoneNumber != null);
    assert(invalidURL != null);
    assert(invalidPassword != null);
    assert(empty != null);
    assert(exceedingLength != null);
    assert(wrongFormat != null);
    assert(lowValue != null);
    assert(belowMinLength != null);
    return belowMinLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidPhoneNumber(_InvalidPhoneNumber<T> value),
    TResult invalidURL(_InvalidURL<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult wrongFormat(WrongFormat<T> value),
    TResult lowValue(LowValue<T> value),
    TResult belowMinLength(BelowMinLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (belowMinLength != null) {
      return belowMinLength(this);
    }
    return orElse();
  }
}

abstract class BelowMinLength<T> implements ValueFailure<T> {
  const factory BelowMinLength(
      {@required String failedValue, @required int min}) = _$BelowMinLength<T>;

  String get failedValue;
  int get min;
  @JsonKey(ignore: true)
  $BelowMinLengthCopyWith<T, BelowMinLength<T>> get copyWith;
}
