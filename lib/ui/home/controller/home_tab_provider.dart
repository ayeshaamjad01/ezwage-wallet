import 'dart:async';
import 'dart:convert';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/ui/home/model/notification_timer.dart';
import 'package:ezwage/ui/profile/model/profile_model.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ezwage/global/models/balance.dart';

class HomeTabProvider extends ChangeNotifier {
  bool showHomeScreen = false;
  bool notificationsAvailable = false;
  int notificationDuration = 5;

  getEmployeeLatestBalance(BuildContext context) async {
    Response response = await ApiFunctions().getRequest(
        'employees/getemployeebalance/' +
            preferences.get('employee_id').toString(),
        context);
    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      BalanceModel.currentbalance =
          decodedJson["results"]["balance"].toString() != '0'
              ? decodedJson["results"]["balance"].toString().substring(
                  0, decodedJson["results"]["balance"].toString().indexOf('.'))
              : decodedJson["results"]["balance"].toString();
      response = await ApiFunctions().getRequest(
          'employees/' + ProfileModel.empid.toString() + '/withdrawls',
          context);
      var decodeWithdrawJsonValue = jsonDecode(response.body);
      if (response.statusCode == 200)
        BalanceModel.totalWithdarw =
            (decodeWithdrawJsonValue['results']['employee_withdrawals'] != null ||decodeWithdrawJsonValue['results']['employee_withdrawals'] != 0 )
                ? double.parse(
                    decodeWithdrawJsonValue['results']['employee_withdrawals'].toString())
                : 0;
      else
        BalanceModel.totalWithdarw = 0;
      notifyListeners();
    }
  }

  checkNewNotifications(BuildContext context) async {
    Response response = await ApiFunctions().getRequest(
        'notification/user_id/' + preferences.get('id').toString() + '/un_read',
        context);
    var decodedJson = jsonDecode(response.body);
    if (response.statusCode == 200) {
      if (decodedJson['results']['un_read'] == true) {
        notificationsAvailable = true;
        notificationCounter = decodedJson['results']['count'];
        notifyListeners();
      } else {
        if (notificationsAvailable == true) {
          notificationsAvailable = false;
          notifyListeners();
        }
      }
    }
    receivedNotificationFromFirebase = false;
  }

  setNotificationsCheck(BuildContext context) async {
    notificationTimer = new Timer.periodic(
      Duration(seconds: notificationDuration),
      (Timer timer) {
        if (receivedNotificationFromFirebase == true)
          checkNewNotifications(context);
      },
    );
  }

  readAllNotifications(BuildContext context) async {
    Response response = await ApiFunctions().patchRequest(
        'notification/user_id/' +
            preferences.get('id').toString() +
            '/markasread',
        '{}',
        context);
    if (response.statusCode == 200) {
      notificationsAvailable = false;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    super.dispose();
    if (notificationTimer != null) notificationTimer?.cancel();
  }
}
