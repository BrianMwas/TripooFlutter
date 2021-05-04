import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'single_property_event.dart';
part 'single_property_state.dart';

class SinglePropertyBloc extends Bloc<SinglePropertyEvent, SinglePropertyState> {
  SinglePropertyBloc() : super(SinglePropertyInitial());

  @override
  Stream<SinglePropertyState> mapEventToState(
    SinglePropertyEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
