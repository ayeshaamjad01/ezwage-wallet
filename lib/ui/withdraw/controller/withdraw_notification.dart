import 'dart:convert';

import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:http/http.dart';

createWithdrawNotification(
    String notificationTitle,
    var notificationDescription,
    int notificationType,
    BuildContext context) async {
  var jsonBody = {
    "title": notificationTitle,
    "description": notificationDescription,
    "user_id": preferences.get('id'),
    "company_id": preferences.get('company_id'),
    "is_read": 0,
    "type": notificationType,
    "source": "Mobile"
  };
  // ignore: unused_local_variable
  Response response = await ApiFunctions()
      .postRequest('notification', jsonEncode(jsonBody), context);
}
