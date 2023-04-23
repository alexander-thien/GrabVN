import 'package:flutter/material.dart';

class PaymentCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PaymentCard();
  }
}

class _PaymentCard extends State<PaymentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: const Color.fromRGBO(10, 180, 149, 1),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.payment_outlined,
                size: 35,
                color: Color.fromRGBO(10, 180, 149, 1),
              ),
              Text(
                "**** **** 4233",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Color.fromRGBO(10, 180, 149, 1),
            height: 2,
          ),
        ],
      ),
    );
  }
}
