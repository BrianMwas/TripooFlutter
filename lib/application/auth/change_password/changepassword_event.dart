part of 'changepassword_bloc.dart';

@freezed
abstract class ChangepasswordEvent with _$ChangepasswordEvent {
  const factory ChangepasswordEvent.started() = _Started;
}