
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tripoo/domain/auth/value_objects.dart';
part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User(
      {
          @required String id,
      @required Username username,
      @required EmailAddress email,
      @required String fcm_token,
      @required bool emailVerified,
      @nullable String profileImageURL,
      @nullable PhoneNumber phoneNumber,
      @nullable DateTime joinDate,
      @required String providerId,}) = _User;
}
