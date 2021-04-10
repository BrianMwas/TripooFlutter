// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'analytics.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AnalyticsDTO _$AnalyticsDTOFromJson(Map<String, dynamic> json) {
  return _AnalyticsDTO.fromJson(json);
}

/// @nodoc
class _$AnalyticsDTOTearOff {
  const _$AnalyticsDTOTearOff();

// ignore: unused_element
  _AnalyticsDTO call(
      {@JsonKey(ignore: true) String id,
      int views,
      double averageRating,
      int numberOfBookings,
      @ServerTimestampConverter() FieldValue time}) {
    return _AnalyticsDTO(
      id: id,
      views: views,
      averageRating: averageRating,
      numberOfBookings: numberOfBookings,
      time: time,
    );
  }

// ignore: unused_element
  AnalyticsDTO fromJson(Map<String, Object> json) {
    return AnalyticsDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AnalyticsDTO = _$AnalyticsDTOTearOff();

/// @nodoc
mixin _$AnalyticsDTO {
  @JsonKey(ignore: true)
  String get id;
  int get views;
  double get averageRating;
  int get numberOfBookings;
  @ServerTimestampConverter()
  FieldValue get time;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AnalyticsDTOCopyWith<AnalyticsDTO> get copyWith;
}

/// @nodoc
abstract class $AnalyticsDTOCopyWith<$Res> {
  factory $AnalyticsDTOCopyWith(
          AnalyticsDTO value, $Res Function(AnalyticsDTO) then) =
      _$AnalyticsDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      int views,
      double averageRating,
      int numberOfBookings,
      @ServerTimestampConverter() FieldValue time});
}

/// @nodoc
class _$AnalyticsDTOCopyWithImpl<$Res> implements $AnalyticsDTOCopyWith<$Res> {
  _$AnalyticsDTOCopyWithImpl(this._value, this._then);

  final AnalyticsDTO _value;
  // ignore: unused_field
  final $Res Function(AnalyticsDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object views = freezed,
    Object averageRating = freezed,
    Object numberOfBookings = freezed,
    Object time = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      views: views == freezed ? _value.views : views as int,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating as double,
      numberOfBookings: numberOfBookings == freezed
          ? _value.numberOfBookings
          : numberOfBookings as int,
      time: time == freezed ? _value.time : time as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$AnalyticsDTOCopyWith<$Res>
    implements $AnalyticsDTOCopyWith<$Res> {
  factory _$AnalyticsDTOCopyWith(
          _AnalyticsDTO value, $Res Function(_AnalyticsDTO) then) =
      __$AnalyticsDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      int views,
      double averageRating,
      int numberOfBookings,
      @ServerTimestampConverter() FieldValue time});
}

/// @nodoc
class __$AnalyticsDTOCopyWithImpl<$Res> extends _$AnalyticsDTOCopyWithImpl<$Res>
    implements _$AnalyticsDTOCopyWith<$Res> {
  __$AnalyticsDTOCopyWithImpl(
      _AnalyticsDTO _value, $Res Function(_AnalyticsDTO) _then)
      : super(_value, (v) => _then(v as _AnalyticsDTO));

  @override
  _AnalyticsDTO get _value => super._value as _AnalyticsDTO;

  @override
  $Res call({
    Object id = freezed,
    Object views = freezed,
    Object averageRating = freezed,
    Object numberOfBookings = freezed,
    Object time = freezed,
  }) {
    return _then(_AnalyticsDTO(
      id: id == freezed ? _value.id : id as String,
      views: views == freezed ? _value.views : views as int,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating as double,
      numberOfBookings: numberOfBookings == freezed
          ? _value.numberOfBookings
          : numberOfBookings as int,
      time: time == freezed ? _value.time : time as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AnalyticsDTO extends _AnalyticsDTO {
  const _$_AnalyticsDTO(
      {@JsonKey(ignore: true) this.id,
      this.views,
      this.averageRating,
      this.numberOfBookings,
      @ServerTimestampConverter() this.time})
      : super._();

  factory _$_AnalyticsDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AnalyticsDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final int views;
  @override
  final double averageRating;
  @override
  final int numberOfBookings;
  @override
  @ServerTimestampConverter()
  final FieldValue time;

  @override
  String toString() {
    return 'AnalyticsDTO(id: $id, views: $views, averageRating: $averageRating, numberOfBookings: $numberOfBookings, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnalyticsDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.views, views) ||
                const DeepCollectionEquality().equals(other.views, views)) &&
            (identical(other.averageRating, averageRating) ||
                const DeepCollectionEquality()
                    .equals(other.averageRating, averageRating)) &&
            (identical(other.numberOfBookings, numberOfBookings) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfBookings, numberOfBookings)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(views) ^
      const DeepCollectionEquality().hash(averageRating) ^
      const DeepCollectionEquality().hash(numberOfBookings) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$AnalyticsDTOCopyWith<_AnalyticsDTO> get copyWith =>
      __$AnalyticsDTOCopyWithImpl<_AnalyticsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnalyticsDTOToJson(this);
  }
}

abstract class _AnalyticsDTO extends AnalyticsDTO {
  const _AnalyticsDTO._() : super._();
  const factory _AnalyticsDTO(
      {@JsonKey(ignore: true) String id,
      int views,
      double averageRating,
      int numberOfBookings,
      @ServerTimestampConverter() FieldValue time}) = _$_AnalyticsDTO;

  factory _AnalyticsDTO.fromJson(Map<String, dynamic> json) =
      _$_AnalyticsDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  int get views;
  @override
  double get averageRating;
  @override
  int get numberOfBookings;
  @override
  @ServerTimestampConverter()
  FieldValue get time;
  @override
  @JsonKey(ignore: true)
  _$AnalyticsDTOCopyWith<_AnalyticsDTO> get copyWith;
}
