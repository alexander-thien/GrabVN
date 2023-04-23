class HistoryDataCard {
  int price;
  DateTime date;
  String address;

  HistoryDataCard(
      {required this.price, required this.date, required this.address});
}

List<HistoryDataCard> historycard = [
  HistoryDataCard(price: 200000, address: "Hello 11", date: DateTime.now()),
  HistoryDataCard(price: 100000, address: "Hello", date: DateTime.now()),
  HistoryDataCard(price: 156000, address: "Hello", date: DateTime.now()),
  HistoryDataCard(price: 278000, address: "Hello", date: DateTime.now()),
  HistoryDataCard(price: 278000, address: "Hello", date: DateTime.now()),
  HistoryDataCard(price: 278000, address: "Hello", date: DateTime.now()),
  HistoryDataCard(price: 278000, address: "Hello", date: DateTime.now()),
];
