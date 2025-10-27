import 'dart:async';
import 'package:ezwage/global/navigations/authentication_navigation.dart';
import 'package:ezwage/global/utils/app_logout_timer.dart';
import 'package:ezwage/global/utils/set_logout_time.dart';
import 'package:ezwage/ui/home/model/notification_timer.dart';
import 'package:flutter/material.dart';

class AutoLogout {
  var differenceInTime;
  int calculateTime() {
    DateTime datetime = DateTime.now();
    final difference = datetime.difference(setLogoutTime!).inSeconds;
    return difference;
  }

  logoutApplication(BuildContext context) {
    navigateToAuthenticationScreen(context);
  }

  initializeTimer(BuildContext context) {
    appLogoutTimer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      int timeDiffernce = calculateTime();
      if (timeDiffernce >= 300 && chatActive == false) {
        if (appLogoutTimer != null) appLogoutTimer!.cancel();
        if (notificationTimer != null) notificationTimer!.cancel();
        logoutApplication(context);
      }
    });
  }
}
