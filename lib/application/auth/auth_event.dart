part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.watchAuthChange() = WatchAuthChange;
  const factory AuthEvent.watchAuthState(User user) = WatchAuthState;
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthEvent.signedOut() = SignedOut;
}
