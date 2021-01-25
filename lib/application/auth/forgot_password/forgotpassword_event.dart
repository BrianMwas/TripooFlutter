part of 'forgotpassword_bloc.dart';

@freezed
abstract class ForgotpasswordEvent with _$ForgotpasswordEvent {
  const factory ForgotpasswordEvent.started() = _Started;
}