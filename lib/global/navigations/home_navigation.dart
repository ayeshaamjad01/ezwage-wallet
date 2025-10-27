import 'package:ezwage/ui/home/view/home_screen.dart';
import 'package:flutter/material.dart';

void navigateToHomeScreen(BuildContext context) {
  Navigator.pop(context);
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => HomeScreen()));
}
