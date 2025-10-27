import 'package:ezwage/ui/analytics/view/analytics_screen.dart';
import 'package:flutter/material.dart';

void navigateToAnalyticsScreen(BuildContext context) {
  Navigator.pop(context);
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => AnalyticsScreen()));
}
