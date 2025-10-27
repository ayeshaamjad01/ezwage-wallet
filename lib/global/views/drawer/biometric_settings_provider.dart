import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/ui/authentication/controller/biometric_controller.dart';
import 'package:flutter/material.dart';

class BiometricSettingsProivder extends ChangeNotifier {
  bool fingerPrintSwitch = false;
  bool faceIdSwitch = false;

  getSwitchValues() {
    if (preferences.get('fingerPrintSwitch') != null) {
      if (preferences.get('fingerPrintSwitch') == 'true') {
        fingerPrintSwitch = true;
        fingerPrintBiometric = true;
      } else {
        fingerPrintSwitch = false;
        fingerPrintBiometric = false;
      }
    }

    if (preferences.get('faceIdSwitch') != null) {
      if (preferences.get('faceIdSwitch') == 'true') {
        faceIdSwitch = true;
        faceIdBiometric = true;
      } else {
        faceIdSwitch = false;
        faceIdBiometric = false;
      }
    }
    notifyListeners();
  }

  setFingerPrintSwitchValue(bool value) {
    fingerPrintSwitch = value;
    preferences.put('fingerPrintSwitch', fingerPrintSwitch.toString());
    fingerPrintBiometric = fingerPrintSwitch;
    notifyListeners();
  }

  setFaceIdSwitchValue(bool value) {
    faceIdSwitch = value;
    preferences.put('faceIdSwitch', faceIdSwitch.toString());
    faceIdBiometric = faceIdSwitch;
    notifyListeners();
  }
}
