import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tripoo/domain/entity/failures/class_failure.dart';
import 'package:tripoo/domain/entity/property/property.dart';
import 'package:tripoo/domain/entity/repository/i_property_facade.dart';

part 'property_actor_event.dart';
part 'property_actor_state.dart';
part 'property_actor_bloc.freezed.dart';

@injectable
class PropertyActorBloc extends Bloc<PropertyActorEvent, PropertyActorState> {
  final IPropertyFacade _propertyFacade;
  PropertyActorBloc(this._propertyFacade)
      : super(const PropertyActorState.initial());

  @override
  Stream<PropertyActorState> mapEventToState(
    PropertyActorEvent event,
  ) async* {
    yield* event.map(
      deleted: (e) async* {
        yield const PropertyActorState.actionInProgress();
        final possiblefailure =
            await _propertyFacade.deleteProperty(e.property);
        yield possiblefailure.fold(
          (f) => PropertyActorState.deleteFailure(f),
          (_) => const PropertyActorState.deleteSuccess(),
        );
      },
    );
  }
}
