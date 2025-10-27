import 'package:ezwage/ui/support/view/support_screen.dart';
import 'package:flutter/material.dart';

void navigateToSupportScreen(BuildContext context) {
  Navigator.pop(context);
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => SupportScreen()));
}
