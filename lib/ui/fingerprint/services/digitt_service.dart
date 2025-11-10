import 'package:flutter/services.dart';

class DigittService {
  static const platform = MethodChannel('com.ezwage.employee/digitt');

  static Future<void> launchSDK({
    required String clientId,
    required String clientSecret,
    required String partnerId,
    required String mobile,
    required String cnic,
  }) async {
    try {
      await platform.invokeMethod('launchDigittSDK', {
        'clientId': clientId,
        'clientSecret': clientSecret,
        'partnerId': partnerId,
        'mobile': mobile,
        'cnic': cnic,
      });
    } on PlatformException catch (e) {
      print("Failed to launch Digitt SDK: ${e.message}");
    }
  }
}
