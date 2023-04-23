import 'package:flutter/material.dart';
import 'package:grabvn/screens/models/history_data_card.dart';
import 'package:intl/intl.dart';
import 'package:flutter_format_money_vietnam/flutter_format_money_vietnam.dart';

class Historycard extends StatefulWidget {
  HistoryDataCard historyDataCard;

  Historycard({required this.historyDataCard});

  @override
  State<StatefulWidget> createState() {
    return _Historycard();
  }
}

class _Historycard extends State<Historycard> {
  @override
  Widget build(Object context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 120,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(10, 180, 149, 1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget.historyDataCard.price.toString().toVND(),
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.historyDataCard.address,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            )
          ],
        ),
        const Divider(color: Colors.white),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat('yyyy-MM-dd – kk:mm')
                  .format(widget.historyDataCard.date),
              style: const TextStyle(fontSize: 18, color: Colors.white),
            )
          ],
        ),
      ]),
    );
  }
}
