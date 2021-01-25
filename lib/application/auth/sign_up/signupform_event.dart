part of 'signupform_bloc.dart';

@freezed
abstract class SignupformEvent with _$SignupformEvent {
  const factory SignupformEvent.emailChanged(String emailAddress) =
      EmailChanged;
  const factory SignupformEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory SignupformEvent.usernameChanged(String username) =
      UsernameChanged;
  const factory SignupformEvent.signupBtnPressed() = SignupBtnPressed;
}
