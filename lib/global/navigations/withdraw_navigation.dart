import 'package:ezwage/ui/withdraw/view/withdraw_screen.dart';
import 'package:flutter/material.dart';

void navigateToWithdrawScreen(BuildContext context) {
  // Navigator.pop(context);
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => WithdrawScreen()));
}
