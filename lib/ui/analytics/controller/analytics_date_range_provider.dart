import 'package:flutter/material.dart';

class AnalyticsDateRangeProvider extends ChangeNotifier {
  int selectedMonthCount = 6;
  setMonthCount(int value) {
    selectedMonthCount = value;
    notifyListeners();
  }
}
