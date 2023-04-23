import 'package:flutter/material.dart';

class HomePageMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageMenu();
  }
}

class _HomePageMenu extends State<HomePageMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Material(
        elevation: 1,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Image(
                      width: 60,
                      height: 60,
                      image:
                          AssetImage('assets/images/icons8-driver-64 1.png')),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lái xe",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(10, 180, 149, 1)),
                  )
                ],
              ),
              Column(
                children: const [
                  Image(
                      width: 60,
                      height: 60,
                      image: AssetImage(
                          'assets/images/icons8-motorcycle-50 1.png')),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Bắt xe",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(10, 180, 149, 1)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
