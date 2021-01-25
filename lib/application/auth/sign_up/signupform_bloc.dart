import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tripoo/domain/auth/auth_failure.dart';
import 'package:tripoo/domain/auth/i_auth_facade.dart';
import 'package:tripoo/domain/auth/value_objects.dart';

part 'signupform_event.dart';
part 'signupform_state.dart';
part 'signupform_bloc.freezed.dart';

@injectable
class SignupformBloc extends Bloc<SignupformEvent, SignupformState> {
  final IAuthFacade authFacade;

  SignupformBloc(this.authFacade) : super(SignupformState.initial());

  @override
  Stream<SignupformState> mapEventToState(
    SignupformEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
            email: EmailAddress(e.emailAddress), authFailureOrSuccess: none());
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
            password: Password(e.password), authFailureOrSuccess: none());
      },
      usernameChanged: (e) async* {
        yield state.copyWith(
            username: Username(e.username), authFailureOrSuccess: none());
      },
      signupBtnPressed: (v) async* {
        Either<AuthFailure, Unit> failureOrSuccess;

        if (state.email.isValid() &&
            state.password.isValid() &&
            state.username.isValid()) {
          yield state.copyWith(
              isSubmitting: true, authFailureOrSuccess: none());

          failureOrSuccess = await authFacade.registerWithEmailAndPass(
              email: state.email,
              password: state.password,
              username: state.username);

          yield state.copyWith(
              isSubmitting: false,
              // some function helps in
              authFailureOrSuccess: some(failureOrSuccess));
        }

        yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            // optionOf is a short cut to
            authFailureOrSuccess: optionOf(failureOrSuccess));
      },
    );
  }
}
