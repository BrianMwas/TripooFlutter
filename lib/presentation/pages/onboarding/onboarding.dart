
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tripoo/application/auth/auth_bloc.dart';
import 'package:tripoo/presentation/routes/route.gr.dart';

import '../../../injection.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            authenticated: (_) {
              ExtendedNavigator.of(context).pushBaseLayout();
            },
            unAuthenticated: (_) => null,
            orElse: () => null,);
        },
        child: Scaffold(
          resizeToAvoidBottomPadding: true,
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/building.jpg"),
                      fit: BoxFit.cover
                  )
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: const Alignment(0.0, 0.0),
                        colors: [
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.3),
                        ]
                    )
                ),
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RotateAnimatedTextKit(
                        repeatForever: true,
                          duration: const Duration(milliseconds: 4000),
                          text: const [
                            "Find your home for rent or buy as you want.",
                            "Secure and Open with no middlemen.",
                            "Easy to find with guided maps.",
                            "Better details on the property you like."
                          ],
                        textStyle: TextStyle(
                            color: Colors.white,
                            height: 0.95,
                            fontSize: Theme.of(context).textTheme.headline3.fontSize,
                            fontFamily: "ProductSans",
                            fontWeight: FontWeight.w800
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Get closer to finding your next perfect home by viewing those that are closest and most convenient to you by price",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          height: 1.2,
                          fontSize: Theme.of(context).textTheme.bodyText1.fontSize,
                          fontFamily: "Lato"
                        )
                      ),
                      const SizedBox(height: 25),
                      RaisedButton(
                        elevation: 0.0,
                        color: Theme.of(context).primaryColor,
                        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                        onPressed: () {
                          ExtendedNavigator.of(context).replace(Routes.initFilters);
                        },
                        child: const Text(
                          "Sign In.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            letterSpacing: 0.7,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w700
                          )
                        )
                      ),
                      const SizedBox(height: 10),
                      RaisedButton(
                        elevation: 0.0,
                        color: Colors.white,
                        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                        onPressed: () {
                          ExtendedNavigator.of(context).replace(Routes.register);
                        },
                        child: Text(
                          "Create account",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            letterSpacing: 0.7,
                            fontFamily: "Lato"
                          )
                        )
                      ),
                      const SizedBox(height: 40),
                    ]
                  )
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
