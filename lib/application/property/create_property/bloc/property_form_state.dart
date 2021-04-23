
part of 'property_form_bloc.dart';

@freezed
class PropertyFormState with _$PropertyFormState {
  
  const factory PropertyFormState({
    @required Property property,
    @required bool showErrors,
    @required bool isSaving,
    @required bool isEditing,
    @required Option<Either<PropertyFailure, Unit>> propertyFailureOrSuccessOption
  }) = _PropertyFormState

  factory PropertyFormState.initial() => PropertyFormState(
    property: Property.empty(),
    showErrors: false,
    isSaving: false,
    isEditing: false,
    propertyFailureOrSuccessOption: none()
  );
}
