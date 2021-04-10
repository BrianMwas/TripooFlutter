import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tripoo/domain/entity/property_unit/property_details.dart';

part 'propertyunitdetail.dto.freezed.dart';
part 'propertyunitdetail.dto.g.dart';

@freezed
abstract class PropertyUnitDetailDTO with _$PropertyUnitDetailDTO {
  const factory PropertyUnitDetailDTO({
    double spaceSize,
    int rooms,
    int bathrooms,
  }) = _PropertyUnitDetailDTO;

  factory PropertyUnitDetailDTO.fromDomain(PropertyDetails detail) {
    return PropertyUnitDetailDTO(
        spaceSize: detail.spaceSize,
        rooms: detail.rooms,
        bathrooms: detail.bathrooms);
  }

  PropertyDetails toDomain() {
    return PropertyDetails(
        spaceSize: spaceSize, rooms: rooms, bathrooms: bathrooms);
  }

  factory PropertyUnitDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$PropertyUnitDetailDTOFromJson(json);
}
