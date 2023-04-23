import 'package:flutter/material.dart';

import '../../history_page.dart';
import '../../new_account_page.dart';

// ignore: must_be_immutable
class MenuBarCusTom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MenuBarCusTom();
}

class _MenuBarCusTom extends State<MenuBarCusTom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 220,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(10, 180, 149, 1)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/logo.jpg'),
                      maxRadius: 15,
                      minRadius: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Từ Tích Thiện",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(130, 20),
                            backgroundColor:
                                const Color.fromRGBO(10, 180, 149, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: const BorderSide(color: Colors.white))),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              'Chỉnh sửa',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              // <-- Icon
                              color: Colors.white,
                              Icons.edit,
                              size: 18.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("Ehllo");
                    },
                    child: Row(
                      children: const [
                        Icon(
                          // <-- Icon
                          color: Color.fromRGBO(10, 180, 149, 1),
                          Icons.payment_rounded,
                          size: 35.0,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Giao dịch",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(10, 180, 149, 1)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(HistoryPage.routeName);
                    },
                    child: Row(
                      children: const [
                        Icon(
                          // <-- Icon
                          color: Color.fromRGBO(10, 180, 149, 1),
                          Icons.history,
                          size: 35.0,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Lịch sử",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(10, 180, 149, 1)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                print("Ehllo");
              },
              child: Row(
                children: const [
                  Icon(
                    // <-- Icon
                    color: Color.fromRGBO(10, 180, 149, 1),
                    Icons.logout_sharp,
                    size: 30.0,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Đăng xuất",
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(10, 180, 149, 1)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
