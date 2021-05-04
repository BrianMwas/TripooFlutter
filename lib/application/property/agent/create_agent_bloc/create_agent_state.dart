part of 'create_agent_bloc.dart';

abstract class CreateAgentState extends Equatable {
  const CreateAgentState();
}

class CreateAgentInitial extends CreateAgentState {
  @override
  List<Object> get props => [];
}
