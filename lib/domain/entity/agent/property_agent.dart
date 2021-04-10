import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_agent.freezed.dart';

@freezed
abstract class PropertyAgent implements _$PropertyAgent {
  const factory PropertyAgent({
    String id,
    String name,
    String imageURL,
    String emailAddress,
    String phoneNumber,
    DateTime createdAt,
  }) = _PropertyAgent;

  const PropertyAgent._();

  factory PropertyAgent.empty() => PropertyAgent(
      name: "",
      imageURL: "https://source.unsplash.com/mountain",
      emailAddress: "",
      phoneNumber: "",
      createdAt: DateTime.now());
}
