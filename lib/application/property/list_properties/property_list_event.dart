part of 'property_list_bloc.dart';

@freezed
abstract class PropertyListEvent with _$PropertyListEvent {
  const factory PropertyListEvent.watchAllOpen() = _WatchAllStarted;
  const factory PropertyListEvent.propertiesReceived(
      Either<PropertyFailure, List<Property>> failureOrProperties,
      ) = _PropertiesReceived;
}
