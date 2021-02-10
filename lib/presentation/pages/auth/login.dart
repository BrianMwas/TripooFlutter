import 'package:auto_route/auto_route.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tripoo/application/auth/auth_bloc.dart';
import 'package:tripoo/application/auth/sign_in/signinform_bloc.dart';
import 'package:tripoo/presentation/routes/route.gr.dart';

import '../../../injection.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginFormKey = GlobalKey<FormState>();

  bool _obscureText = true;

  void togglePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<SigninformBloc>(),),
        BlocProvider(
          create: (context) => getIt<SigninformBloc>(),
        ),
      ],
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 18),
                Center(
                  child: Image.asset(
                    "assets/images/authentication.png",
                    height: 180,
                    width: 280,
                  ),
                ),
                const SizedBox(height: 32),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Sign ",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize:
                                  Theme.of(context).textTheme.headline4.fontSize,
                              fontFamily: "ProductSans",
                              fontWeight: FontWeight.w800)),
                      TextSpan(
                        text: "In",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize:
                              Theme.of(context).textTheme.headline4.fontSize,
                          fontFamily: "ProductSans",
                        ),
                      )
                    ],
                  ),
                ),
                const Text("Welcome back",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Lato",),),
                const SizedBox(height: 25),
                LoginForm(
                obscurePassword: _obscureText,
                formKey: _loginFormKey,
                togglePassword: togglePassword,
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
    @required this.obscurePassword,
    @required GlobalKey<FormState> formKey,
    @required Function togglePassword,
}): _formKey = formKey,
        _togglePassword = togglePassword,
        super(key: key);

  final Function _togglePassword;
  final GlobalKey<FormState> _formKey;
  final bool obscurePassword;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninformBloc, SigninformState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () {}, (either) => either
            .fold(
                (failure) => Flushbar(
                  title: "Error",
                  margin: const EdgeInsets.all(8.0),
                  isDismissible: true,
                  borderRadius: 8,
                  message: failure.map(
                      emailAlreadyInUse: null,
                      userDisabled: (_) => "Account disabled.",
                      userNotExist: (_) => "Account does not exist.",
                      cancelledByUser: (_) => "Operation failed. It seems the process was cancelled before completion.",
                      serverError: (_) => "A server error occurred. Please try again after a short while.",
                      unexpectedError: (_) => "An unexpected error occurred.",
                      passChangeFailed: null,
                      invalidCredentials: (_) => "Invalid user email or password.",
                  ),
                  icon: const Icon(EvaIcons.alertTriangleOutline,
                      color: Colors.white),
                ).show(context),
                (r) {
                    ExtendedNavigator.of(context).pushBaseLayout();
                    context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
                },
            ),
        );
      },
      builder: (context, state) {

        return Form
          (
          key: _formKey,
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                // Used read instead of watch because we do not want the widget to rebuild with each model change.
                onChanged: (value) =>
                    context.read<SigninformBloc>().add(
                        SigninformEvent.emailChanged(value)),
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: "Email Address",
                  hintText: "yours@example.com",
                  isDense: true,
                  border: OutlineInputBorder(),
                  helperText: "Please enter your email address",
                ),
                cursorColor: Theme
                    .of(context)
                    .accentColor,
                validator: (v) =>
                    context
                        .read<SigninformBloc>()
                        .state
                        .email
                        .value
                        .fold(
                          (l) =>
                          l.maybeMap(
                              empty: (_) => "An email address is required.",
                              invalidEmailAddress: (
                                  _) => "Invalid email address.",
                              orElse: () => null),
                          (_) => null,),
              ),
              const SizedBox(height: 15),
              TextFormField(
                cursorColor: Theme
                    .of(context)
                    .accentColor,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: obscurePassword
                        ? const Icon(EvaIcons.eyeOutline)
                        : const Icon(EvaIcons.eyeOffOutline),
                    onPressed: () => _togglePassword(),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  isDense: true,
                  labelText: "Password",
                  helperText:
                  "Only alphanumeric and special characters allowed",
                  border: const OutlineInputBorder(),
                ),
                obscureText: obscurePassword,
                validator: (v) {
                  if (v.isEmpty) {
                    return "Please enter a valid password.";
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    ExtendedNavigator.of(context).pushForgotPassword();
                  },
                  child: const Text(
                    "Forgot password?",
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              RaisedButton(
                elevation: 0.0,
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                color: Theme
                    .of(context)
                    .accentColor,
                onPressed: () {
                  ExtendedNavigator.of(context).pushBaseLayout();
                },
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      letterSpacing: 0.7,
                      fontFamily: "Lato"),
                ),
              ),
              const SizedBox(height: 10),
              RaisedButton(
                elevation: 0.0,
                color: Colors.white,
                onPressed: state.signingInGoogle ? null : () {
                  context
                      .read<SigninformBloc>()
                      .add(const SigninformEvent.signinWithGooglePressed());
                },
                child: state.signingInGoogle ? SpinKitRing(
                  color: Theme.of(context).accentColor,
                  lineWidth: 2.0,
                  size: 16,
                ) : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Sign in with Google ",
                      style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 25),
                    Image.asset(
                      "assets/images/google_icon.png",
                      height: 20,
                      width: 20,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: const TextStyle(
                      fontFamily: "Lato",
                      color: Colors.black87,
                    ),
                    children: [
                      TextSpan(
                        text: "Create an account.",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            ExtendedNavigator.of(context)
                                .push(Routes.register);
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
            ],
          ),
        );
      }
    );
  }
}

