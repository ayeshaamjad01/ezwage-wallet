import 'dart:convert';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/utils/token.dart';
import 'package:ezwage/ui/authentication/model/save_user_info.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:http/http.dart';
import 'package:ezwage/ui/profile/model/profile_model.dart';

class LoginCheck {
  loginapi(String userEmail, String userPassword) async {
    var jsonBody = {"email": userEmail, "password": userPassword};

    Response response =
        await ApiFunctions().loginRequest('users/login', jsonEncode(jsonBody));
    var res = jsonDecode(response.body);
    if (response.statusCode == 200) {
      SaveUserInfo().saveUserInformation(jsonDecode(response.body));
      preferences.put('token', res["token"]);
      TokenModel.token = preferences.get('token')!;
      ProfileModel.uid = res["id"];
      ProfileModel.empid = res["employee_id"];
      ProfileModel.comid = res["company_id"];
      return true;
    } else {
      return false;
    }
  }
}
