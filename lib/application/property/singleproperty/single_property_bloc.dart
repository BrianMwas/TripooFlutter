import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tripoo/domain/entity/failures/class_failure.dart';
import 'package:tripoo/domain/entity/property/property.dart';
import 'package:tripoo/domain/entity/repository/i_property_facade.dart';

part 'single_property_event.dart';
part 'single_property_state.dart';
part 'single_property_bloc.freezed.dart';

@injectable
class SinglePropertyBloc extends Bloc<SinglePropertyEvent, SinglePropertyState> {
  final IPropertyFacade _propertyFacade;
  SinglePropertyBloc(this._propertyFacade) : super(const SinglePropertyState.initial());

  StreamSubscription<Either<PropertyFailure, Property>> _propertyStream;

  @override
  Stream<SinglePropertyState> mapEventToState(
    SinglePropertyEvent event,
  ) async* {
    yield* event.map(
        watchProperty: (e) async* {
          yield const SinglePropertyState.loadInProgress();
          await _propertyStream?.cancel();
          _propertyStream = _propertyFacade.watchSingleProperty(e.propertyId)
          .listen((event) => add(SinglePropertyEvent.getSingleProperty(event)));
        },
        getSingleProperty: (e) async* {
          yield e.failureOrSuccess.fold((failure) => SinglePropertyState.loadFailure(failure), (property) => SinglePropertyState.loadSuccess(property));
        }
    );
  }

  @override
  Future<void> close() async {
    await _propertyStream?.cancel();
    return super.close();
  }
}
