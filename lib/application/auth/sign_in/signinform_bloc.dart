import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tripoo/domain/auth/auth_failure.dart';
import 'package:tripoo/domain/auth/i_auth_facade.dart';
import 'package:tripoo/domain/auth/value_objects.dart';

part 'signinform_event.dart';
part 'signinform_state.dart';
part 'signinform_bloc.freezed.dart';

@injectable
class SigninformBloc extends Bloc<SigninformEvent, SigninformState> {
  final IAuthFacade authFacade;
  SigninformBloc(this.authFacade) : super(SigninformState.initial());

  @override
  Stream<SigninformState> mapEventToState(
    SigninformEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        state.copyWith(
          email: EmailAddress(e.email),
          authFailureOrSuccess: none(),
        );
      },
      passwordChanged: (e) async* {
        state.copyWith(
          password: Password(e.password),
          authFailureOrSuccess: none(),
        );
      },
      signinWithGooglePressed: (e) async* {
        yield state.copyWith(
            isSubmitting: true,
            signingInGoogle: true,
            authFailureOrSuccess: none(),
        );

        final failureOrSuccess =
            await authFacade.signInWithGoogle();

        print("google signin $failureOrSuccess");

        yield state.copyWith(
          isSubmitting: false,
          signingInGoogle: false,
          authFailureOrSuccess: some(failureOrSuccess),
        );
      },
      signinBtnPressed: (v) async* {
        Either<AuthFailure, Unit> failureOrSuccess;

        if (state.email.isValid() && state.password.isValid()) {
          yield state.copyWith(
              isSubmitting: true, authFailureOrSuccess: none());

          failureOrSuccess = await authFacade.signInWithEmailAndPassword(
            emailAddress: state.email,
            password: state.password,
          );

          yield state.copyWith(
              isSubmitting: false,
              authFailureOrSuccess: some(failureOrSuccess));
        }

        yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccess: optionOf(failureOrSuccess));
      },
    );
  }
}
