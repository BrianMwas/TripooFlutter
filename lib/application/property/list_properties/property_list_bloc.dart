import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:tripoo/domain/entity/failures/class_failure.dart';
import 'package:tripoo/domain/entity/property/property.dart';
import 'package:tripoo/domain/entity/repository/i_property_facade.dart';

part 'property_list_event.dart';
part 'property_list_state.dart';
part 'property_list_bloc.freezed.dart';

@injectable
class PropertyListBloc extends Bloc<PropertyListEvent, PropertyListState> {
  PropertyListBloc(this._propertyRepository) : super(const PropertyListState.initial());

  final IPropertyFacade _propertyRepository;

  StreamSubscription<Either<PropertyFailure, List<Property>>> _propertySubscription;

  @override
  Stream<PropertyListState> mapEventToState(
    PropertyListEvent event,
  ) async* {
   yield* event.map(
     watchAllOpen: (e) async* {
       yield const PropertyListState.loadInProgress();
       await _propertySubscription?.cancel();
       _propertySubscription = _propertyRepository.watchAllLiveProperties().listen((event) => add(PropertyListEvent.propertiesReceived(event)));

     },
     propertiesReceived: (e) async* {
       yield e.failureOrProperties.fold(
               (failure) => PropertyListState.loadFailure(failure),
               (properties) {
                 print("current property ${properties[0]}");
                 return PropertyListState.loadSuccess(properties);
                 },
       );
     }
   );
  }

  @override
  Future<void> close() async {
    await _propertySubscription.cancel();
    return super.close();
  }
}
