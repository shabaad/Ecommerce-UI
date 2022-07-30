import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShowAll extends ChangeNotifier {
  var showAll = false;

  void showText() {
    showAll = !showAll;
    notifyListeners();
  }
}
