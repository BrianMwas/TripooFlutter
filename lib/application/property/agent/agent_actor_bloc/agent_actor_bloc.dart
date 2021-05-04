import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'agent_actor_event.dart';
part 'agent_actor_state.dart';

class AgentActorBloc extends Bloc<AgentActorEvent, AgentActorState> {
  AgentActorBloc() : super(AgentActorInitial());

  @override
  Stream<AgentActorState> mapEventToState(
    AgentActorEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
