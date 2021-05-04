part of 'single_property_bloc.dart';

@freezed
abstract class SinglePropertyEvent with _$SinglePropertyEvent {
  const factory SinglePropertyEvent.watchProperty(String propertyId) = _WatchProperty;
  const factory SinglePropertyEvent.getSingleProperty(Either<PropertyFailure, Property> failureOrSuccess) = _GetSingleProperty;
}
