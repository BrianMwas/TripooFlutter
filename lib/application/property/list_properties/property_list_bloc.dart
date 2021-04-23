import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'property_list_event.dart';
part 'property_list_state.dart';

class PropertyListBloc extends Bloc<PropertyListEvent, PropertyListState> {
  PropertyListBloc() : super(PropertyListInitial());

  @override
  Stream<PropertyListState> mapEventToState(
    PropertyListEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
