import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart' as fire;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tripoo/domain/auth/i_auth_facade.dart';
import 'package:tripoo/domain/auth/user.dart';
import 'package:tripoo/domain/auth/value_objects.dart';

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
    yield* event.map(
      watchAuthChange: (e) async* {
        fire.FirebaseAuth.instance.authStateChanges()
            .listen((event) => add(AuthEvent.watchAuthState(User(
          id: event.uid,
          username: Username(event.displayName),
          email: EmailAddress(event.email),
          emailVerified: event.emailVerified,
          providerId: event.providerData[0].providerId,
          fcm_token: null,
        ),))

        );
      },
      watchAuthState: (e) async* {
        yield AuthState.authenticated(e.user);
      },
      authCheckRequested: (e) async* {
        final userOption = await authFacade.getSignedInUser();
        yield userOption.fold(() => const AuthState.unAuthenticated(),
            (user) => AuthState.authenticated(user));
      },
      signedOut: (e) async* {
      await authFacade.signOut();
      yield const AuthState.unAuthenticated();
    });
  }
}

