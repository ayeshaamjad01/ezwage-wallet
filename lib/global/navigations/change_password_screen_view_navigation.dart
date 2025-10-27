import 'package:ezwage/ui/settings/controller/change_password_provider.dart';
import 'package:ezwage/ui/settings/view/change_password_settings.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void navigateToChangePasswordScreenView(BuildContext context) {
  // Navigator.pop(context);
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => MultiProvider(providers: [
            ChangeNotifierProvider(
                create: (_) => SettingsChangePasswordProvider()),
          ], child: ChangePasswordSettings())));
}
