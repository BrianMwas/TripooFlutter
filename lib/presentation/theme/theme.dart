
import 'package:flutter/material.dart';

ThemeData basicTheme() {
    TextTheme _basicTextTheme(TextTheme base) {
      return base.copyWith(
        headline2: base.headline2.copyWith(
          fontFamily: "Product Sans",
          color: Colors.black87,
          fontWeight: FontWeight.w800
        ),
        headline1: base.headline1.copyWith(
          fontFamily: "Product Sans",
          color: Colors.black87,
          fontWeight: FontWeight.w800
        ),
        headline4: base.headline4.copyWith(
          fontFamily: "Product Sans",
          color: Colors.black87,
          fontWeight: FontWeight.w800
        ),
        headline6: base.headline6.copyWith(
          fontFamily: "Lato",
          color: Color(0xff231f20),
          fontWeight: FontWeight.w700
        ),
        bodyText1: base.bodyText1.copyWith(
          color: Color(0xff414042),
          fontFamily: "Lato"
        ),
        bodyText2: base.bodyText2.copyWith(
          color: const Color(0xff58595b),
          fontFamily: "Lato"
        )
      );
    }
    ButtonThemeData _basicButtonThemeData(ButtonThemeData baseBtn) {
      return baseBtn.copyWith(
        minWidth: double.infinity,
        height: 48,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)
        ),
        disabledColor: const Color(0xff231F20)
      );
    }

    InputDecorationTheme _basicInputDecorationTheme(InputDecorationTheme base) {
      return base.copyWith(
          floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: TextStyle(
          color: Colors.black54,
          fontFamily: "Lato"
        ),
        helperStyle: TextStyle(
          fontFamily: "Lato"
        ),
        errorStyle: TextStyle(
          color: Color(0xfff85c50),
          fontFamily: "Lato",
        ),
        filled: true,
        fillColor: Color(0xffF2F8FD),
        focusColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(
            color: Color(0xffBBC9DD),
            width: 1
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Color(0xff00dfc8), width: 0.67),
        )
      );
    }

    final ThemeData base = ThemeData(
      fontFamily: "Lato"
    );


    return base.copyWith(
      textTheme: _basicTextTheme(base.textTheme),
      buttonTheme: _basicButtonThemeData(base.buttonTheme),
      inputDecorationTheme: _basicInputDecorationTheme(base.inputDecorationTheme),
      accentColor: Color(0xff00dfc8),
      primaryColor: Color(0xff48cfaf),
      shadowColor: Color(0xffdae4ef),
      errorColor: Color(0xfff85c50),
    );
}