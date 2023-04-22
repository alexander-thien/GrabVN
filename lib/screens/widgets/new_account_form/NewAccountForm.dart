// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../home_page.dart';

class NewAccountForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewAccountFormState();
  }
}

class _NewAccountFormState extends State<NewAccountForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 40, right: 40, bottom: 50),
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
                Text('Họ tên:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))
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
                      Icons.manage_accounts,
                      color: Color.fromRGBO(10, 180, 149, 1),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text('Mật khẩu:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 50,
              child: TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color.fromRGBO(10, 180, 149, 1),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text('Nhập lại mật khẩu:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 50,
              child: TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
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
                    'Đăng kí',
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
          ],
        ));
  }
}
