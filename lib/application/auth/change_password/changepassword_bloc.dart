import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'changepassword_event.dart';
part 'changepassword_state.dart';
part 'changepassword_bloc.freezed.dart';

class ChangepasswordBloc extends Bloc<ChangepasswordEvent, ChangepasswordState> {
  ChangepasswordBloc() : super(_Initial());

  @override
  Stream<ChangepasswordState> mapEventToState(
    ChangepasswordEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
