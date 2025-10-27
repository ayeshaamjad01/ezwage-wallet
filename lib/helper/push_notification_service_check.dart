import 'package:ezwage/global/utils/global_hive.dart';

checkPushNotificationServiceEnablity() {
  if (preferences.get('notificationSwitch') == null) {
    return true;
  } else if (preferences.get('notificationSwitch')! == 'true') {
    return true;
  } else {
    return false;
  }
}
