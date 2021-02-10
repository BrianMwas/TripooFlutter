
import 'package:google_maps_flutter/google_maps_flutter.dart';

@freezed
abstract class HomeUnit implements _$HomeUnit {

  const factory HomeUnit({
    String id,
    String name,
    String description,
    LatLng position,
  }) = _HomeUnit;

  const HomeUnit._();

  factory HomeUnit.empty() => const HomeUnit(
      id: "",
      name: "",
      description: "",
      position: LatLng(42.878, 56.098),
  );
}