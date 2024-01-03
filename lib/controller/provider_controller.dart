import 'package:flutter/material.dart';

class TextProvider extends ChangeNotifier {
  List<String> fruit = ['mango', 'orange', 'apple'];
  List<String> vehicle = ['car', 'jeep', 'bike'];
  List data = [];

  TextEditingController textcontroller = TextEditingController();

  void datas() {
    if (textcontroller.text == 'fruit') {
      data.clear();
      for (var element in fruit) {
        data.add(element);
      }
      notifyListeners();
    } else if (textcontroller.text == 'vehicle') {
      data.clear();
      for (var element in vehicle) {
        data.add(element);
      }
      notifyListeners();
    } else {
      const Text('invalied');
      data.clear();
      data.add("invalid");
      notifyListeners();
    }
  }
}
