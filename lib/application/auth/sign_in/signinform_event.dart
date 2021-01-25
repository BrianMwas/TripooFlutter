part of 'signinform_bloc.dart';

@freezed
abstract class SigninformEvent with _$SigninformEvent {
  const factory SigninformEvent.emailChanged(String email) = EmailChanged;
  const factory SigninformEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory SigninformEvent.signinBtnPressed() = SigninBtnPressed;
  const factory SigninformEvent.signinWithGooglePressed() =
      SigninWithGooglePressed;
}
