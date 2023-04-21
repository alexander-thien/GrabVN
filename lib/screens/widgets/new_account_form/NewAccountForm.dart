// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:grabvn/screens/chose_driver_booker_page.dart';

import '../../new_account_page.dart';

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
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text('Số điện thoại:', style: TextStyle(fontSize: 18))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
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
                Text('Họ tên:', style: TextStyle(fontSize: 18))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(ChoseDriverBookerPage.routeName);
              },
              style: TextButton.styleFrom(
                  elevation: 5,
                  fixedSize: const Size(370, 60),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromRGBO(33, 224, 189, 1),
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
          ],
        ));
  }
}
