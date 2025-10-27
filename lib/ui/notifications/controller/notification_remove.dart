import 'dart:convert';

import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/ui/notifications/controller/notification_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

removeNotification(int index, BuildContext context) async {
  var jsonBody = {"status": 0};
  // ignore: unused_local_variable
  Response response = await ApiFunctions().patchRequest(
      'notification/' + index.toString(), jsonEncode(jsonBody), context);
}

removeAllNotifications(BuildContext context) async {
  var response = await ApiFunctions()
      .deleteRequest('notification/user_id/' + preferences.get('id'), '{}');
  if (response == 200) {
    context.read<NotificationProvider>().getNotifications(context);
  }
}
