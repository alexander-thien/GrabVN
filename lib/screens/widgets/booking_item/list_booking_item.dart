import 'package:flutter/material.dart';

class BookingItem extends StatefulWidget {
  String name;
  int status;

  BookingItem({required this.name, required this.status});

  @override
  State<StatefulWidget> createState() {
    return _BookingItem();
  }
}

class _BookingItem extends State<BookingItem> {
  Color renderColor(int n) {
    if (n == 1) return Colors.green;
    if (n == 2) return Colors.blue;

    return Colors.red;
  }

  String renderText(int n) {
    if (n == 1) return "Hoàn Thành";
    if (n == 2) return "Đang chờ";

    return "Hủy";
  }

  IconData renderIcon(int n) {
    if (n == 1) return Icons.check_circle;
    if (n == 2) return Icons.av_timer;

    return Icons.cancel;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.name,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(53, 44, 100, 1)),
              ),
              const Icon(
                Icons.info,
                size: 28,
                color: Color.fromRGBO(53, 44, 100, 1),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Color.fromRGBO(10, 180, 149, 1),
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(145, 16),
                    backgroundColor: renderColor(widget.status),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: const BorderSide(color: Colors.white))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      renderText(widget.status),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      // <-- Icon
                      color: Colors.white,
                      renderIcon(widget.status),
                      size: 18.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
