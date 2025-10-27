import 'package:flutter/material.dart';

class SettingsChangePasswordProvider extends ChangeNotifier {
  bool enableSaveButton = false;
  var hidePassword = [true, true, true];
  bool showProcess = false;
  setHidePassword(bool value, int index) {
    hidePassword[index] = value;
    notifyListeners();
  }

  setSaveButtonStatus(bool value) {
    enableSaveButton = value;
    notifyListeners();
  }
}
