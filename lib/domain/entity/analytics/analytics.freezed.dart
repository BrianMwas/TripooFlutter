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
  _Analytics call(
      {String id,
      int views,
      double averageRating,
      int numberOfRatings,
      DateTime time,
      int numberOfBookings}) {
    return _Analytics(
      id: id,
      views: views,
      averageRating: averageRating,
      numberOfRatings: numberOfRatings,
      time: time,
      numberOfBookings: numberOfBookings,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Analytics = _$AnalyticsTearOff();

/// @nodoc
mixin _$Analytics {
  String get id;
  int get views;
  double get averageRating;
  int get numberOfRatings;
  DateTime get time;
  int get numberOfBookings;

  @JsonKey(ignore: true)
  $AnalyticsCopyWith<Analytics> get copyWith;
}

/// @nodoc
abstract class $AnalyticsCopyWith<$Res> {
  factory $AnalyticsCopyWith(Analytics value, $Res Function(Analytics) then) =
      _$AnalyticsCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int views,
      double averageRating,
      int numberOfRatings,
      DateTime time,
      int numberOfBookings});
}

/// @nodoc
class _$AnalyticsCopyWithImpl<$Res> implements $AnalyticsCopyWith<$Res> {
  _$AnalyticsCopyWithImpl(this._value, this._then);

  final Analytics _value;
  // ignore: unused_field
  final $Res Function(Analytics) _then;

  @override
  $Res call({
    Object id = freezed,
    Object views = freezed,
    Object averageRating = freezed,
    Object numberOfRatings = freezed,
    Object time = freezed,
    Object numberOfBookings = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      views: views == freezed ? _value.views : views as int,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating as double,
      numberOfRatings: numberOfRatings == freezed
          ? _value.numberOfRatings
          : numberOfRatings as int,
      time: time == freezed ? _value.time : time as DateTime,
      numberOfBookings: numberOfBookings == freezed
          ? _value.numberOfBookings
          : numberOfBookings as int,
    ));
  }
}

/// @nodoc
abstract class _$AnalyticsCopyWith<$Res> implements $AnalyticsCopyWith<$Res> {
  factory _$AnalyticsCopyWith(
          _Analytics value, $Res Function(_Analytics) then) =
      __$AnalyticsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int views,
      double averageRating,
      int numberOfRatings,
      DateTime time,
      int numberOfBookings});
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
    Object id = freezed,
    Object views = freezed,
    Object averageRating = freezed,
    Object numberOfRatings = freezed,
    Object time = freezed,
    Object numberOfBookings = freezed,
  }) {
    return _then(_Analytics(
      id: id == freezed ? _value.id : id as String,
      views: views == freezed ? _value.views : views as int,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating as double,
      numberOfRatings: numberOfRatings == freezed
          ? _value.numberOfRatings
          : numberOfRatings as int,
      time: time == freezed ? _value.time : time as DateTime,
      numberOfBookings: numberOfBookings == freezed
          ? _value.numberOfBookings
          : numberOfBookings as int,
    ));
  }
}

/// @nodoc
class _$_Analytics extends _Analytics {
  const _$_Analytics(
      {this.id,
      this.views,
      this.averageRating,
      this.numberOfRatings,
      this.time,
      this.numberOfBookings})
      : super._();

  @override
  final String id;
  @override
  final int views;
  @override
  final double averageRating;
  @override
  final int numberOfRatings;
  @override
  final DateTime time;
  @override
  final int numberOfBookings;

  @override
  String toString() {
    return 'Analytics(id: $id, views: $views, averageRating: $averageRating, numberOfRatings: $numberOfRatings, time: $time, numberOfBookings: $numberOfBookings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Analytics &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.views, views) ||
                const DeepCollectionEquality().equals(other.views, views)) &&
            (identical(other.averageRating, averageRating) ||
                const DeepCollectionEquality()
                    .equals(other.averageRating, averageRating)) &&
            (identical(other.numberOfRatings, numberOfRatings) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfRatings, numberOfRatings)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.numberOfBookings, numberOfBookings) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfBookings, numberOfBookings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(views) ^
      const DeepCollectionEquality().hash(averageRating) ^
      const DeepCollectionEquality().hash(numberOfRatings) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(numberOfBookings);

  @JsonKey(ignore: true)
  @override
  _$AnalyticsCopyWith<_Analytics> get copyWith =>
      __$AnalyticsCopyWithImpl<_Analytics>(this, _$identity);
}

abstract class _Analytics extends Analytics {
  const _Analytics._() : super._();
  const factory _Analytics(
      {String id,
      int views,
      double averageRating,
      int numberOfRatings,
      DateTime time,
      int numberOfBookings}) = _$_Analytics;

  @override
  String get id;
  @override
  int get views;
  @override
  double get averageRating;
  @override
  int get numberOfRatings;
  @override
  DateTime get time;
  @override
  int get numberOfBookings;
  @override
  @JsonKey(ignore: true)
  _$AnalyticsCopyWith<_Analytics> get copyWith;
}
