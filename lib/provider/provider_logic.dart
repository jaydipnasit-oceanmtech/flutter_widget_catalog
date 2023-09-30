import 'package:flutter/material.dart';

class Item {
  final String name;
  final String subname;
  bool isFavorite;

  Item(this.name, this.isFavorite, this.subname);
}

class CommonCalss extends ChangeNotifier {
  int count = 0;
  bool favriatIcon = true;
  DateTime time = DateTime.now();
  List<Item> _items = [
    Item("BMW", false, "BMW X5"),
    Item("Chevrolet", false, "Chevrolet Silverado"),
    Item("Jeep", false, "Jeep Wrangler"),
    Item("Mercedes-Benz", false, "Mercedes-Benz GLC"),
  ];

  List<Item> get items => _items;
  bool get isFavriat => favriatIcon;

  ///Incrementvalu & Dicrementvalue using provider
  void incrementValu() {
    count++;
    notifyListeners();
  }

  void dicrementValu() {
    count--;
    notifyListeners();
  }

  void zeroValu() {
    count = 0;
    notifyListeners();
  }

  ///DatePicker using provider
  void timeDate(DateTime newTime) async {
    time = newTime;
    notifyListeners();
  }

  //Favoriate using provider
  void favriatItems(int index) {
    _items[index].isFavorite = !_items[index].isFavorite;
    notifyListeners();
    print(favriatIcon);
  }
}
