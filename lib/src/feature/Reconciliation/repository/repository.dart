import 'package:firststore/src/feature/Reconciliation/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Repository {
  static Future<void> selectDate(BuildContext context) async {
    final dateProvider = Provider.of<DateProvider>(context, listen: false);
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: dateProvider.selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != dateProvider.selectedDate) {
      dateProvider.updateDate(picked);
    }
  }
}
