import 'package:firststore/src/feature/General%20Ledger/view/general_ledger_home.dart';
import 'package:firststore/src/feature/Reconciliation/view/mt_ai.dart';
import 'package:firststore/src/feature/home/view/Home/homepage.dart';
import 'package:flutter/material.dart';

class NavigateNotifier extends ChangeNotifier {
  int _index = 0;
  List<Widget> pages = [
    const Homepage(),
    const MtAi(),
    const GeneralLedgerHome()
  ];

  int get index => _index;
  void changeindex(int indexvalue) {
    _index = indexvalue;
    notifyListeners();
  }
}
