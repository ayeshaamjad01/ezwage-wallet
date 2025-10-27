import 'package:ezwage/ui/email_contact/model/email_model.dart';
import 'package:flutter/material.dart';

class EmailProvider extends ChangeNotifier {
  void makenull() {
    EmailModel.message = null;
    EmailModel.subject = null;
    notifyListeners();
  }

  void changemessage(String mess) {
    EmailModel.message = mess;
    notifyListeners();
  }

  void changesubject(String sub) {
    EmailModel.subject = sub;
    notifyListeners();
  }
}
