import 'package:ezwage/ui/history/view/history_screen.dart';
import 'package:flutter/material.dart';

void navigateToHistoryScreen(BuildContext context) {
  Navigator.pop(context);
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => HistoryScreen()));
}
