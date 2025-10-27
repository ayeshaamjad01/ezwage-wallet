import 'package:ezwage/global/models/app_language.dart';

correctPhoneNumber(String value) {
  if (value.length > 10) {
    if (value[0] == '0' && value[1] != '0') {
      value = appLanguage == 'en'
          ? '+92' + value.toString().substring(1)
          : '92' + value.toString().substring(1) + '+';
    } else if (value[0] == '9' &&
        value[1] == '2' &&
        value[value.length - 1] != '+') {
      value = appLanguage == 'en'
          ? '+92' + value.toString().substring(2)
          : '92' + value.toString().substring(2) + '+';
    } else if (value[0] == '0' &&
        value[1] == '0' &&
        value[2] == '9' &&
        value[3] == '2') {
      value = appLanguage == 'en'
          ? '+92' + value.toString().substring(4)
          : '92' + value.toString().substring(4) + '+';
    }
  }
  return value;
}
