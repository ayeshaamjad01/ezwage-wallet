import 'dart:convert';
import 'dart:io';

import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';

class PrivacyPolicyProvider extends ChangeNotifier {
  bool policyAccepted = false;
  String policyDocPath = '';
  checkPolicyAccepted(BuildContext context) async {
    Response response = await ApiFunctions().getRequest(
        'employees/getemployeedetail/' +
            preferences.get('employee_id').toString(),
        context);
    if (response.statusCode == 200) {
      var jsonDecoded = jsonDecode(response.body);
      if (jsonDecoded['results']['data'][0]['privacy_policy_status'] != null) {
        if (jsonDecoded['results']['data'][0]['privacy_policy_status'] == 0) {
          policyAccepted = false;
        } else {
          policyAccepted = true;
        }
      }
      notifyListeners();
    }
  }

  setPolicyAcceptance(int value, BuildContext context) async {
    var jsonBody = {'privacy_policy_status': value};
    Response response = await ApiFunctions().patchRequest(
        'employees/' + preferences.get('employee_id').toString(),
        jsonEncode(jsonBody),
        context);
    if (response.statusCode == 200) {
      if (value == 0) {
        policyAccepted = false;
      } else {
        policyAccepted = true;
      }
    }
  }

  createFilePath(String assetsFilePath) async {
    File file;
    try {
      var dir = await getApplicationDocumentsDirectory();
      file = File("${dir.path}/file.pdf");
      var data = await rootBundle.load(assetsFilePath);
      var bytes = data.buffer.asUint8List();
      await file.writeAsBytes(bytes, flush: true);
      policyDocPath = file.path;
      notifyListeners();
    } catch (e) {
      throw Exception('Error parsing asset file!');
    }
  }
}
