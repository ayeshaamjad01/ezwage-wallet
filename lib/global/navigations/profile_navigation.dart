import 'package:ezwage/ui/profile/view/profile_screen.dart';
import 'package:flutter/material.dart';

void navigateToProfileScreen(BuildContext context) {
  // Navigator.pop(context);
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => ProfileScreen()));
}
