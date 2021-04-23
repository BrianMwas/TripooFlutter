import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'property_actor_event.dart';
part 'property_actor_state.dart';

class PropertyActorBloc extends Bloc<PropertyActorEvent, PropertyActorState> {
  PropertyActorBloc() : super(PropertyActorInitial());

  @override
  Stream<PropertyActorState> mapEventToState(
    PropertyActorEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
