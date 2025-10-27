import 'dart:io';
import 'package:ezwage/global/firebase/firebase_configuration.dart';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/ui/authentication/controller/biometric_controller.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:safe_device/safe_device.dart';

class AppStartupConfiguration {
  static doConfigurations() async {
    bool isJailBroken = await SafeDevice.isJailBroken;
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(appDocumentDirectory.path);
    ErrorWidget.builder = (FlutterErrorDetails details) => Container(
          color: Colors.white, 
        );
    preferences = await Hive.openBox('appBox');
    await FirebaseConfiguration.assignFirebaseKey();
    if (preferences.get('language') != null &&
        preferences.get('startup_session') != null)
      appLanguage = preferences.get('language').toString();
    if (preferences.get('fingerPrintSwitch') != null) {
      if (preferences.get('fingerPrintSwitch') == 'true') {
        fingerPrintBiometric = true;
      } else {
        fingerPrintBiometric = false;
      } 
    }
    if (preferences.get('faceIdSwitch') != null) {
      if (preferences.get('faceIdSwitch') == 'true') {
        faceIdBiometric = true;
      } else {
        faceIdBiometric = false;
      }
    }
    if (preferences.get('userEmail') != null &&
        preferences.get('userPassword') != null &&
        // preferences.get('remember') == 'true' &&
        isJailBroken == false) {
      LoginModel.email = preferences.get('userEmail').toString();
      LoginModel.password = preferences.get('userPassword').toString();
      if (preferences.get('startup_session') != null)
        preferences.put('startup_session', 'true');
      // if (preferences.get('remember').toString() == 'true')
      //   LoginModel.remember = true;
      // else
      //   LoginModel.remember = false;
      FirebaseConfiguration.initalizeFirebase();
    } else {
      LoginModel.allowBiometric = false;
      LoginModel.email = null;
      LoginModel.password = null;
      // LoginModel.remember = false;
      if (isJailBroken == true) {
        // exit(0);
      } else {
        FirebaseConfiguration.initalizeFirebase();
      }
    }
  }
}
