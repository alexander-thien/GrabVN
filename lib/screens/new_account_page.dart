import 'package:flutter/material.dart';
import './login_page.dart';
import './widgets/new_account_form/NewAccountForm.dart';

class NewAccountPage extends StatelessWidget {
  static const String routeName = 'NewAccountPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                                Navigator.of(context)
                                    .pushNamed(LoginPage.routeName);
                              },
                              child: Container(
                                padding: const EdgeInsets.only(left: 8),
                                decoration: const BoxDecoration(),
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 22,
                                ),
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                        child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Đăng Kí tài khoản",
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: "UTM Avo",
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(10, 180, 149, 1)),
                      ),
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Image(
                image: AssetImage('assets/images/logo.jpg'),
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Nhập thông tin của bạn',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
              NewAccountForm()
            ],
          ),
        ),
      ),
    );
  }
}
