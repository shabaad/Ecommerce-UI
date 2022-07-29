import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabToggle extends ChangeNotifier {
  bool isVisible = true;

  void closeTab() {
    isVisible = !isVisible;
    notifyListeners();
  }
}
