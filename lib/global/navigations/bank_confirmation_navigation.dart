import 'package:ezwage/ui/bank_confirmation/view/bank_confirmation_screen.dart';
import 'package:flutter/material.dart';

void navigateToBankConfirmationScreen(BuildContext context) {
  Navigator.pop(context);
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => BankConfirmationScreen()));
}
