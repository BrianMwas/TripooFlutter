import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'create_agent_event.dart';
part 'create_agent_state.dart';

class CreateAgentBloc extends Bloc<CreateAgentEvent, CreateAgentState> {
  CreateAgentBloc() : super(CreateAgentInitial());

  @override
  Stream<CreateAgentState> mapEventToState(
    CreateAgentEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
