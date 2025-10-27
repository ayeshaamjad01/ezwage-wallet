import 'package:ezwage/ui/splash_screen/view/splash_view.dart';
import 'package:flutter/material.dart';

void navigateToSplashScreen(BuildContext context) {
  Navigator.pop(context);
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => SplashScreen()));
}
