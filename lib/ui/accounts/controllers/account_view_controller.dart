import 'package:ezwage/ui/accounts/models/accounts_model.dart';
import 'package:flutter/material.dart';

class AccountsController extends ChangeNotifier {
  void ChangeColor(Color col) {
    AccountsModel.color = col;
    notifyListeners();
  }
}
