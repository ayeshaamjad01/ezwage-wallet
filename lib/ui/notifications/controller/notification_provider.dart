import 'dart:convert';

import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/get_api_data.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';

class NotificationProvider extends ChangeNotifier {
  bool showNotifications = false;
  bool loadNotificcations = false;
  var notificationTitleList = [];
  var notificationDescriptionList = [];
  var notificationTypeList = [];
  var notificationIdList = [];
  allNotificationsLoaded() {
    loadNotificcations = true;
    notifyListeners();
  }

  showNotificationsList(bool value) {
    showNotifications = value;
    notifyListeners();
  }

  getNotifications(BuildContext context) async {
    Response response = await ApiFunctions().getRequest(
        'notification/user_id/' + preferences.get('id').toString(), context);
    List<GetApiData> _parseNotificationsList = <GetApiData>[];
    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      _parseNotificationsList = GetApiData.parse()
          .apiData(jsonEncode(decodedJson['results']['data']));
      notificationDescriptionList = [];
      notificationIdList = [];
      notificationTitleList = [];
      notificationTypeList = [];
      for (int i = 0; i < _parseNotificationsList.length; i++) {
        notificationTitleList
            .add(_parseNotificationsList[i].getApiData['title']);
        notificationDescriptionList
            .add(_parseNotificationsList[i].getApiData['description']);
        notificationTypeList
            .add(_parseNotificationsList[i].getApiData['type'].toString());
        notificationIdList.add(_parseNotificationsList[i].getApiData['id']);
      }
      loadNotificcations = true;
      showNotifications = true;
      notifyListeners();
    } else {
      loadNotificcations = true;
      showNotifications = false;
      notifyListeners();
    }
  }
}
