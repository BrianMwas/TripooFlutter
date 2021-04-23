
part of 'property_form_bloc.dart';

@freezed
abstract class PropertyFormState with _$PropertyFormState {
  
  const factory PropertyFormState({
    @required Property property,
    @required bool showErrors,
    @required bool hasLocation,
    @required bool isSaving,
    @required bool isEditing,
    @required Option<Either<PropertyFailure, Unit>> propertyFailureOrSuccessOption
  }) = _PropertyFormState;

  factory PropertyFormState.initial() => PropertyFormState(
    property: Property.empty(),
    showErrors: false,
    isSaving: false,
    hasLocation: false,
    isEditing: false,
    propertyFailureOrSuccessOption: none()
  );
}
