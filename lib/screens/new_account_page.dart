import 'package:flutter/material.dart';
import './login_page.dart';
import './widgets/new_account_form/NewAccountForm.dart';

class NewAccountPage extends StatelessWidget {
  static const String routeName = 'NewAccountPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: <Widget>[
                    // IconButton(
                    //     splashRadius: 20,
                    //     icon: const Icon(
                    //       Icons.arrow_back_ios,
                    //       color: Colors.cyan,
                    //     ),
                    //     onPressed: () {
                    //       print("Hello");
                    //     }),
                    SizedBox.fromSize(
                      size: const Size(40, 40),
                      child: ClipOval(
                        child: Material(
                          color: Colors.cyan,
                          child: InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(LoginPage.routeName);
                              },
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 22,
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          "New Account",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
              ),
              const Text(
                'Nhập thông tin của bạn',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
              NewAccountForm()
            ],
          ),
        )),
      ),
    );
  }
}
