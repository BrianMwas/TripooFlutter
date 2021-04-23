part of 'property_actor_bloc.dart';

@freezed
abstract class PropertyActorEvent with _$PropertyActorEvent {
  const factory PropertyActorEvent.deleted(Property property) = _Deleted;
}
