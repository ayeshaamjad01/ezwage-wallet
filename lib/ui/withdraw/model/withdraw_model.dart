import 'package:ezwage/global/utils/date_util.dart';

class WithDrawModel {
  static String amount = "0";
  static String fee = "0";
  static String total = "0";
  static String otp = "0";
  static int transid = 0;
  static double a = 0;

  digitsConverter(int value) {
    if (value < 10)
      return '0' + value.toString();
    else
      return value.toString();
  }

  getTwelveHourFormat(int value) {
    if (value > 11) {
      return 'PM';
    } else {
      return 'AM';
    }
  }

  getHourFormat(int value) {
    if (value == 0) {
      return '12';
    } else if (value > 0 && value < 13) {
      return digitsConverter(value);
    } else {
      return digitsConverter(value - 12);
    }
  }

  getCurrentDateTime() {
    DateTime dateTime = DateTime.now();

    return ' at ' +
        getHourFormat(dateTime.hour) +
        ':' +
        getHourFormat(dateTime.minute) +
        ':' +
        getHourFormat(dateTime.second) +
        ' ' +
        getTwelveHourFormat(dateTime.hour) +
        ' on ' +
        DateUtil().month(dateTime.month) +
        ' ' +
        digitsConverter(dateTime.day) +
        ', ' +
        digitsConverter(dateTime.year);
  }
}
