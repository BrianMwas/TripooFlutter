part of 'property_form_bloc.dart';

@freezed
abstract class PropertyFormEvent with _$PropertyFormEvent {
  const factory PropertyFormEvent.initialized(Option<Property> initialProperty) = _Initialized;
  const factory PropertyFormEvent.nameChanged(String name) = _NameChanged;
  const factory PropertyFormEvent.descriptionChanged(String description) = _DescriptionEvent;
  const factory PropertyFormEvent.dateChanged(DateTime date) = _DateChanged;
  const factory PropertyFormEvent.liveStatusChanged() = _LiveStatusChanged;
  const factory PropertyFormEvent.imageChanged(String image) = _ImageChanged;
  const factory PropertyFormEvent.locationChanged(GeoPoint location) = _LocationChanged;
  const factory PropertyFormEvent.save() = _SaveBtnPressed;
}