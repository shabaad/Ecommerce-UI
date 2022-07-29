import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IconToggle extends ChangeNotifier {
  bool toggle = false;

  void changeIcon() {
    toggle = !toggle;
    notifyListeners();
  }
}
