import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tripoo/domain/entity/failures/class_failure.dart';
import 'package:tripoo/domain/entity/property/property.dart';
import 'package:tripoo/domain/entity/property/value_objects.dart';
import 'package:tripoo/domain/entity/repository/i_property_facade.dart';

part 'property_form_event.dart';
part 'property_form_state.dart';
part 'property_form_bloc.freezed.dart';

@injectable
class PropertyFormBloc extends Bloc<PropertyFormEvent, PropertyFormState> {
  final IPropertyFacade _propertyFacade;

  PropertyFormBloc(this._propertyFacade) : super(PropertyFormState.initial());

  @override
  Stream<PropertyFormState> mapEventToState(PropertyFormEvent event,) async* {
    yield* event.map(
      dateChanged: (e) async* {
        yield state.copyWith(
          property: state.property.copyWith(completionDate: e.date),
          propertyFailureOrSuccessOption: none(),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          property: state.property.copyWith(name: PropertyName(e.name)),
          propertyFailureOrSuccessOption: none(),
        );
      },
      descriptionChanged: (e) async* {
        yield state.copyWith(
          property: state.property
              .copyWith(description: PropertyDescription(e.description)),
          propertyFailureOrSuccessOption: none(),
        );
      },
      imageChanged: (e) async* {
        print("image changed ${e.image}");
        yield state.copyWith(
          property: state.property.copyWith(imageURL: e.image),
          propertyFailureOrSuccessOption: none(),
        );
      },
      initialized: (e) async* {
        yield e.initialProperty.fold(() => state, (initialProperty) {
          return state.copyWith(
            property: initialProperty,
            isEditing: true,
            propertyFailureOrSuccessOption: none(),
          );
        });
      },
      liveStatusChanged: (e) async* {
        yield state.copyWith(
          property: state.property.copyWith(live: !state.property.live),
          propertyFailureOrSuccessOption: none(),
        );
      },
      locationChanged: (e) async* {
        yield state.copyWith(
          property: state.property.copyWith(location: e.location),
          propertyFailureOrSuccessOption: none(),
        );
      },
      save: (e) async* {
        Either<PropertyFailure, Unit> _failureSuccessOption;

        yield state.copyWith(
            isSaving: true, propertyFailureOrSuccessOption: none());

        if (state.property.name.isValid() &&
            state.property.description.isValid()) {
          _failureSuccessOption = state.isEditing
              ? await _propertyFacade.updateProperty(state.property)
              : await _propertyFacade.createProperty(state.property);
        }

        yield state.copyWith(
            isSaving: false,
            showErrors: true,
            propertyFailureOrSuccessOption: optionOf(_failureSuccessOption));
      },
    );
  }
}
