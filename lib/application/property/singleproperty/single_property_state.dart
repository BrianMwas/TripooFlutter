part of 'single_property_bloc.dart';

abstract class SinglePropertyState extends Equatable {
  const SinglePropertyState();
}

class SinglePropertyInitial extends SinglePropertyState {
  @override
  List<Object> get props => [];
}
