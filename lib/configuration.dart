import 'package:flutter/material.dart';

class Configuration extends ChangeNotifier {
  Brightness brightness = Brightness.light;
  changeTheme(Brightness newBrightness){
    brightness = newBrightness;
    notifyListeners();
  }
}