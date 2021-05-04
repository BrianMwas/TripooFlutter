import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'agent_list_event.dart';
part 'agent_list_state.dart';

class AgentListBloc extends Bloc<AgentListEvent, AgentListState> {
  AgentListBloc() : super(AgentListInitial());

  @override
  Stream<AgentListState> mapEventToState(
    AgentListEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
