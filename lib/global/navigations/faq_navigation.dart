import 'package:ezwage/ui/faq/view/faq_screen.dart';
import 'package:flutter/material.dart';

void navigateToFaqScreen(BuildContext context) {
  // Navigator.pop(context);
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => FaqScreen()));
}
