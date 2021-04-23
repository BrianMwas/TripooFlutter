import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_form_event.dart';
part 'property_form_state.dart';
part 'property_form_bloc.freezed.dart';

class PropertyFormBloc extends Bloc<PropertyFormEvent, PropertyFormState> {
  PropertyFormBloc() : super(_Initial());

  @override
  Stream<PropertyFormState> mapEventToState(
    PropertyFormEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
