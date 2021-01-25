// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/auth/forgot_password.dart';
import '../pages/auth/login.dart';
import '../pages/auth/register.dart';
import '../pages/auth/user/init_filters.dart';
import '../pages/home/base.dart';
import '../pages/home/property/create_property.dart';
import '../pages/home/property/property_detail.dart';
import '../pages/home/property/property_list.dart';
import '../pages/home/settings/change_password.dart';
import '../pages/home/settings/profile.dart';
import '../pages/onboarding/onboarding.dart';

class Routes {
  static const String onBoarding = '/';
  static const String login = '/Login';
  static const String register = '/Register';
  static const String forgotPassword = '/forgot-password';
  static const String changePassword = '/change-password';
  static const String profile = '/Profile';
  static const String propertyDetail = '/property-detail';
  static const String propertyList = '/property-list';
  static const String createProperty = '/create-property';
  static const String baseLayout = '/base-layout';
  static const String initFilters = '/init-filters';
  static const all = <String>{
    onBoarding,
    login,
    register,
    forgotPassword,
    changePassword,
    profile,
    propertyDetail,
    propertyList,
    createProperty,
    baseLayout,
    initFilters,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.onBoarding, page: OnBoarding),
    RouteDef(Routes.login, page: Login),
    RouteDef(Routes.register, page: Register),
    RouteDef(Routes.forgotPassword, page: ForgotPassword),
    RouteDef(Routes.changePassword, page: ChangePassword),
    RouteDef(Routes.profile, page: Profile),
    RouteDef(Routes.propertyDetail, page: PropertyDetail),
    RouteDef(Routes.propertyList, page: PropertyList),
    RouteDef(Routes.createProperty, page: CreateProperty),
    RouteDef(Routes.baseLayout, page: BaseLayout),
    RouteDef(Routes.initFilters, page: InitFilters),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    OnBoarding: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoarding(),
        settings: data,
      );
    },
    Login: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => Login(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideBottom,
      );
    },
    Register: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => Register(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideBottom,
      );
    },
    ForgotPassword: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ForgotPassword(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    ChangePassword: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ChangePassword(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    Profile: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => Profile(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    PropertyDetail: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            PropertyDetail(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    PropertyList: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PropertyList(),
        settings: data,
      );
    },
    CreateProperty: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CreateProperty(),
        settings: data,
      );
    },
    BaseLayout: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => BaseLayout(),
        settings: data,
      );
    },
    InitFilters: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => InitFilters(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushOnBoarding() => push<dynamic>(Routes.onBoarding);

  Future<dynamic> pushLogin() => push<dynamic>(Routes.login);

  Future<dynamic> pushRegister() => push<dynamic>(Routes.register);

  Future<dynamic> pushForgotPassword() => push<dynamic>(Routes.forgotPassword);

  Future<dynamic> pushChangePassword() => push<dynamic>(Routes.changePassword);

  Future<dynamic> pushProfile() => push<dynamic>(Routes.profile);

  Future<dynamic> pushPropertyDetail() => push<dynamic>(Routes.propertyDetail);

  Future<dynamic> pushPropertyList() => push<dynamic>(Routes.propertyList);

  Future<dynamic> pushCreateProperty() => push<dynamic>(Routes.createProperty);

  Future<dynamic> pushBaseLayout() => push<dynamic>(Routes.baseLayout);

  Future<dynamic> pushInitFilters() => push<dynamic>(Routes.initFilters);
}
