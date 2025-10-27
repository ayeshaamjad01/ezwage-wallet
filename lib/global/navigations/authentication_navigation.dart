import 'package:ezwage/ui/authentication/view/authscreen_create.dart';
import 'package:flutter/material.dart';

void navigateToAuthenticationScreen(BuildContext context) {
  // Navigator.pop(context);
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => AuthScreenCreate()));
}
