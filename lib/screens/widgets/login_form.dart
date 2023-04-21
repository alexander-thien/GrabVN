// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text('Số điện thoại', style: TextStyle(fontSize: 18))
              ],
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text('Mật khẩu', style: TextStyle(fontSize: 18))
              ],
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  elevation: 5,
                  fixedSize: const Size(370, 60),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.cyan,
                  textStyle: const TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Tiếp theo'),
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
              style: TextButton.styleFrom(
                  elevation: 5,
                  fixedSize: const Size(370, 30),
                  backgroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Đăng kí'),
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
