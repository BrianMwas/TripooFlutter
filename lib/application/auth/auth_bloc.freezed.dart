// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  WatchAuthChange watchAuthChange() {
    return const WatchAuthChange();
  }

// ignore: unused_element
  WatchAuthState watchAuthState(User user) {
    return WatchAuthState(
      user,
    );
  }

// ignore: unused_element
  AuthCheckRequested authCheckRequested() {
    return const AuthCheckRequested();
  }

// ignore: unused_element
  SignedOut signedOut() {
    return const SignedOut();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAuthChange(),
    @required TResult watchAuthState(User user),
    @required TResult authCheckRequested(),
    @required TResult signedOut(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAuthChange(),
    TResult watchAuthState(User user),
    TResult authCheckRequested(),
    TResult signedOut(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAuthChange(WatchAuthChange value),
    @required TResult watchAuthState(WatchAuthState value),
    @required TResult authCheckRequested(AuthCheckRequested value),
    @required TResult signedOut(SignedOut value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAuthChange(WatchAuthChange value),
    TResult watchAuthState(WatchAuthState value),
    TResult authCheckRequested(AuthCheckRequested value),
    TResult signedOut(SignedOut value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $WatchAuthChangeCopyWith<$Res> {
  factory $WatchAuthChangeCopyWith(
          WatchAuthChange value, $Res Function(WatchAuthChange) then) =
      _$WatchAuthChangeCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchAuthChangeCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $WatchAuthChangeCopyWith<$Res> {
  _$WatchAuthChangeCopyWithImpl(
      WatchAuthChange _value, $Res Function(WatchAuthChange) _then)
      : super(_value, (v) => _then(v as WatchAuthChange));

  @override
  WatchAuthChange get _value => super._value as WatchAuthChange;
}

/// @nodoc
class _$WatchAuthChange implements WatchAuthChange {
  const _$WatchAuthChange();

  @override
  String toString() {
    return 'AuthEvent.watchAuthChange()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchAuthChange);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAuthChange(),
    @required TResult watchAuthState(User user),
    @required TResult authCheckRequested(),
    @required TResult signedOut(),
  }) {
    assert(watchAuthChange != null);
    assert(watchAuthState != null);
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return watchAuthChange();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAuthChange(),
    TResult watchAuthState(User user),
    TResult authCheckRequested(),
    TResult signedOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAuthChange != null) {
      return watchAuthChange();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAuthChange(WatchAuthChange value),
    @required TResult watchAuthState(WatchAuthState value),
    @required TResult authCheckRequested(AuthCheckRequested value),
    @required TResult signedOut(SignedOut value),
  }) {
    assert(watchAuthChange != null);
    assert(watchAuthState != null);
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return watchAuthChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAuthChange(WatchAuthChange value),
    TResult watchAuthState(WatchAuthState value),
    TResult authCheckRequested(AuthCheckRequested value),
    TResult signedOut(SignedOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAuthChange != null) {
      return watchAuthChange(this);
    }
    return orElse();
  }
}

abstract class WatchAuthChange implements AuthEvent {
  const factory WatchAuthChange() = _$WatchAuthChange;
}

/// @nodoc
abstract class $WatchAuthStateCopyWith<$Res> {
  factory $WatchAuthStateCopyWith(
          WatchAuthState value, $Res Function(WatchAuthState) then) =
      _$WatchAuthStateCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$WatchAuthStateCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $WatchAuthStateCopyWith<$Res> {
  _$WatchAuthStateCopyWithImpl(
      WatchAuthState _value, $Res Function(WatchAuthState) _then)
      : super(_value, (v) => _then(v as WatchAuthState));

  @override
  WatchAuthState get _value => super._value as WatchAuthState;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(WatchAuthState(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$WatchAuthState implements WatchAuthState {
  const _$WatchAuthState(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.watchAuthState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WatchAuthState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $WatchAuthStateCopyWith<WatchAuthState> get copyWith =>
      _$WatchAuthStateCopyWithImpl<WatchAuthState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAuthChange(),
    @required TResult watchAuthState(User user),
    @required TResult authCheckRequested(),
    @required TResult signedOut(),
  }) {
    assert(watchAuthChange != null);
    assert(watchAuthState != null);
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return watchAuthState(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAuthChange(),
    TResult watchAuthState(User user),
    TResult authCheckRequested(),
    TResult signedOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAuthState != null) {
      return watchAuthState(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAuthChange(WatchAuthChange value),
    @required TResult watchAuthState(WatchAuthState value),
    @required TResult authCheckRequested(AuthCheckRequested value),
    @required TResult signedOut(SignedOut value),
  }) {
    assert(watchAuthChange != null);
    assert(watchAuthState != null);
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return watchAuthState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAuthChange(WatchAuthChange value),
    TResult watchAuthState(WatchAuthState value),
    TResult authCheckRequested(AuthCheckRequested value),
    TResult signedOut(SignedOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAuthState != null) {
      return watchAuthState(this);
    }
    return orElse();
  }
}

abstract class WatchAuthState implements AuthEvent {
  const factory WatchAuthState(User user) = _$WatchAuthState;

  User get user;
  @JsonKey(ignore: true)
  $WatchAuthStateCopyWith<WatchAuthState> get copyWith;
}

/// @nodoc
abstract class $AuthCheckRequestedCopyWith<$Res> {
  factory $AuthCheckRequestedCopyWith(
          AuthCheckRequested value, $Res Function(AuthCheckRequested) then) =
      _$AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthCheckRequestedCopyWith<$Res> {
  _$AuthCheckRequestedCopyWithImpl(
      AuthCheckRequested _value, $Res Function(AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as AuthCheckRequested));

  @override
  AuthCheckRequested get _value => super._value as AuthCheckRequested;
}

/// @nodoc
class _$AuthCheckRequested implements AuthCheckRequested {
  const _$AuthCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAuthChange(),
    @required TResult watchAuthState(User user),
    @required TResult authCheckRequested(),
    @required TResult signedOut(),
  }) {
    assert(watchAuthChange != null);
    assert(watchAuthState != null);
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAuthChange(),
    TResult watchAuthState(User user),
    TResult authCheckRequested(),
    TResult signedOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAuthChange(WatchAuthChange value),
    @required TResult watchAuthState(WatchAuthState value),
    @required TResult authCheckRequested(AuthCheckRequested value),
    @required TResult signedOut(SignedOut value),
  }) {
    assert(watchAuthChange != null);
    assert(watchAuthState != null);
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAuthChange(WatchAuthChange value),
    TResult watchAuthState(WatchAuthState value),
    TResult authCheckRequested(AuthCheckRequested value),
    TResult signedOut(SignedOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthCheckRequested implements AuthEvent {
  const factory AuthCheckRequested() = _$AuthCheckRequested;
}

/// @nodoc
abstract class $SignedOutCopyWith<$Res> {
  factory $SignedOutCopyWith(SignedOut value, $Res Function(SignedOut) then) =
      _$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignedOutCopyWith<$Res> {
  _$SignedOutCopyWithImpl(SignedOut _value, $Res Function(SignedOut) _then)
      : super(_value, (v) => _then(v as SignedOut));

  @override
  SignedOut get _value => super._value as SignedOut;
}

/// @nodoc
class _$SignedOut implements SignedOut {
  const _$SignedOut();

  @override
  String toString() {
    return 'AuthEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAuthChange(),
    @required TResult watchAuthState(User user),
    @required TResult authCheckRequested(),
    @required TResult signedOut(),
  }) {
    assert(watchAuthChange != null);
    assert(watchAuthState != null);
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAuthChange(),
    TResult watchAuthState(User user),
    TResult authCheckRequested(),
    TResult signedOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAuthChange(WatchAuthChange value),
    @required TResult watchAuthState(WatchAuthState value),
    @required TResult authCheckRequested(AuthCheckRequested value),
    @required TResult signedOut(SignedOut value),
  }) {
    assert(watchAuthChange != null);
    assert(watchAuthState != null);
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAuthChange(WatchAuthChange value),
    TResult watchAuthState(WatchAuthState value),
    TResult authCheckRequested(AuthCheckRequested value),
    TResult signedOut(SignedOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthEvent {
  const factory SignedOut() = _$SignedOut;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  UnAuthenticated unAuthenticated() {
    return const UnAuthenticated();
  }

// ignore: unused_element
  Authenticated authenticated(User user) {
    return Authenticated(
      user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult unAuthenticated(),
    @required TResult authenticated(User user),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult unAuthenticated(),
    TResult authenticated(User user),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult unAuthenticated(UnAuthenticated value),
    @required TResult authenticated(Authenticated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult unAuthenticated(UnAuthenticated value),
    TResult authenticated(Authenticated value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult unAuthenticated(),
    @required TResult authenticated(User user),
  }) {
    assert(initial != null);
    assert(unAuthenticated != null);
    assert(authenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult unAuthenticated(),
    TResult authenticated(User user),
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
    @required TResult initial(Initial value),
    @required TResult unAuthenticated(UnAuthenticated value),
    @required TResult authenticated(Authenticated value),
  }) {
    assert(initial != null);
    assert(unAuthenticated != null);
    assert(authenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult unAuthenticated(UnAuthenticated value),
    TResult authenticated(Authenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $UnAuthenticatedCopyWith<$Res> {
  factory $UnAuthenticatedCopyWith(
          UnAuthenticated value, $Res Function(UnAuthenticated) then) =
      _$UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnAuthenticatedCopyWith<$Res> {
  _$UnAuthenticatedCopyWithImpl(
      UnAuthenticated _value, $Res Function(UnAuthenticated) _then)
      : super(_value, (v) => _then(v as UnAuthenticated));

  @override
  UnAuthenticated get _value => super._value as UnAuthenticated;
}

/// @nodoc
class _$UnAuthenticated implements UnAuthenticated {
  const _$UnAuthenticated();

  @override
  String toString() {
    return 'AuthState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult unAuthenticated(),
    @required TResult authenticated(User user),
  }) {
    assert(initial != null);
    assert(unAuthenticated != null);
    assert(authenticated != null);
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult unAuthenticated(),
    TResult authenticated(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult unAuthenticated(UnAuthenticated value),
    @required TResult authenticated(Authenticated value),
  }) {
    assert(initial != null);
    assert(unAuthenticated != null);
    assert(authenticated != null);
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult unAuthenticated(UnAuthenticated value),
    TResult authenticated(Authenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements AuthState {
  const factory UnAuthenticated() = _$UnAuthenticated;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(Authenticated(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$Authenticated implements Authenticated {
  const _$Authenticated(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult unAuthenticated(),
    @required TResult authenticated(User user),
  }) {
    assert(initial != null);
    assert(unAuthenticated != null);
    assert(authenticated != null);
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult unAuthenticated(),
    TResult authenticated(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult unAuthenticated(UnAuthenticated value),
    @required TResult authenticated(Authenticated value),
  }) {
    assert(initial != null);
    assert(unAuthenticated != null);
    assert(authenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult unAuthenticated(UnAuthenticated value),
    TResult authenticated(Authenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated(User user) = _$Authenticated;

  User get user;
  @JsonKey(ignore: true)
  $AuthenticatedCopyWith<Authenticated> get copyWith;
}
