import 'package:flutter/material.dart';

class EntityTypeController with ChangeNotifier {
  bool _selected_individual = false;
  bool _selected_business = false;
  bool get selected_individual => _selected_individual;
  bool get selected_business => _selected_business;

  void changeindividual(bool value) {
    if (value == true) {
      _selected_individual = value;
      notifyListeners();
    }
    if (value == false) {
      _selected_individual = false;
      notifyListeners();
    }
  }

  void changebusiness(bool value) {
    if (value == true) {
      _selected_business = true;
      notifyListeners();
    }
    if (value == false) {
      _selected_business = false;
      notifyListeners();
    }
  }
}
