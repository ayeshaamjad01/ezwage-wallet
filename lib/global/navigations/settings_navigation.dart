import 'package:ezwage/ui/settings/view/settings_screen.dart';
import 'package:flutter/material.dart';

void navigateToSettingsScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => SettingsScreen()));
}
