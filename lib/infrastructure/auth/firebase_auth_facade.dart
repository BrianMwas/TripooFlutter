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
    final userCollection = _firestore.collection("user");
    return userCollection
        .doc(currentUserId)
        .get()
        .then((u) async {
          if(u.exists) {
            final newData = u.data();
            newData['id'] = u.id;
            final userDto = UserDto.fromJson(newData);
            return optionOf(userDto.toDomain());
          } else {
            final userAuth = _firebaseAuth.currentUser;
            if(userAuth != null) {
              final token = await messaging.getToken();
              final u = User(
                  email: EmailAddress(userAuth.email),
                  profileImageURL: userAuth.photoURL,
                  emailVerified: userAuth.emailVerified,
                  fcm_token: token,
                  id: currentUserId,
                  username: Username(userAuth.displayName),
                  providerId: userAuth.providerData[0].providerId
              );
              final userJson = UserDto.fromDomain(u).toJson();
              userCollection.doc(currentUserId)
                  .set(userJson);
              return optionOf(u);
            } else {
              return none();
            }
          }
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
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        return left(const AuthFailure.invalidCredentials());
      } else if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.unexpectedError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    try {
      final String email = emailAddress.getOrCrash();
      final String pass = password.getOrCrash();
      print("email details $email | $pass");
      firebase.UserCredential userCredential =  await _firebaseAuth.signInWithEmailAndPassword(email: email, password: pass);
      return right(unit);
    }
    on firebase.FirebaseAuthException catch(e) {
      if(e.code == "USER_DISABLED") {
        return left(const AuthFailure.userDisabled());

      } else if (e.code == 'user-not-found') {
        print('No user found for that email.');
        return left(const AuthFailure.userNotExist());
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        return left(const AuthFailure.invalidCredentials());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
    catch (e) {
      print("unhandled $e");
      return left(const AuthFailure.emailAlreadyInUse());
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
      await _firebaseAuth.signInWithCredential(authCredential);
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
    if(user != null) {
      final CollectionReference userCollection = _firestore.collection("user");
      userCollection.doc(user.uid)
          .get()
      .then((value) async {
        if(!value.exists) {
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

          userCollection.doc(user.uid)
              .set(userJson);
        };
      })
      .catchError((error) {
        print("error $error");
      });


    } else {
      print("user is $user");
    }
    
  }
}
