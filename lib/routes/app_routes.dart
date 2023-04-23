import 'package:flutter/material.dart';
import 'package:grabvn/screens/home_page.dart';
import '../screens/history_page.dart';
import '../screens/login_page.dart';
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
      case HomePage.routeName:
        return MaterialPageRoute(
            builder: (context) => HomePage(), settings: settings);
      case HistoryPage.routeName:
        return MaterialPageRoute(
            builder: (context) => HistoryPage(), settings: settings);
    }
  }
}
