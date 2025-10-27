import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/utils/set_logout_time.dart';
import 'package:ezwage/global/utils/url_profile_image.dart';
import 'package:ezwage/helper/url.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';

class SaveUserInfo {
  saveUserInformation(var responseData) {
    preferences.put('id', responseData["results"]["id"].toString());
    preferences.put(
        'company_id', responseData["results"]["company_id"].toString());
    preferences.put(
        'employee_id', responseData["results"]["employee_id"].toString());
    preferences.put('username', responseData["results"]["username"].toString());
    preferences.put(
        'name', responseData["results"]["name"].toString());
    LoginModel.userName = responseData["results"]["name"].toString();
    preferences.put('cnic_no', responseData["results"]["cnic_no"].toString());
    preferences.put('email', responseData["results"]["email"].toString());
    preferences.put('role', responseData["results"]["role"].toString());
    preferences.put('phone_no', responseData["results"]["phone_no"].toString());
    preferences.put('user_img', responseData["results"]["user_img"].toString());
    if (preferences.get('user_img') != null &&
        preferences.get('user_img') != '')
      urlProfileImage = GET_FILE_URL + preferences.get('user_img').toString();
    else
      urlProfileImage = 'Default';
    preferences.put('gender', responseData["results"]["gender"].toString());
    preferences.put('is_push_notification',
        responseData["results"]["is_push_notification"].toString());
    preferences.put(
        'is_biomatric', responseData["results"]["is_biomatric"].toString());
    preferences.put(
        'is_verified', responseData["results"]["is_verified"].toString());
    preferences.put('status', responseData["results"]["status"].toString());
    preferences.put('verification_token',
        responseData["results"]["verification_token"].toString());
    preferences.put(
        'verified_by', responseData["results"]["verified_by"].toString());
    setLogoutTime = DateTime.now();
  }
}
