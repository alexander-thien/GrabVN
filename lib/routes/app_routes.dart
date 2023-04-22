import 'package:flutter/material.dart';
import '../screens/SampleGoogleMap.dart';
import '../screens/login_page.dart';
import '../screens/chose_driver_booker_page.dart';
import '../screens/new_account_page.dart';

class AppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NewAccountPage.routeName:
        return MaterialPageRoute(
            builder: (context) => NewAccountPage(), settings: settings);
      case LoginPage.routeName:
        return MaterialPageRoute(
            builder: (context) => LoginPage(), settings: settings);
      case ChoseDriverBookerPage.routeName:
        return MaterialPageRoute(
            builder: (context) => ChoseDriverBookerPage(), settings: settings);
    }
  }
}
