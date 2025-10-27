import 'package:flutter/material.dart';

class LocaleProvider with ChangeNotifier {
  Locale? _locale;
  Locale? get locale => _locale;
  String selectedLocale='en';
  void setAppLocale(String locale) {
    selectedLocale = locale;
    notifyListeners();
  }
}
