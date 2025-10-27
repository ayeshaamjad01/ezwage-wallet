import 'package:ezwage/global/utils/app_logout_timer.dart';
import 'package:ezwage/global/utils/auto_logout.dart';
import 'package:ezwage/global/views/navigation_bar/controller/custom_bottom_navigation_bar_provider.dart';
import 'package:ezwage/global/views/navigation_bar/view/custom_bottom_navigation_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CustomBottomNavigationBar extends StatefulWidget {
  int defaultTab = 0;
  CustomBottomNavigationBar(this.defaultTab);
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    if (appLogoutTimer != null) appLogoutTimer!.cancel();
    AutoLogout().initializeTimer(context);
    return Scaffold(
      extendBody: true,
      body: ChangeNotifierProvider<CustomBottomNavigationProvider>(
        create: (_) => CustomBottomNavigationProvider(),
        lazy: false,
        child: CustomBottomNavigationBarView(widget.defaultTab),
      ),
    );
  }
}
