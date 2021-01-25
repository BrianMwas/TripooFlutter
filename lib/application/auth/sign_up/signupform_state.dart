part of 'signupform_bloc.dart';

@freezed
abstract class SignupformState with _$SignupformState {
  const factory SignupformState(
          {@required EmailAddress email,
          @required Password password,
          @required Username username,
          @required bool isSubmitting,
          @required bool showErrorMessages,
          @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) =
      _SignupformState;

  factory SignupformState.initial() => SignupformState(
      email: EmailAddress(""),
      password: Password(""),
      username: Username(""),
      isSubmitting: false,
      showErrorMessages: false,
      authFailureOrSuccess: none());
}
