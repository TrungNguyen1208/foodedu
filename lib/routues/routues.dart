import 'package:flutter/material.dart';
import 'package:foodedu/feature/authen/sign_in/sign_in_screen.dart';
import 'package:foodedu/feature/authen/sign_up/sign_up_screen.dart';
import 'package:foodedu/feature/module_profile/profile_address/profile_address_screen.dart';

import 'routue_name.dart';

class Routes {
  static Route buildRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.signInPage:
        return buildRoute(settings, SignInScreen());
      case RouteName.signUpPage:
        return buildRoute(settings, SignUpScreen());
      case RouteName.profileAddressPage:
        return buildRoute(settings, ProfileAddressScreen());
      default:
      //If there is no such named route in the switch statement
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Coming soon'),
        ),
        body: const Center(
          child: Text('Page not found'),
        ),
      );
    });
  }

  static MaterialPageRoute buildRoute(RouteSettings settings, Widget builder) {
    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => builder,
    );
  }

  static MaterialPageRoute buildRouteDialog(RouteSettings settings, Widget builder) {
    return MaterialPageRoute(
      settings: settings,
      fullscreenDialog: true,
      builder: (BuildContext context) => builder,
    );
  }
}
