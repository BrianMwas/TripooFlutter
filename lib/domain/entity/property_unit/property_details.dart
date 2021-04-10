
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_details.freezed.dart';

@freezed
abstract class HomeDetails {
  const factory HomeDetails({
    double spaceSize,
    int bedrooms,
    int bathrooms
  }) = _HomeDetails;

  factory HomeDetails.empty() => const HomeDetails(
      spaceSize: 0.0,
      bathrooms: 1,
      bedrooms: 1
  );
}