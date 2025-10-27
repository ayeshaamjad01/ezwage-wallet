import 'dart:io';

import 'package:ezwage/ui/ez_services/view/ez_services_view.dart';
import 'package:ezwage/ui/home/view/create_home_screen.dart';
// import 'package:ezwage/global/models/app_language.dart';
// import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/navigation_bar/controller/custom_bottom_navigation_bar_provider.dart';
import 'package:ezwage/global/views/navigation_bar/view/curved_navigation_bar.dart';
// import 'package:ezwage/helper/application_dictionary.dart';
// import 'package:ezwage/ui/analytics/view/create_analytics_screen.dart';
import 'package:ezwage/ui/history/view/create_history_screen.dart';
import 'package:ezwage/ui/learn/learn_tab.dart';
import 'package:ezwage/ui/support/view/support_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// import 'package:zendesk_messaging/zendesk_messaging.dart';

// ignore: must_be_immutable
class CustomBottomNavigationBarView extends StatefulWidget {
  int defaultTab = 0;
  CustomBottomNavigationBarView(this.defaultTab);
  @override
  State<CustomBottomNavigationBarView> createState() =>
      _CustomBottomNavigationBarViewState();
}

class _CustomBottomNavigationBarViewState
    extends State<CustomBottomNavigationBarView> with TickerProviderStateMixin {
  // ignore: unused_field
  int _selectedIndex = 2;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this);
    _controller.index = widget.defaultTab;
    context
        .read<CustomBottomNavigationProvider>()
        .getTabIndex(_controller.index);
    _controller.addListener(() {
      _selectedIndex = _controller.index;
      context
          .read<CustomBottomNavigationProvider>()
          .getTabIndex(_controller.index);
    });
  }

  Future<bool> willPopCalled() {
    return exit(0);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: willPopCalled,
      child: Scaffold(
        extendBody: true,
        body: DefaultTabController(
          length: 5,
          initialIndex: widget.defaultTab,
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _controller,
            children: [
              LearnTab(),
              EZServicesView(),
              CreateHomeScreen(),
              CreateHistoryScreen(),
              SupportScreen(),
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: widget.defaultTab,
          height: 90.0,
          items: <Widget>[
            SvgPicture.asset(
              'assets/images/video.svg',
            ),

            SvgPicture.asset('assets/images/ez_friend_svg.svg'),
            // Image.asset(
            //   'assets/images/ez_services_icon.png',
            //   height: 33,
            //   color: Color(0xffC4C4C4),
            // ),
            SvgPicture.asset(
              'assets/images/home.svg',
            ),
            SvgPicture.asset(
              'assets/images/history.svg',
            ),
            SvgPicture.asset(
              'assets/images/support.svg',
            ),
          ],
          color: Colors.white,
          buttonBackgroundColor: Color(0xffEC0B8D),
          backgroundColor: Colors.transparent,
          animationCurve: Curves.linear,
          animationDuration: Duration(milliseconds: 500),
          onTap: (index) {
            _controller.animateTo(index);
          },
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}
