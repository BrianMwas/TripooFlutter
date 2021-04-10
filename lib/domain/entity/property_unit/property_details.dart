import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_details.freezed.dart';

@freezed
abstract class PropertyDetails implements _$PropertyDetails {
  const factory PropertyDetails({double spaceSize, int rooms, int bathrooms}) =
      _PropertyDetails;

  const PropertyDetails._();

  factory PropertyDetails.empty() =>
      const PropertyDetails(spaceSize: 0.0, bathrooms: 1, rooms: 1);
}
