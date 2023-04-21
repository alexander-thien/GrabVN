import 'package:flutter/material.dart';
import 'package:grabvn/routes/app_routes.dart';
import 'package:grabvn/screens/login_page.dart';
import './screens/new_account_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food app witd navigation',
      initialRoute: LoginPage.routeName,
      onGenerateRoute: AppRoute.onGenerateRoute,
      // initialRoute: AppRouter.splash,
      // onGenerateRoute: AppRouter.onGenerateRoute,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: NewAccountPage(),
    );
  }
}
