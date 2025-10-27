import 'package:flutter/widgets.dart';

class FaqProvider extends ChangeNotifier {
  var showFaq = [];
  bool faqListCreated = false;
  bool dataLoadedFromApi = false;
  createFaqList(int count) {
    for (int i = 0; i < count; i++) {
      showFaq.add(false);
    }
    showFaqList();
  }

  showFaqList() {
    faqListCreated = true;
    notifyListeners();
  }

  setApiDataLoaded(bool value) {
    dataLoadedFromApi = value;
    notifyListeners();
  }

  updateFaqList(int index) {
    if (showFaq[index] == false)
      showFaq[index] = true;
    else
      showFaq[index] = false;
    notifyListeners();
  }
}
