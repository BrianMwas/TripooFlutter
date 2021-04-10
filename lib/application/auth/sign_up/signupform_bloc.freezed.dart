// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signupform_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignupformEventTearOff {
  const _$SignupformEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged(String emailAddress) {
    return EmailChanged(
      emailAddress,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  UsernameChanged usernameChanged(String username) {
    return UsernameChanged(
      username,
    );
  }

// ignore: unused_element
  SignupBtnPressed signupBtnPressed() {
    return const SignupBtnPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $SignupformEvent = _$SignupformEventTearOff();

/// @nodoc
mixin _$SignupformEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailAddress),
    @required TResult passwordChanged(String password),
    @required TResult usernameChanged(String username),
    @required TResult signupBtnPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailAddress),
    TResult passwordChanged(String password),
    TResult usernameChanged(String username),
    TResult signupBtnPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult signupBtnPressed(SignupBtnPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult usernameChanged(UsernameChanged value),
    TResult signupBtnPressed(SignupBtnPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignupformEventCopyWith<$Res> {
  factory $SignupformEventCopyWith(
          SignupformEvent value, $Res Function(SignupformEvent) then) =
      _$SignupformEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignupformEventCopyWithImpl<$Res>
    implements $SignupformEventCopyWith<$Res> {
  _$SignupformEventCopyWithImpl(this._value, this._then);

  final SignupformEvent _value;
  // ignore: unused_field
  final $Res Function(SignupformEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailAddress});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignupformEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailAddress = freezed,
  }) {
    return _then(EmailChanged(
      emailAddress == freezed ? _value.emailAddress : emailAddress as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailAddress) : assert(emailAddress != null);

  @override
  final String emailAddress;

  @override
  String toString() {
    return 'SignupformEvent.emailChanged(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailAddress);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailAddress),
    @required TResult passwordChanged(String password),
    @required TResult usernameChanged(String username),
    @required TResult signupBtnPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(signupBtnPressed != null);
    return emailChanged(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailAddress),
    TResult passwordChanged(String password),
    TResult usernameChanged(String username),
    TResult signupBtnPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult signupBtnPressed(SignupBtnPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(signupBtnPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult usernameChanged(UsernameChanged value),
    TResult signupBtnPressed(SignupBtnPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignupformEvent {
  const factory EmailChanged(String emailAddress) = _$EmailChanged;

  String get emailAddress;
  @JsonKey(ignore: true)
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
    extends _$SignupformEventCopyWithImpl<$Res>
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
    return 'SignupformEvent.passwordChanged(password: $password)';
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

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailAddress),
    @required TResult passwordChanged(String password),
    @required TResult usernameChanged(String username),
    @required TResult signupBtnPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(signupBtnPressed != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailAddress),
    TResult passwordChanged(String password),
    TResult usernameChanged(String username),
    TResult signupBtnPressed(),
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
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult signupBtnPressed(SignupBtnPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(signupBtnPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult usernameChanged(UsernameChanged value),
    TResult signupBtnPressed(SignupBtnPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignupformEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    extends _$SignupformEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(UsernameChanged(
      username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.username) : assert(username != null);

  @override
  final String username;

  @override
  String toString() {
    return 'SignupformEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailAddress),
    @required TResult passwordChanged(String password),
    @required TResult usernameChanged(String username),
    @required TResult signupBtnPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(signupBtnPressed != null);
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailAddress),
    TResult passwordChanged(String password),
    TResult usernameChanged(String username),
    TResult signupBtnPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult signupBtnPressed(SignupBtnPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(signupBtnPressed != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult usernameChanged(UsernameChanged value),
    TResult signupBtnPressed(SignupBtnPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements SignupformEvent {
  const factory UsernameChanged(String username) = _$UsernameChanged;

  String get username;
  @JsonKey(ignore: true)
  $UsernameChangedCopyWith<UsernameChanged> get copyWith;
}

/// @nodoc
abstract class $SignupBtnPressedCopyWith<$Res> {
  factory $SignupBtnPressedCopyWith(
          SignupBtnPressed value, $Res Function(SignupBtnPressed) then) =
      _$SignupBtnPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignupBtnPressedCopyWithImpl<$Res>
    extends _$SignupformEventCopyWithImpl<$Res>
    implements $SignupBtnPressedCopyWith<$Res> {
  _$SignupBtnPressedCopyWithImpl(
      SignupBtnPressed _value, $Res Function(SignupBtnPressed) _then)
      : super(_value, (v) => _then(v as SignupBtnPressed));

  @override
  SignupBtnPressed get _value => super._value as SignupBtnPressed;
}

/// @nodoc
class _$SignupBtnPressed implements SignupBtnPressed {
  const _$SignupBtnPressed();

  @override
  String toString() {
    return 'SignupformEvent.signupBtnPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignupBtnPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailAddress),
    @required TResult passwordChanged(String password),
    @required TResult usernameChanged(String username),
    @required TResult signupBtnPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(signupBtnPressed != null);
    return signupBtnPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailAddress),
    TResult passwordChanged(String password),
    TResult usernameChanged(String username),
    TResult signupBtnPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signupBtnPressed != null) {
      return signupBtnPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult signupBtnPressed(SignupBtnPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(signupBtnPressed != null);
    return signupBtnPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult usernameChanged(UsernameChanged value),
    TResult signupBtnPressed(SignupBtnPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signupBtnPressed != null) {
      return signupBtnPressed(this);
    }
    return orElse();
  }
}

abstract class SignupBtnPressed implements SignupformEvent {
  const factory SignupBtnPressed() = _$SignupBtnPressed;
}

/// @nodoc
class _$SignupformStateTearOff {
  const _$SignupformStateTearOff();

// ignore: unused_element
  _SignupformState call(
      {@required EmailAddress email,
      @required Password password,
      @required Username username,
      @required bool isSubmitting,
      @required bool showErrorMessages,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) {
    return _SignupformState(
      email: email,
      password: password,
      username: username,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      authFailureOrSuccess: authFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignupformState = _$SignupformStateTearOff();

/// @nodoc
mixin _$SignupformState {
  EmailAddress get email;
  Password get password;
  Username get username;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;

  @JsonKey(ignore: true)
  $SignupformStateCopyWith<SignupformState> get copyWith;
}

/// @nodoc
abstract class $SignupformStateCopyWith<$Res> {
  factory $SignupformStateCopyWith(
          SignupformState value, $Res Function(SignupformState) then) =
      _$SignupformStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress email,
      Password password,
      Username username,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class _$SignupformStateCopyWithImpl<$Res>
    implements $SignupformStateCopyWith<$Res> {
  _$SignupformStateCopyWithImpl(this._value, this._then);

  final SignupformState _value;
  // ignore: unused_field
  final $Res Function(SignupformState) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object username = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      username: username == freezed ? _value.username : username as Username,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
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
abstract class _$SignupformStateCopyWith<$Res>
    implements $SignupformStateCopyWith<$Res> {
  factory _$SignupformStateCopyWith(
          _SignupformState value, $Res Function(_SignupformState) then) =
      __$SignupformStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress email,
      Password password,
      Username username,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class __$SignupformStateCopyWithImpl<$Res>
    extends _$SignupformStateCopyWithImpl<$Res>
    implements _$SignupformStateCopyWith<$Res> {
  __$SignupformStateCopyWithImpl(
      _SignupformState _value, $Res Function(_SignupformState) _then)
      : super(_value, (v) => _then(v as _SignupformState));

  @override
  _SignupformState get _value => super._value as _SignupformState;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object username = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_SignupformState(
      email: email == freezed ? _value.email : email as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      username: username == freezed ? _value.username : username as Username,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
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
class _$_SignupformState implements _SignupformState {
  const _$_SignupformState(
      {@required this.email,
      @required this.password,
      @required this.username,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.authFailureOrSuccess})
      : assert(email != null),
        assert(password != null),
        assert(username != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(authFailureOrSuccess != null);

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final Username username;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccess;

  @override
  String toString() {
    return 'SignupformState(email: $email, password: $password, username: $username, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignupformState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
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
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$SignupformStateCopyWith<_SignupformState> get copyWith =>
      __$SignupformStateCopyWithImpl<_SignupformState>(this, _$identity);
}

abstract class _SignupformState implements SignupformState {
  const factory _SignupformState(
          {@required EmailAddress email,
          @required Password password,
          @required Username username,
          @required bool isSubmitting,
          @required bool showErrorMessages,
          @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) =
      _$_SignupformState;

  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  Username get username;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$SignupformStateCopyWith<_SignupformState> get copyWith;
}
