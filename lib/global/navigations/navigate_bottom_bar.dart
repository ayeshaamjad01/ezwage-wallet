import 'package:ezwage/global/views/navigation_bar/view/custom_bottom_navigation_bar_create.dart';
import 'package:flutter/material.dart';

void navigateToCustomNavigationBar(BuildContext context, int defaultTab) {
  // Navigator.pop(context);
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => CustomBottomNavigationBar(defaultTab)));
}
