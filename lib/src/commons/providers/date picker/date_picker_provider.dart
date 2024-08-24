import 'package:flutter/material.dart';

class DatePickerProvider extends ChangeNotifier {
  DateTime? selectedDate;

  void setSelectedDate(DateTime? newDate) {
    selectedDate = newDate;
    notifyListeners();
  }
}
