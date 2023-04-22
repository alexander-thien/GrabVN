// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../home_page.dart';
import '../new_account_page.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginForm();
  }
}

class _LoginForm extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Số điện thoại:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Color.fromRGBO(10, 180, 149, 1),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Mật Khẩu:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color.fromRGBO(10, 180, 149, 1),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(HomePage.routeName);
              },
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
                    'Đăng nhập',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    // <-- Icon
                    Icons.navigate_next,
                    size: 24.0,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(NewAccountPage.routeName);
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(370, 40),
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
                        color: Color.fromRGBO(10, 180, 149, 1), fontSize: 17),
                  ),
                  SizedBox(
                    width: 5,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
