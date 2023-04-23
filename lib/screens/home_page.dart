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
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        backgroundColor: Colors.white,
        drawer: const Drawer(
          child: Center(child: Text('Left!')),
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // IconButton(
                  //   icon: const Icon(
                  //     Icons.list_sharp,
                  //     size: 40,
                  //   ),
                  //   color: const Color.fromRGBO(10, 180, 149, 1),
                  //   onPressed: () {
                  //     print("Hello");
                  //   },
                  // ),
                  SizedBox.fromSize(
                    size: const Size(40, 40),
                    child: ClipOval(
                      child: Material(
                          elevation: 20,
                          color: const Color.fromRGBO(10, 180, 149, 1),
                          child: InkWell(
                            onTap: () {
                              _globalKey.currentState!.openDrawer();
                            },
                            child: Container(
                              // padding: const EdgeInsets.only(right: 8),
                              decoration: const BoxDecoration(),
                              child: const Icon(
                                Icons.list_sharp,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
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
