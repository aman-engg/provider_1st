import 'package:flutter/material.dart';

class Listmapprovider extends ChangeNotifier {
  final List<Map<String, dynamic>> _mydata = [];

  void adddata(Map<String, dynamic> data) {
    _mydata.add(data);
    notifyListeners();
  }

  List<Map<String, dynamic>> getlist() => _mydata;
}
