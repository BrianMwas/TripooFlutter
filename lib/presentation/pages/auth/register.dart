import 'package:auto_route/auto_route.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tripoo/application/auth/sign_in/signinform_bloc.dart';
import 'package:tripoo/application/auth/sign_up/signupform_bloc.dart';
import 'package:tripoo/presentation/routes/route.gr.dart';
import 'package:wiredash/wiredash.dart';

import '../../../injection.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _registerKey = GlobalKey<FormState>();

  bool _obscurePassword = true;

  void togglePassword() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignupformBloc>(),
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      icon: const Icon(EvaIcons.alertCircleOutline),
                      onPressed: () {
                        Wiredash.of(context).show();
                      }),
                ),
                Center(
                  child: Image.asset(
                    "assets/images/person_info.png",
                    height: 130,
                    width: 230,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Sign ",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize:
                              Theme.of(context).textTheme.headline4.fontSize,
                          fontFamily: "ProductSans",
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextSpan(
                        text: "Up",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize:
                              Theme.of(context).textTheme.headline4.fontSize,
                          fontFamily: "ProductSans",
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                SignupForm(obscurePassword: _obscurePassword, formKey: _registerKey, togglePassword: togglePassword)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignupForm extends StatelessWidget {
  const SignupForm({
    Key key,
    @required this.obscurePassword,
    @required GlobalKey<FormState> formKey,
    @required Function togglePassword
}):  _formKey = formKey,
  _togglePassword = togglePassword,
  super(key: key);

  final GlobalKey<FormState> _formKey;
  final bool obscurePassword;
  final Function _togglePassword;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupformBloc, SignupformState>(
      listener: (context, state) {
        state.authFailureOrSuccess.
        fold(
                () => null,
                (either) => either.fold(
                        (failure) => Flushbar(
                          title: "Error",
                          margin: const EdgeInsets.all(8.0),
                          isDismissible: true,
                          borderRadius: 8,
                          message: failure.map(
                              userDisabled: (_) => "Account is disabled.",
                              emailAlreadyInUse: (_) => "An account exists with the email. Please choose another.",
                              userNotExist: null,
                              cancelledByUser: (_) => "Operation failed. Cancelled!",
                              serverError: (_) => "A server error occurred pleas try again later.",
                              unexpectedError: null,
                              passChangeFailed: null,
                              invalidCredentials: (_) => "Invalid credentials",
                          )
                        ).show(context),
                        (v) {
                            ExtendedNavigator.of(context).pushBaseLayout();
                        },
                ),
        );
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          autovalidateMode: state.showErrorMessages ?
              AutovalidateMode.onUserInteraction :
              AutovalidateMode.disabled,
          child: Column(
            children: [
              TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Theme
                      .of(context)
                      .accentColor,
                  decoration: const InputDecoration(
                    helperText: "Only letters and numbers allowed",
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Username",
                    isDense: true,
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) {
                    if (v.isEmpty) {
                      return "Please enter your username.";
                    }
                    if (v.length > 10) {
                      return "Please choose a shorter name";
                    }
                    return null;
                  }),
              const SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: "Email Address",
                  hintText: "yours@example.com",
                  isDense: true,
                  border: OutlineInputBorder(),
                ),
                cursorColor: Theme
                    .of(context)
                    .accentColor,
                validator: (v) {
                  if (v.isEmpty) {
                    return "Please enter your email address.";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: obscurePassword,
                style: const TextStyle(
                  fontFamily: "Lato",
                ),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: obscurePassword
                        ? const Icon(EvaIcons.eyeOutline)
                        : const Icon(EvaIcons.eyeOffOutline),
                    onPressed: () => _togglePassword(),
                  ),
                  helperText:
                  "One uppercase letter, One special character or number and at \n least eight characters long",
                  labelText: "Password",
                  isDense: true,
                  border: const OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
                cursorColor: Theme
                    .of(context)
                    .accentColor,
                validator: (v) {
                  if (v.isEmpty) {
                    return "Please enter your password.";
                  }

                  if (v.length < 6 || v.length > 20) {
                    return "Please enter a strong password.";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              RaisedButton(
                elevation: 0.0,
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                color: Theme
                    .of(context)
                    .accentColor,
                onPressed: () {
                  print("form good");
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      letterSpacing: 0.7,
                      fontFamily: "Lato"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: const TextStyle(
                      fontFamily: "Lato",
                      color: Colors.black87,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign In",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            ExtendedNavigator.of(context)
                                .push(Routes.login);
                          },
                        style: TextStyle(
                          color: Theme
                              .of(context)
                              .primaryColor,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Lato",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Center(
                child: Text(
                  "By Signing Up you agree to out terms and conditions.",
                  style:
                  TextStyle(fontFamily: "Lato", color: Colors.black),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
