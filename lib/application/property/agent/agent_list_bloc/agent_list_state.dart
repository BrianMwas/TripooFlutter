part of 'agent_list_bloc.dart';

abstract class AgentListState extends Equatable {
  const AgentListState();
}

class AgentListInitial extends AgentListState {
  @override
  List<Object> get props => [];
}
