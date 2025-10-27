import 'package:flutter/widgets.dart';

class CustomBottomNavigationProvider extends ChangeNotifier {
  bool homeTab = false;
  int tabIndex = 2;
  // updateHomeTab(bool value) {
  //   homeTab = value;
  //   notifyListeners();
  // }

  getTabIndex(int value) async {
    tabIndex = value;
    if (tabIndex == 2) {
      homeTab = true;
    } else {
      homeTab = false;
    }
    await Future.delayed(Duration(milliseconds: 1));
    notifyListeners();
  }
}
