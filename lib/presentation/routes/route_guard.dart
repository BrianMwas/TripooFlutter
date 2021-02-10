

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthGuard extends RouteGuard {
  @override
  Future<bool> canNavigate(ExtendedNavigatorState<RouterBase> navigator, String routeName, Object arguments) {
    bool isAuthenticated =  false;

    FirebaseAuth.instance
        .authStateChanges()
        .listen((user) {
        if(user != null) {
          isAuthenticated = true;
        }
      });
    return Future.value(isAuthenticated);
  }
}