import 'package:flutter/material.dart';

class Listmapprovider extends ChangeNotifier {
  final List<Map<String, dynamic>> _mydata = [];

  void adddata(Map<String, dynamic> data) {
    _mydata.add(data);
    notifyListeners();
  }

  void deletedata(int index) {
    _mydata.removeAt(index);
    notifyListeners();
  }

  List<Map<String, dynamic>> getlist() => _mydata;
}
