part of 'signinform_bloc.dart';

@freezed
abstract class SigninformState with _$SigninformState {
  const factory SigninformState({
    @required EmailAddress email,
    @required Password password,
    @required bool isSubmitting,
    @required bool signingInGoogle,
    @required bool showErrorMessages,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _SigninformState;

  factory SigninformState.initial() => SigninformState(
        email: EmailAddress(""),
        password: Password(""),
        isSubmitting: false,
    signingInGoogle: false,
        showErrorMessages: false,
        authFailureOrSuccess: none(),
      );
}
