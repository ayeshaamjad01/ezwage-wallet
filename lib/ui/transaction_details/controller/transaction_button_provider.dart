import 'package:flutter/material.dart';

class TransactionButtonProvider extends ChangeNotifier {
  bool downloadProcess = false;
  setDownloadProcessStatus(bool value) {
    downloadProcess = value;
    notifyListeners();
  }
}
