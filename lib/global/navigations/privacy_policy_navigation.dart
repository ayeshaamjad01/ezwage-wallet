import 'package:ezwage/ui/privacy_policy/view/privacy_policy_screen.dart';
import 'package:flutter/material.dart';

void navigateToPrivacyPolicyScreen(BuildContext context) {
  // Navigator.pop(context);
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PrivacyPolicyScreen()));
}
