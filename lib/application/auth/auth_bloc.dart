import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tripoo/domain/auth/i_auth_facade.dart';
import 'package:tripoo/domain/auth/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authFacade;

  AuthBloc(this.authFacade) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(authCheckRequested: (e) async* {
      final userOption = await authFacade.getSignedInUser();

      yield userOption.fold(() => const AuthState.unAuthenticated(),
          (user) => AuthState.authenticated(user));
    }, signedOut: (e) async* {
      await authFacade.signOut();
      yield const AuthState.unAuthenticated();
    });
  }
}
