import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tripoo/domain/auth/user.dart';
import 'package:tripoo/domain/auth/value_objects.dart';

part 'user.dto.freezed.dart';
part 'user.dto.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const factory UserDto({
    String id,
    @required String email,
    @required String username,
    @nullable String photoURL,
    String phoneNumber,
    @required bool emailVerified,
    @required String fcmToken,
    String providerId,
    DateTime joinDate,
  }) = _UserDto;

  const UserDto._();

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id,
      email: user.email.getOrCrash(),
      username: user.username.getOrCrash(),
      photoURL: user.profileImageURL,
      phoneNumber: user.phoneNumber,
      emailVerified: user.emailVerified,
      joinDate: user.joinDate,
      fcmToken: user.fcm_token,
      providerId: user.providerId,
    );
  }

  User toDomain() {
    return User(
      id: id,
      username: Username(username),
      email: EmailAddress(email),
      emailVerified: emailVerified,
      profileImageURL: photoURL,
      fcm_token: fcmToken,
      joinDate: joinDate,
      phoneNumber: phoneNumber,
      providerId: providerId
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
