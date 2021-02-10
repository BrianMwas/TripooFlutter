
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'home_unit.freezed.dart';

@freezed
abstract class HomeUnit implements _$HomeUnit {

  const factory HomeUnit({
    String id,
    String name,
    String simple_description,
    String thumbnail,
    String long_description,
    LatLng position,
  }) = _HomeUnit;

  const HomeUnit._();

  factory HomeUnit.empty() => const HomeUnit(
      id: "",
      name: "",
      simple_description: "",
      long_description: "",
      thumbnail: "https://source.unsplash.com/daily?water",
      position: LatLng(42.878, 56.098),
  );
}