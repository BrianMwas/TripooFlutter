import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tripoo/domain/entity/agent/property_agent.dart';

part 'agent.dto.freezed.dart';
part 'agent.dto.g.dart';

@freezed
abstract class PropertyAgentDTO with _$PropertyAgentDTO {
  const factory PropertyAgentDTO({
    String id,
    String name,
    String imageURL,
    String emailAddress,
    String phoneNumber,
    DateTime createdAt,
  }) = _PropertyAgentDTO;

  const PropertyAgentDTO._();

  factory PropertyAgentDTO.fromDomain(PropertyAgent agent) {
    return PropertyAgentDTO(
        name: agent.name,
        emailAddress: agent.emailAddress,
        phoneNumber: agent.phoneNumber,
        createdAt: agent.createdAt,
        imageURL: agent.imageURL);
  }

  PropertyAgent toDomain() {
    return PropertyAgent(
        id: id,
        name: name,
        phoneNumber: phoneNumber,
        createdAt: createdAt,
        emailAddress: emailAddress,
        imageURL: imageURL);
  }

  factory PropertyAgentDTO.fromJson(Map<String, dynamic> json) =>
      _$PropertyAgentDTOFromJson(json);

  factory PropertyAgentDTO.fromFirestore(DocumentSnapshot doc) {
    return PropertyAgentDTO.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
