import 'dart:convert';

import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/ui/update_dialouge/model/update_dialouge_model.dart';
import 'package:ezwage/ui/update_dialouge/view/update_dialouge_view.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:http/http.dart';

class UpdateDialougeController {
  static getAppVersion(BuildContext context) async {
    Response response;
    try {
      response = await ApiFunctions().getRequest("appVersion", context);
      var decodedJson = jsonDecode(response.body);
      if (UpdateDialougeModel.appVersion !=
          decodedJson['results'][0]['version']) {
        return showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return UpdateDialougeView();
            });
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
