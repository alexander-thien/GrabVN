import 'package:flutter/material.dart';
import 'package:grabvn/screens/widgets/menu_bar/menu_bar.dart';

class HistoryPage extends StatefulWidget {
  static const String routeName = 'HistoryPage';

  @override
  State<StatefulWidget> createState() => _HistoryPage();
}

class _HistoryPage extends State<HistoryPage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: MenuBarCusTom(),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: <Widget>[
                  SizedBox.fromSize(
                    size: const Size(35, 35),
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
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Lịch Sử",
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: "UTM Avo",
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(10, 180, 149, 1)),
                    ),
                  )),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
