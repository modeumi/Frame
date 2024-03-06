import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Floating_Controller with ChangeNotifier {
  String page_name = '';
  bool page_state = false;

  void Set_Page(String name) {
    page_name = name;
    notifyListeners();
  }

  void Floating_State(bool state) {
    page_state = state;
    notifyListeners();
  }
}
