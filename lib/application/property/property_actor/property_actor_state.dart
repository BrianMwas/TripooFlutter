part of 'property_actor_bloc.dart';

abstract class PropertyActorState extends Equatable {
  const PropertyActorState();
}

class PropertyActorInitial extends PropertyActorState {
  @override
  List<Object> get props => [];
}
