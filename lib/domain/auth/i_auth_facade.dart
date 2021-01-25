

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:tripoo/domain/auth/user.dart';
import 'package:tripoo/domain/auth/value_objects.dart';
import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPass({
    @required EmailAddress email,
    @required Username username,
    @required Password password
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}