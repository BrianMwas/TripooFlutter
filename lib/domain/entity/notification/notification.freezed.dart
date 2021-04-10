// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NotificationTearOff {
  const _$NotificationTearOff();

// ignore: unused_element
  _Notification call(
      {String id, String title, String description, PriorityLevel level}) {
    return _Notification(
      id: id,
      title: title,
      description: description,
      level: level,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Notification = _$NotificationTearOff();

/// @nodoc
mixin _$Notification {
  String get id;
  String get title;
  String get description;
  PriorityLevel get level;

  $NotificationCopyWith<Notification> get copyWith;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res>;
  $Res call({String id, String title, String description, PriorityLevel level});
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  final Notification _value;
  // ignore: unused_field
  final $Res Function(Notification) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object level = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      level: level == freezed ? _value.level : level as PriorityLevel,
    ));
  }
}

/// @nodoc
abstract class _$NotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(
          _Notification value, $Res Function(_Notification) then) =
      __$NotificationCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String description, PriorityLevel level});
}

/// @nodoc
class __$NotificationCopyWithImpl<$Res> extends _$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(
      _Notification _value, $Res Function(_Notification) _then)
      : super(_value, (v) => _then(v as _Notification));

  @override
  _Notification get _value => super._value as _Notification;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object level = freezed,
  }) {
    return _then(_Notification(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      level: level == freezed ? _value.level : level as PriorityLevel,
    ));
  }
}

/// @nodoc
class _$_Notification extends _Notification {
  const _$_Notification({this.id, this.title, this.description, this.level})
      : super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final PriorityLevel level;

  @override
  String toString() {
    return 'Notification(id: $id, title: $title, description: $description, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Notification &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(level);

  @override
  _$NotificationCopyWith<_Notification> get copyWith =>
      __$NotificationCopyWithImpl<_Notification>(this, _$identity);
}

abstract class _Notification extends Notification {
  const _Notification._() : super._();
  const factory _Notification(
      {String id,
      String title,
      String description,
      PriorityLevel level}) = _$_Notification;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  PriorityLevel get level;
  @override
  _$NotificationCopyWith<_Notification> get copyWith;
}
