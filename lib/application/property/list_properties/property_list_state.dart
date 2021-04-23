part of 'property_list_bloc.dart';

@freezed
abstract class PropertyListState with _$PropertyListState {
  const factory PropertyListState.initial() = _Initial;
  const factory PropertyListState.loadInProgress() = _LoadInProgress;
  const factory PropertyListState.loadSuccess(List<Property> properties) = _LoadSuccess;
  const factory PropertyListState.loadFailure(PropertyFailure propertyFailure) = _LoadFailure;
}

