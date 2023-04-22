import 'package:flutter/material.dart';
import 'package:grabvn/screens/widgets/home_page/home_page_menu.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "HomePage";

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Image(
                  image: AssetImage('assets/images/logo.jpg'),
                  width: 200,
                  height: 200,
                ),
              ],
            ),
            const SizedBox(height: 50),
            HomePageMenu()
          ]),
        ),
      ),
    );
  }
}
