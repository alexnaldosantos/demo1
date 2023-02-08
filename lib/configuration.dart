import 'package:flutter/material.dart';

class Configuration extends ChangeNotifier {
  String title = "My App";
  changeTitle(String newTitle){
    title = newTitle;
    notifyListeners();
  }
}