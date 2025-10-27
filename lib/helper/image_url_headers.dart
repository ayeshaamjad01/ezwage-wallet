import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/helper/api_functions.dart';

Map<String, String> IMAGE_HEADERS = {
  'traceid': ApiFunctions().traceid,
  'Authorization': 'Bearer ' + preferences.get('token').toString(),
};
