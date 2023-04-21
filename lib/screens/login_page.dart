import 'package:flutter/material.dart';
import './widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = 'LoginPage';

  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[const SizedBox(height: 200), LoginForm()]),
        ),
      ),
    );
  }
}
