// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/auth/check_auth.dart';
import '../pages/auth/forgot_password.dart';
import '../pages/auth/login.dart';
import '../pages/auth/register.dart';
import '../pages/auth/user/init_filters.dart';
import '../pages/home/base.dart';
import '../pages/home/property/create_property/create_property_widget.dart';
import '../pages/home/property/homeunits/create_new_unit.dart';
import '../pages/home/property/homeunits/edit_unit_view.dart';
import '../pages/home/property/homeunits/single_unit_view.dart';
import '../pages/home/property/property_dash/dashboard.dart';
import '../pages/home/property/property_detail.dart';
import '../pages/home/property/property_list.dart';
import '../pages/home/property/property_map_view.dart';
import '../pages/home/property/start_property.dart';
import '../pages/home/settings/bookings.dart';
import '../pages/home/settings/change_password.dart';
import '../pages/home/settings/notifications.dart';
import '../pages/home/settings/profile.dart';
import '../pages/home/settings/settings.dart';
import '../pages/marketing/marketing.dart';
import '../pages/onboarding/onboarding.dart';

class Routes {
  static const String checkAuth = '/';
  static const String onBoarding = '/on-boarding';
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
  static const String propertyMapView = '/property-map-view';
  static const String newProperty = '/new-property';
  static const String propertyDash = '/property-dash';
  static const String notifications = '/Notifications';
  static const String bookings = '/Bookings';
  static const String settings = '/Settings';
  static const String singleUnitView = '/single-unit-view';
  static const String editUnitView = '/edit-unit-view';
  static const String marketing = '/Marketing';
  static const String createUnitView = '/create-unit-view';
  static const all = <String>{
    checkAuth,
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
    propertyMapView,
    newProperty,
    propertyDash,
    notifications,
    bookings,
    settings,
    singleUnitView,
    editUnitView,
    marketing,
    createUnitView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.checkAuth, page: CheckAuth),
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
    RouteDef(Routes.propertyMapView, page: PropertyMapView),
    RouteDef(Routes.newProperty, page: NewProperty),
    RouteDef(Routes.propertyDash, page: PropertyDash),
    RouteDef(Routes.notifications, page: Notifications),
    RouteDef(Routes.bookings, page: Bookings),
    RouteDef(Routes.settings, page: Settings),
    RouteDef(Routes.singleUnitView, page: SingleUnitView),
    RouteDef(Routes.editUnitView, page: EditUnitView),
    RouteDef(Routes.marketing, page: Marketing),
    RouteDef(Routes.createUnitView, page: CreateUnitView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    CheckAuth: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CheckAuth(),
        settings: data,
      );
    },
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
        builder: (context) => const PropertyList(),
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
    PropertyMapView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PropertyMapView(),
        settings: data,
      );
    },
    NewProperty: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => NewProperty(),
        settings: data,
      );
    },
    PropertyDash: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PropertyDash(),
        settings: data,
      );
    },
    Notifications: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Notifications(),
        settings: data,
      );
    },
    Bookings: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Bookings(),
        settings: data,
      );
    },
    Settings: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Settings(),
        settings: data,
      );
    },
    SingleUnitView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SingleUnitView(),
        settings: data,
      );
    },
    EditUnitView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => EditUnitView(),
        settings: data,
      );
    },
    Marketing: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Marketing(),
        settings: data,
      );
    },
    CreateUnitView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CreateUnitView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushCheckAuth() => push<dynamic>(Routes.checkAuth);

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

  Future<dynamic> pushPropertyMapView() =>
      push<dynamic>(Routes.propertyMapView);

  Future<dynamic> pushNewProperty() => push<dynamic>(Routes.newProperty);

  Future<dynamic> pushPropertyDash() => push<dynamic>(Routes.propertyDash);

  Future<dynamic> pushNotifications() => push<dynamic>(Routes.notifications);

  Future<dynamic> pushBookings() => push<dynamic>(Routes.bookings);

  Future<dynamic> pushSettings() => push<dynamic>(Routes.settings);

  Future<dynamic> pushSingleUnitView() => push<dynamic>(Routes.singleUnitView);

  Future<dynamic> pushEditUnitView() => push<dynamic>(Routes.editUnitView);

  Future<dynamic> pushMarketing() => push<dynamic>(Routes.marketing);

  Future<dynamic> pushCreateUnitView() => push<dynamic>(Routes.createUnitView);
}
