import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:provider/provider.dart';
import 'package:tripoo/presentation/routes/route.gr.dart' as auto_route;
import 'package:tripoo/presentation/theme/theme.dart';
import 'package:wiredash/wiredash.dart';

import 'application/auth/auth_bloc.dart';
import 'environment.dart';
import 'injection.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.

  print("Handling a background message: ${message.messageId}");
}

void mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  HydratedBloc.storage = await HydratedStorage.build();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  //Required to show development in process or in production
  //By using the debug badge.
  bool inDevelopment;
  //Allow for injection=
  configureInjection(Env.dev);

  final FirebaseMessaging messaging = FirebaseMessaging.instance;

  final NotificationSettings settings = await messaging.requestPermission();

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });

  switch (env) {
    case Environment.dev:
      inDevelopment = true;
      break;
    case Environment.prod:
      inDevelopment = true;
      break;
  }

  runApp(Provider.value(
    value: inDevelopment,
    child: App(),
    ),
  );
}

class App extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return BlocProvider(
      // Ignites immediately preventing navigation to auth routes without logging in.
      create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
      child: Wiredash(
        projectId: "tripoo-xg1ppe9",
        secret: "8n4yas7tx0hdqmkooar5x4j6wm709rpju6vdzdkr5n5d6xas",
        navigatorKey: _navigatorKey,
        child: MaterialApp(
            title: "Tripoo",
            debugShowCheckedModeBanner: Provider.of<bool>(context),
            theme: basicTheme(),

            builder: ExtendedNavigator(
              router: auto_route.Router(),
              navigatorKey: _navigatorKey,
            ),
          ),
        ),
      );
  }
}
