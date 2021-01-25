import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.userNotExist() = UserNotExist;
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.userDisabled() = UserDisabled;
  const factory AuthFailure.unexpectedError() = UnExpectedError;
  const factory AuthFailure.passChangeFailed() = PassChangeFailed;
  const factory AuthFailure.invalidCredentials() = InvalidCredentials;
}
