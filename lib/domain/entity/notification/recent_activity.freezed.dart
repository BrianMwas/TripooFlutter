// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'recent_activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RecentActivityTearOff {
  const _$RecentActivityTearOff();

// ignore: unused_element
  _RecentActivity call({String id, String title, String description}) {
    return _RecentActivity(
      id: id,
      title: title,
      description: description,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RecentActivity = _$RecentActivityTearOff();

/// @nodoc
mixin _$RecentActivity {
  String get id;
  String get title;
  String get description;

  $RecentActivityCopyWith<RecentActivity> get copyWith;
}

/// @nodoc
abstract class $RecentActivityCopyWith<$Res> {
  factory $RecentActivityCopyWith(
          RecentActivity value, $Res Function(RecentActivity) then) =
      _$RecentActivityCopyWithImpl<$Res>;
  $Res call({String id, String title, String description});
}

/// @nodoc
class _$RecentActivityCopyWithImpl<$Res>
    implements $RecentActivityCopyWith<$Res> {
  _$RecentActivityCopyWithImpl(this._value, this._then);

  final RecentActivity _value;
  // ignore: unused_field
  final $Res Function(RecentActivity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$RecentActivityCopyWith<$Res>
    implements $RecentActivityCopyWith<$Res> {
  factory _$RecentActivityCopyWith(
          _RecentActivity value, $Res Function(_RecentActivity) then) =
      __$RecentActivityCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String description});
}

/// @nodoc
class __$RecentActivityCopyWithImpl<$Res>
    extends _$RecentActivityCopyWithImpl<$Res>
    implements _$RecentActivityCopyWith<$Res> {
  __$RecentActivityCopyWithImpl(
      _RecentActivity _value, $Res Function(_RecentActivity) _then)
      : super(_value, (v) => _then(v as _RecentActivity));

  @override
  _RecentActivity get _value => super._value as _RecentActivity;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
  }) {
    return _then(_RecentActivity(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$_RecentActivity extends _RecentActivity {
  const _$_RecentActivity({this.id, this.title, this.description}) : super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'RecentActivity(id: $id, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecentActivity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description);

  @override
  _$RecentActivityCopyWith<_RecentActivity> get copyWith =>
      __$RecentActivityCopyWithImpl<_RecentActivity>(this, _$identity);
}

abstract class _RecentActivity extends RecentActivity {
  const _RecentActivity._() : super._();
  const factory _RecentActivity({String id, String title, String description}) =
      _$_RecentActivity;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  _$RecentActivityCopyWith<_RecentActivity> get copyWith;
}
