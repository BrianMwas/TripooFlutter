import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgotpassword_event.dart';
part 'forgotpassword_state.dart';
part 'forgotpassword_bloc.freezed.dart';

class ForgotpasswordBloc extends Bloc<ForgotpasswordEvent, ForgotpasswordState> {
  ForgotpasswordBloc() : super(_Initial());

  @override
  Stream<ForgotpasswordState> mapEventToState(
    ForgotpasswordEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
