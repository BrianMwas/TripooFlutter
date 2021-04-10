// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'analytics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AnalyticsTearOff {
  const _$AnalyticsTearOff();

// ignore: unused_element
  _Analytics call({int views, double averageRating, int numberOfRatings}) {
    return _Analytics(
      views: views,
      averageRating: averageRating,
      numberOfRatings: numberOfRatings,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Analytics = _$AnalyticsTearOff();

/// @nodoc
mixin _$Analytics {
  int get views;
  double get averageRating;
  int get numberOfRatings;

  $AnalyticsCopyWith<Analytics> get copyWith;
}

/// @nodoc
abstract class $AnalyticsCopyWith<$Res> {
  factory $AnalyticsCopyWith(Analytics value, $Res Function(Analytics) then) =
      _$AnalyticsCopyWithImpl<$Res>;
  $Res call({int views, double averageRating, int numberOfRatings});
}

/// @nodoc
class _$AnalyticsCopyWithImpl<$Res> implements $AnalyticsCopyWith<$Res> {
  _$AnalyticsCopyWithImpl(this._value, this._then);

  final Analytics _value;
  // ignore: unused_field
  final $Res Function(Analytics) _then;

  @override
  $Res call({
    Object views = freezed,
    Object averageRating = freezed,
    Object numberOfRatings = freezed,
  }) {
    return _then(_value.copyWith(
      views: views == freezed ? _value.views : views as int,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating as double,
      numberOfRatings: numberOfRatings == freezed
          ? _value.numberOfRatings
          : numberOfRatings as int,
    ));
  }
}

/// @nodoc
abstract class _$AnalyticsCopyWith<$Res> implements $AnalyticsCopyWith<$Res> {
  factory _$AnalyticsCopyWith(
          _Analytics value, $Res Function(_Analytics) then) =
      __$AnalyticsCopyWithImpl<$Res>;
  @override
  $Res call({int views, double averageRating, int numberOfRatings});
}

/// @nodoc
class __$AnalyticsCopyWithImpl<$Res> extends _$AnalyticsCopyWithImpl<$Res>
    implements _$AnalyticsCopyWith<$Res> {
  __$AnalyticsCopyWithImpl(_Analytics _value, $Res Function(_Analytics) _then)
      : super(_value, (v) => _then(v as _Analytics));

  @override
  _Analytics get _value => super._value as _Analytics;

  @override
  $Res call({
    Object views = freezed,
    Object averageRating = freezed,
    Object numberOfRatings = freezed,
  }) {
    return _then(_Analytics(
      views: views == freezed ? _value.views : views as int,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating as double,
      numberOfRatings: numberOfRatings == freezed
          ? _value.numberOfRatings
          : numberOfRatings as int,
    ));
  }
}

/// @nodoc
class _$_Analytics implements _Analytics {
  const _$_Analytics({this.views, this.averageRating, this.numberOfRatings});

  @override
  final int views;
  @override
  final double averageRating;
  @override
  final int numberOfRatings;

  @override
  String toString() {
    return 'Analytics(views: $views, averageRating: $averageRating, numberOfRatings: $numberOfRatings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Analytics &&
            (identical(other.views, views) ||
                const DeepCollectionEquality().equals(other.views, views)) &&
            (identical(other.averageRating, averageRating) ||
                const DeepCollectionEquality()
                    .equals(other.averageRating, averageRating)) &&
            (identical(other.numberOfRatings, numberOfRatings) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfRatings, numberOfRatings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(views) ^
      const DeepCollectionEquality().hash(averageRating) ^
      const DeepCollectionEquality().hash(numberOfRatings);

  @override
  _$AnalyticsCopyWith<_Analytics> get copyWith =>
      __$AnalyticsCopyWithImpl<_Analytics>(this, _$identity);
}

abstract class _Analytics implements Analytics {
  const factory _Analytics(
      {int views, double averageRating, int numberOfRatings}) = _$_Analytics;

  @override
  int get views;
  @override
  double get averageRating;
  @override
  int get numberOfRatings;
  @override
  _$AnalyticsCopyWith<_Analytics> get copyWith;
}
