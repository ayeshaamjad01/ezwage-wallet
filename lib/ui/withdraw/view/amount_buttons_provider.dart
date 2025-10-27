import 'package:flutter/material.dart';

class AmountButtonsProvider extends ChangeNotifier {
  var selectedAmountList = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  changeButtonStatus(bool value, int index) {
    selectedAmountList[index] = value;
    for (int i = 0; i < selectedAmountList.length; i++) {
      if (i == index)
        selectedAmountList[i] = value;
      else
        selectedAmountList[i] = false;
    }
    notifyListeners();
  }
}
