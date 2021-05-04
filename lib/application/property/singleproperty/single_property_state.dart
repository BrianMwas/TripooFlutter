part of 'single_property_bloc.dart';

@freezed
abstract class SinglePropertyState with _$SinglePropertyState {
  const factory SinglePropertyState.initial() = _Initial;
  const factory SinglePropertyState.loadInProgress() = _LoadInProgress;
  const factory SinglePropertyState.loadSuccess(Property property) = _LoadSuccess;
  const factory SinglePropertyState.loadFailure(PropertyFailure propertyFailure) = _LoadFailure;
}
