import 'package:ezwage/ui/email_contact/view/email_screen.dart';
import 'package:flutter/material.dart';

void navigateToEmailScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => EmailScreen()));
}
