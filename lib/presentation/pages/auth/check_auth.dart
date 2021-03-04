import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:tripoo/application/auth/auth_bloc.dart';
import 'package:tripoo/presentation/routes/route.gr.dart';

// Simple hack to prevent showing the start page if the user is authenticated;
class CheckAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          authenticated: (_) {
            Future.delayed(const Duration(milliseconds: 1500), () {
              ExtendedNavigator.of(context).replace(Routes.baseLayout);
            });
          },
          unAuthenticated: (_) {
            Future.delayed(const Duration(milliseconds: 1500), () {
              ExtendedNavigator.of(context).replace(Routes.onBoarding);
            });
          },
          orElse: () => null,);
      },
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(16.0),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Lottie.asset(
                  "assets/images/map_loader.json",
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              )
            ]
          )
        ),
      ),
    );
  }
}
