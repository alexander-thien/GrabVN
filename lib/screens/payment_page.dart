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
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Column(children: [
                              PaymentCard(),
                              PaymentCard(),
                              PaymentCard(),
                              PaymentCard(),
                              PaymentCard(),
                            ]),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 200,
              child: Container(
                child: Column(children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        elevation: 5,
                        fixedSize: const Size(370, 60),
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(10, 180, 149, 1),
                        textStyle: const TextStyle(fontSize: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Thêm thẻ mới',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          // <-- Icon
                          Icons.add,
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(370, 60),
                        elevation: 5,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                                color: Color.fromRGBO(10, 180, 149, 1)))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Đăng kí',
                          style: TextStyle(
                              color: Color.fromRGBO(10, 180, 149, 1),
                              fontSize: 17),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          // <-- Icon
                          Icons.navigate_next,
                          size: 24.0,
                          color: Color.fromRGBO(10, 180, 149, 1),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
