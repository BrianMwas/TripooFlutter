part of 'property_actor_bloc.dart';

@freezed
abstract class PropertyActorState with _$PropertyActorState {
  const factory PropertyActorState.initial() = _Initial;
  const factory PropertyActorState.actionInProgress() = _ActionInProgress;
  const factory PropertyActorState.deleteFailure(PropertyFailure failure) = _DeleteFailure;
  const factory PropertyActorState.deleteSuccess() = _DeleteSuccess;
}
