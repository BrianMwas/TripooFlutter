import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:tripoo/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tripoo/domain/auth/i_auth_facade.dart';
import 'package:tripoo/domain/auth/value_objects.dart';
import 'package:tripoo/domain/auth/user.dart';
import 'package:tripoo/infrastructure/user/user.dto.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final firebase.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;
  final FirebaseMessaging messaging = FirebaseMessaging.instance;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn, this._firestore);

  @override
  Future<Option<User>> getSignedInUser() async {
    final String currentUserId = _firebaseAuth.currentUser?.uid;

    return _firestore.collection("user").doc(currentUserId).get().then((u) {
      final Map<String, dynamic> userData =
          u.data().update("id", (e) => u.id, ifAbsent: () => u.id)
              as Map<String, dynamic>;
      final userDto = UserDto.fromJson(userData);
      return optionOf(userDto.toDomain());
    });
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPass({
        EmailAddress email,
        Username username,
        Password password,
      }) async {
    final emailAddressStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      return _firebaseAuth
          .createUserWithEmailAndPassword(
              email: emailAddressStr, password: passwordStr)
          .then((v) async {
        final user = User(
          id: v.user.uid,
          username: username,
          email: email,
          emailVerified: false,
          fcm_token: await messaging.getToken(),
          providerId: v.additionalUserInfo.providerId
        );
        final userDto = UserDto.fromDomain(user);
        await _firestore
            .collection("user")
            .doc(v.user.uid)
            .set(userDto.toJson());

        return right(unit);
      });
    } on firebase.FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    try {
      final String email = emailAddress.getOrCrash();
      final String pass = password.getOrCrash();
      return _firebaseAuth.signInWithEmailAndPassword(email: email, password: pass)
      .then((value) {
        print("user credentials are ${value.user}");
        return right(unit);
      });
    } on firebase.FirebaseAuthException catch(e) {
      if(e.code == "USER_DISABLED") {
        return left(const AuthFailure.userDisabled());
      } else if(e.code == "WRONG_PASSWORD" || e.code == "INVALID_CREDENTIAL") {
        return left(const AuthFailure.invalidCredentials());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if(googleUser == null) {
        print("Signing using google.");
        return left(const AuthFailure.cancelledByUser());
      }

      final googleUserAuthentication = await googleUser.authentication;
      final authCredential = firebase.GoogleAuthProvider.credential(
        idToken: googleUserAuthentication.idToken,
        accessToken: googleUserAuthentication.accessToken
      );
      final user = await _firebaseAuth.signInWithCredential(authCredential);
      await createUserFromGoogle(user.user);
      return right(unit);
    } on firebase.FirebaseAuthException catch(e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
    _googleSignIn.signOut(),
    _firebaseAuth.signOut()
  ]);
  
  Future<void> createUserFromGoogle(firebase.User user) async {
    final CollectionReference userCollection = _firestore.collection("user");
    final userDoc = await userCollection.doc(user.uid)
    .get();
    final userToken = await messaging.getToken();

    final userDomain = User(
      id: user.uid,
      providerId: "google",
      email: EmailAddress(user.email),
      emailVerified: true,
      profileImageURL: user.photoURL,
      username: Username(user.displayName),
      fcm_token: userToken,
      joinDate: DateTime.now()
    );

    final userJson = UserDto
        .fromDomain(userDomain)
        .toJson();

    if(!userDoc.exists) {
      userCollection.doc(user.uid)
          .set(userJson);
    };
  }
}
