import 'package:flutter/material.dart';
import 'package:grabvn/screens/history_page.dart';
import 'package:grabvn/screens/payment_page.dart';
import 'package:grabvn/screens/widgets/booking_item/list_booking_item.dart';
import 'package:grabvn/screens/widgets/menu_bar/menu_bar.dart';

class ListBookingPage extends StatefulWidget {
  static const String routeName = "ListBookingPage";
  @override
  State<StatefulWidget> createState() => _ListBookingPage();
}

class _ListBookingPage extends State<ListBookingPage> {
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
                      "Danh sách đặt xe",
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
                              BookingItem(
                                name: 'Thien',
                                status: 1,
                              ),
                              BookingItem(
                                name: 'Hieu',
                                status: 2,
                              ),
                              BookingItem(
                                name: 'Thien Tu',
                                status: 3,
                              ),
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
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(PaymentPage.routeName);
                        },
                        child: Column(
                          children: const [
                            Image(
                                width: 80,
                                height: 80,
                                image: AssetImage(
                                    'assets/images/icons8-card-payment-64 1.png')),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Thanh toán",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(10, 180, 149, 1)),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(HistoryPage.routeName);
                        },
                        child: Column(
                          children: const [
                            Image(
                                width: 80,
                                height: 80,
                                image: AssetImage(
                                    'assets/images/icons8-time-machine-64 5.png')),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Lịch Sử",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(10, 180, 149, 1)),
                            )
                          ],
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
