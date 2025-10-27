import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/utils/global_hive.dart';
// import 'package:ezwage/ui/authentication/controller/biometric_controller.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  bool notificationSwitch = true;
  // bool fingerPrintSwitch = false;
  // bool faceIdSwitch = false;
  setNotificationSwitchValue(bool value) {
    notificationSwitch = value;
    notifyListeners();
  }

  getSwitchValues() {
    if (preferences.get('notificationSwitch') != null) {
      if (preferences.get('notificationSwitch') == 'true')
        notificationSwitch = true;
      else
        notificationSwitch = false;
    }

    // if (preferences.get('fingerPrintSwitch') != null) {
    //   if (preferences.get('fingerPrintSwitch') == 'true') {
    //     fingerPrintSwitch = true;
    //     fingerPrintBiometric = true;
    //   } else {
    //     fingerPrintSwitch = false;
    //     fingerPrintBiometric = false;
    //   }
    // }

    // if (preferences.get('faceIdSwitch') != null) {
    //   if (preferences.get('faceIdSwitch') == 'true') {
    //     faceIdSwitch = true;
    //     faceIdBiometric = true;
    //   } else {
    //     faceIdSwitch = false;
    //     faceIdBiometric = false;
    //   }
    // }
    notifyListeners();
  }

  // setFingerPrintSwitchValue(bool value) {
  //   fingerPrintSwitch = value;
  //   notifyListeners();
  // }

  // setFaceIdSwitchValue(bool value) {
  //   faceIdSwitch = value;
  //   notifyListeners();
  // }

  saveSwitchValues(BuildContext context) {
    // preferences.put('faceIdSwitch', faceIdSwitch.toString());
    // faceIdBiometric = faceIdSwitch;
    // preferences.put('fingerPrintSwitch', fingerPrintSwitch.toString());
    // fingerPrintBiometric = fingerPrintSwitch;
    if (notificationSwitch == false) {
      FirebaseMessaging.instance.unsubscribeFromTopic(
          preferences.get('notificationSubscription').toString());
    } else {
      if (preferences.get('notificationSwitch') == 'false') {
        FirebaseMessaging.instance.subscribeToTopic(
            preferences.get('notificationSubscription').toString());
      }
    }
    preferences.put('notificationSwitch', notificationSwitch.toString());

    navigateToCustomNavigationBar(context, 2);
  }
}
