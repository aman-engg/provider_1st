import 'package:flutter/material.dart';

class Counterprovider extends ChangeNotifier {
  int _count = 0;
  double hight = 20;
  double width = 20;

  int getcount() => _count;

  void widthincrease() {
    width = width + 20;
    notifyListeners();
  }

  void hightincrease() {
    hight = hight + 10;
    notifyListeners();
  }

  void decreasecontainerhight() {
    if (hight > 10) {
      hight = hight - 10;
    }
    notifyListeners();
  }

  void decreasecontainerwidt() {
    if (width > 10) {
      width = width - 10;
    }
    notifyListeners();
  }

  double gethight() => hight;
  double getwidth() => width;

  void incrementcounter() {
    _count++;
    notifyListeners();
  }

  void decrementcounter() {
    if (_count > 0) {
      _count--;
      notifyListeners();
    }
  }
}
