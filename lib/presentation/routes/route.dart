import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:tripoo/presentation/pages/auth/check_auth.dart';
import 'package:tripoo/presentation/pages/auth/forgot_password.dart';
import 'package:tripoo/presentation/pages/auth/login.dart';
import 'package:tripoo/presentation/pages/auth/register.dart';
import 'package:tripoo/presentation/pages/auth/user/init_filters.dart';
import 'package:tripoo/presentation/pages/home/base.dart';
import 'package:tripoo/presentation/pages/home/property/create_property/create_property_widget.dart';
import 'package:tripoo/presentation/pages/home/property/homeunits/create_new_unit.dart';
import 'package:tripoo/presentation/pages/home/property/homeunits/edit_unit_view.dart';
import 'package:tripoo/presentation/pages/home/property/homeunits/single_unit_view.dart';
import 'package:tripoo/presentation/pages/home/property/property_dash/dashboard.dart';
import 'package:tripoo/presentation/pages/home/property/start_property.dart';
import 'package:tripoo/presentation/pages/home/property/property_detail.dart';
import 'package:tripoo/presentation/pages/home/property/property_list.dart';
import 'package:tripoo/presentation/pages/home/property/property_map_view.dart';
import 'package:tripoo/presentation/pages/home/settings/bookings.dart';
import 'package:tripoo/presentation/pages/home/settings/change_password.dart';
import 'package:tripoo/presentation/pages/home/settings/notifications.dart';
import 'package:tripoo/presentation/pages/home/settings/profile.dart';
import 'package:tripoo/presentation/pages/home/settings/settings.dart';
import 'package:tripoo/presentation/pages/marketing/marketing.dart';
import 'package:tripoo/presentation/pages/onboarding/onboarding.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: [
      MaterialRoute(page: CheckAuth, initial: true),
  MaterialRoute(page: OnBoarding),
  CustomRoute(page: Login, transitionsBuilder: TransitionsBuilders.slideBottom),
  CustomRoute(
      page: Register, transitionsBuilder: TransitionsBuilders.slideBottom),
  CustomRoute(
      page: ForgotPassword, transitionsBuilder: TransitionsBuilders.fadeIn),
  CustomRoute(
      page: ChangePassword, transitionsBuilder: TransitionsBuilders.fadeIn),
  CustomRoute(
      page: Profile, transitionsBuilder: TransitionsBuilders.slideLeftWithFade),
  CustomRoute(
      page: PropertyDetail,
      transitionsBuilder: TransitionsBuilders.slideRightWithFade),
  AdaptiveRoute(page: PropertyList),
  AdaptiveRoute(page: CreateProperty),
  CupertinoRoute(page: BaseLayout),
  CupertinoRoute(page: InitFilters),
  CupertinoRoute(page: PropertyMapView),
  CupertinoRoute(page: NewProperty),
  CupertinoRoute(page: PropertyDash),
  CupertinoRoute(page: Notifications),
  CupertinoRoute(page: Bookings),
  CupertinoRoute(page: Settings),
      CupertinoRoute(page: SingleUnitView),
      CupertinoRoute(page: EditUnitView),
      CupertinoRoute(page: Marketing),
      CupertinoRoute(page: CreateUnitView),
    ])
class $Router {}
