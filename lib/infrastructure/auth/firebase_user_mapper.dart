import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:tripoo/domain/auth/user.dart';
import 'package:tripoo/domain/auth/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  Future<User> toDomain() async {
    final FirebaseMessaging messaging = FirebaseMessaging.instance;
    final String token = await messaging.getToken();

    return User(
      id: uid,
      email: EmailAddress(email),
      emailVerified: emailVerified,
      profileImageURL: photoURL,
      phoneNumber: PhoneNumber(phoneNumber),
      username: Username(displayName),
      providerId: providerData[0].providerId,
      fcm_token: token,
      joinDate: metadata.creationTime
      // phoneNumber: PhoneNumber(phone),
    );
  }
}
