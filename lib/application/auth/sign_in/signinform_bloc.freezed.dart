// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signinform_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SigninformEventTearOff {
  const _$SigninformEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  SigninBtnPressed signinBtnPressed() {
    return const SigninBtnPressed();
  }

// ignore: unused_element
  SigninWithGooglePressed signinWithGooglePressed() {
    return const SigninWithGooglePressed();
  }
}

/// @nodoc
// ignore: unused_element
const $SigninformEvent = _$SigninformEventTearOff();

/// @nodoc
mixin _$SigninformEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signinBtnPressed(),
    @required TResult signinWithGooglePressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signinBtnPressed(),
    TResult signinWithGooglePressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult signinBtnPressed(SigninBtnPressed value),
    @required TResult signinWithGooglePressed(SigninWithGooglePressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult signinBtnPressed(SigninBtnPressed value),
    TResult signinWithGooglePressed(SigninWithGooglePressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SigninformEventCopyWith<$Res> {
  factory $SigninformEventCopyWith(
          SigninformEvent value, $Res Function(SigninformEvent) then) =
      _$SigninformEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SigninformEventCopyWithImpl<$Res>
    implements $SigninformEventCopyWith<$Res> {
  _$SigninformEventCopyWithImpl(this._value, this._then);

  final SigninformEvent _value;
  // ignore: unused_field
  final $Res Function(SigninformEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SigninformEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SigninformEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signinBtnPressed(),
    @required TResult signinWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signinBtnPressed != null);
    assert(signinWithGooglePressed != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signinBtnPressed(),
    TResult signinWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult signinBtnPressed(SigninBtnPressed value),
    @required TResult signinWithGooglePressed(SigninWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signinBtnPressed != null);
    assert(signinWithGooglePressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult signinBtnPressed(SigninBtnPressed value),
    TResult signinWithGooglePressed(SigninWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SigninformEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SigninformEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'SigninformEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signinBtnPressed(),
    @required TResult signinWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signinBtnPressed != null);
    assert(signinWithGooglePressed != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signinBtnPressed(),
    TResult signinWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult signinBtnPressed(SigninBtnPressed value),
    @required TResult signinWithGooglePressed(SigninWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signinBtnPressed != null);
    assert(signinWithGooglePressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult signinBtnPressed(SigninBtnPressed value),
    TResult signinWithGooglePressed(SigninWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SigninformEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $SigninBtnPressedCopyWith<$Res> {
  factory $SigninBtnPressedCopyWith(
          SigninBtnPressed value, $Res Function(SigninBtnPressed) then) =
      _$SigninBtnPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SigninBtnPressedCopyWithImpl<$Res>
    extends _$SigninformEventCopyWithImpl<$Res>
    implements $SigninBtnPressedCopyWith<$Res> {
  _$SigninBtnPressedCopyWithImpl(
      SigninBtnPressed _value, $Res Function(SigninBtnPressed) _then)
      : super(_value, (v) => _then(v as SigninBtnPressed));

  @override
  SigninBtnPressed get _value => super._value as SigninBtnPressed;
}

/// @nodoc
class _$SigninBtnPressed implements SigninBtnPressed {
  const _$SigninBtnPressed();

  @override
  String toString() {
    return 'SigninformEvent.signinBtnPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SigninBtnPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signinBtnPressed(),
    @required TResult signinWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signinBtnPressed != null);
    assert(signinWithGooglePressed != null);
    return signinBtnPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signinBtnPressed(),
    TResult signinWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signinBtnPressed != null) {
      return signinBtnPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult signinBtnPressed(SigninBtnPressed value),
    @required TResult signinWithGooglePressed(SigninWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signinBtnPressed != null);
    assert(signinWithGooglePressed != null);
    return signinBtnPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult signinBtnPressed(SigninBtnPressed value),
    TResult signinWithGooglePressed(SigninWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signinBtnPressed != null) {
      return signinBtnPressed(this);
    }
    return orElse();
  }
}

abstract class SigninBtnPressed implements SigninformEvent {
  const factory SigninBtnPressed() = _$SigninBtnPressed;
}

/// @nodoc
abstract class $SigninWithGooglePressedCopyWith<$Res> {
  factory $SigninWithGooglePressedCopyWith(SigninWithGooglePressed value,
          $Res Function(SigninWithGooglePressed) then) =
      _$SigninWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SigninWithGooglePressedCopyWithImpl<$Res>
    extends _$SigninformEventCopyWithImpl<$Res>
    implements $SigninWithGooglePressedCopyWith<$Res> {
  _$SigninWithGooglePressedCopyWithImpl(SigninWithGooglePressed _value,
      $Res Function(SigninWithGooglePressed) _then)
      : super(_value, (v) => _then(v as SigninWithGooglePressed));

  @override
  SigninWithGooglePressed get _value => super._value as SigninWithGooglePressed;
}

/// @nodoc
class _$SigninWithGooglePressed implements SigninWithGooglePressed {
  const _$SigninWithGooglePressed();

  @override
  String toString() {
    return 'SigninformEvent.signinWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SigninWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signinBtnPressed(),
    @required TResult signinWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signinBtnPressed != null);
    assert(signinWithGooglePressed != null);
    return signinWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signinBtnPressed(),
    TResult signinWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signinWithGooglePressed != null) {
      return signinWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult signinBtnPressed(SigninBtnPressed value),
    @required TResult signinWithGooglePressed(SigninWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signinBtnPressed != null);
    assert(signinWithGooglePressed != null);
    return signinWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult signinBtnPressed(SigninBtnPressed value),
    TResult signinWithGooglePressed(SigninWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signinWithGooglePressed != null) {
      return signinWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SigninWithGooglePressed implements SigninformEvent {
  const factory SigninWithGooglePressed() = _$SigninWithGooglePressed;
}

/// @nodoc
class _$SigninformStateTearOff {
  const _$SigninformStateTearOff();

// ignore: unused_element
  _SigninformState call(
      {@required EmailAddress email,
      @required Password password,
      @required bool isSubmitting,
      @required bool signingInGoogle,
      @required bool showErrorMessages,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) {
    return _SigninformState(
      email: email,
      password: password,
      isSubmitting: isSubmitting,
      signingInGoogle: signingInGoogle,
      showErrorMessages: showErrorMessages,
      authFailureOrSuccess: authFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SigninformState = _$SigninformStateTearOff();

/// @nodoc
mixin _$SigninformState {
  EmailAddress get email;
  Password get password;
  bool get isSubmitting;
  bool get signingInGoogle;
  bool get showErrorMessages;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;

  $SigninformStateCopyWith<SigninformState> get copyWith;
}

/// @nodoc
abstract class $SigninformStateCopyWith<$Res> {
  factory $SigninformStateCopyWith(
          SigninformState value, $Res Function(SigninformState) then) =
      _$SigninformStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress email,
      Password password,
      bool isSubmitting,
      bool signingInGoogle,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class _$SigninformStateCopyWithImpl<$Res>
    implements $SigninformStateCopyWith<$Res> {
  _$SigninformStateCopyWithImpl(this._value, this._then);

  final SigninformState _value;
  // ignore: unused_field
  final $Res Function(SigninformState) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object signingInGoogle = freezed,
    Object showErrorMessages = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      signingInGoogle: signingInGoogle == freezed
          ? _value.signingInGoogle
          : signingInGoogle as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SigninformStateCopyWith<$Res>
    implements $SigninformStateCopyWith<$Res> {
  factory _$SigninformStateCopyWith(
          _SigninformState value, $Res Function(_SigninformState) then) =
      __$SigninformStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress email,
      Password password,
      bool isSubmitting,
      bool signingInGoogle,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class __$SigninformStateCopyWithImpl<$Res>
    extends _$SigninformStateCopyWithImpl<$Res>
    implements _$SigninformStateCopyWith<$Res> {
  __$SigninformStateCopyWithImpl(
      _SigninformState _value, $Res Function(_SigninformState) _then)
      : super(_value, (v) => _then(v as _SigninformState));

  @override
  _SigninformState get _value => super._value as _SigninformState;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object signingInGoogle = freezed,
    Object showErrorMessages = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_SigninformState(
      email: email == freezed ? _value.email : email as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      signingInGoogle: signingInGoogle == freezed
          ? _value.signingInGoogle
          : signingInGoogle as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SigninformState implements _SigninformState {
  const _$_SigninformState(
      {@required this.email,
      @required this.password,
      @required this.isSubmitting,
      @required this.signingInGoogle,
      @required this.showErrorMessages,
      @required this.authFailureOrSuccess})
      : assert(email != null),
        assert(password != null),
        assert(isSubmitting != null),
        assert(signingInGoogle != null),
        assert(showErrorMessages != null),
        assert(authFailureOrSuccess != null);

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final bool signingInGoogle;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccess;

  @override
  String toString() {
    return 'SigninformState(email: $email, password: $password, isSubmitting: $isSubmitting, signingInGoogle: $signingInGoogle, showErrorMessages: $showErrorMessages, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SigninformState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.signingInGoogle, signingInGoogle) ||
                const DeepCollectionEquality()
                    .equals(other.signingInGoogle, signingInGoogle)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.authFailureOrSuccess, authFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(signingInGoogle) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess);

  @override
  _$SigninformStateCopyWith<_SigninformState> get copyWith =>
      __$SigninformStateCopyWithImpl<_SigninformState>(this, _$identity);
}

abstract class _SigninformState implements SigninformState {
  const factory _SigninformState(
          {@required EmailAddress email,
          @required Password password,
          @required bool isSubmitting,
          @required bool signingInGoogle,
          @required bool showErrorMessages,
          @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) =
      _$_SigninformState;

  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  bool get signingInGoogle;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;
  @override
  _$SigninformStateCopyWith<_SigninformState> get copyWith;
}
