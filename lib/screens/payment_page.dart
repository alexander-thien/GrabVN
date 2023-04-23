import 'package:flutter/material.dart';
import 'package:grabvn/screens/widgets/menu_bar/menu_bar.dart';
import 'package:grabvn/screens/widgets/payment_card/pay_ment_card.dart';

class PaymentPage extends StatefulWidget {
  static const String routeName = "PaymentPage";

  @override
  State<StatefulWidget> createState() {
    return _PaymentPage();
  }
}

class _PaymentPage extends State<PaymentPage> {
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
                      "Giao Dịch",
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
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Text(
                            "Thẻ của bạn",
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 20),
                          Column(children: [
                            PaymentCard(),
                            PaymentCard(),
                            PaymentCard(),
                            PaymentCard(),
                            PaymentCard(),
                          ]),
                        ],
                      ),
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(color: Colors.amberAccent),
            )
          ],
        ),
      ),
    );
  }
}
