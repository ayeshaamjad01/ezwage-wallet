import 'dart:convert';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ezwage/global/models/balance.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/global/utils/logo_loader.dart';
import 'package:ezwage/helper/image_url_headers.dart';
import 'package:ezwage/ui/accounts/models/accounts_model.dart';
import 'package:ezwage/ui/authentication/model/save_user_info.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
// import 'package:ezwage/global/utils/date_util.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/company_logo.dart';
import 'package:ezwage/helper/current_date_time.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/notification_subscription_server.dart';
import 'package:ezwage/helper/push_notification_service_check.dart';
import 'package:ezwage/helper/url.dart';
import 'package:ezwage/ui/authentication/controller/authscreen_tab_controller.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:local_auth/local_auth.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:provider/provider.dart';

import 'package:ezwage/ui/authentication/model/login_model.dart';
import 'package:ezwage/global/utils/token.dart';
import 'package:ezwage/ui/profile/model/profile_model.dart';
import 'package:ezwage/ui/authentication/model/signup_model.dart';
import 'package:safe_device/safe_device.dart';

class LoginProvider extends ChangeNotifier {
  String screenType = 'Login';
  bool hidePassword = true;
  bool rememberMe = false;
  bool loginProcess = false;
  bool signUpProcsess = false;
  bool productAgreement = false;
  var hideSignUpPassword = [true, true];
  String signUpCurrentScreen = 'Next';
  bool allowSignUpNext = false;
  bool allowSignUpButton = false;
  String? validatorIcon;

  Rect? dragRegion;
  Offset? startDrag;
  Offset? currentDrag;
  PaletteGenerator? paletteGenerator;
  changeScreenType(String type) {
    screenType = type;
    notifyListeners();
  }

  setPasswordStatus(bool value) {
    hidePassword = value;
    notifyListeners();
  }

  setRememeberMeStatus(bool value) {
    rememberMe = value;
    _setRememberMe(value);
    notifyListeners();
  }

  setLoginProcess(bool value) {
    loginProcess = value;
    notifyListeners();
  }

  setAgreementStatus(bool value) {
    productAgreement = value;
    notifyListeners();
  }

  setSignUpProcess(bool value) {
    signUpProcsess = value;
    showValidatorIcons = false;
    notifyListeners();
  }

  setSignUpScreen(String value) {
    signUpCurrentScreen = value;
    notifyListeners();
  }

  setSignUpPasswordStatus(bool value, int index) {
    hideSignUpPassword[index] = value;
    notifyListeners();
  }

  _setRememberMe(bool value) {
    LoginModel.remember = value;
    preferences.put('remember', value.toString());
  }

  final LocalAuthentication auth = LocalAuthentication();

  bool enableFingerPrint = false;
  bool enableFaceId = false;
  bool showValidatorIcons = false;
  authenticateUserBiometric(BuildContext context) async {
    bool authenticated = false;
    authenticated = await auth.authenticate(
      localizedReason: 'Use for user authentication',
      options: const AuthenticationOptions(
        useErrorDialogs: true,
        stickyAuth: true,
      ),
    );
    if (authenticated == true) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return LogoLoader();
          });
      var userDetails = [];
      userDetails.add(LoginModel.email);
      userDetails.add(LoginModel.password);
      authenticateUser(userDetails, context);
    }
  }

  setFingerPrintStatus(bool value) {
    enableFingerPrint = value;
    notifyListeners();
  }

  setFaceIdStatus(bool value) {
    enableFaceId = value;
    notifyListeners();
  }

  updatePaletteGenerator(Rect? newRegion) async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      CachedNetworkImageProvider(
        AccountsModel.userBankLogo!,
        headers: IMAGE_HEADERS,
      ),
      size: Size(256.0, 170.0),
      region: newRegion,
      maximumColorCount: 20,
    );
    if (paletteGenerator!.vibrantColor != null)
      AccountsModel.color = paletteGenerator!.vibrantColor!.color;
    else
      AccountsModel.color = Colors.grey;
  }

  Future getbankeapi(BuildContext context) async {
    try {
      Response response = await ApiFunctions().getRequest(
          "employees/" + preferences.get('employee_id').toString() + "/banks",
          context);

      if (response.statusCode == 200 && response.body != '[]') {
        AccountsModel.res = jsonDecode(response.body);
        AccountsModel.bankName =
            AccountsModel.res['results']['data'][0]["bank_name"];
        AccountsModel.bankIban =
            AccountsModel.res['results']['data'][0]["iban_account_no"];
        AccountsModel.accountNumber =
            AccountsModel.res['results']['data'][0]["iban_account_no"];
        Response bankLogoApi = await ApiFunctions().getRequest(
            'bank/bank-details/' +
                AccountsModel.res['results']['data'][0]["bank_id"].toString(),
            context);
        if (bankLogoApi.statusCode == 200) {
          var decodedJson = jsonDecode(bankLogoApi.body);
          AccountsModel.userBankLogo =
              GET_FILE_URL + decodedJson['results']['data']['logo'].toString();
          Rect? region;
          await updatePaletteGenerator(region);
        }
      } else {
        AccountsModel.bankName = 'Bank Not Assigned';
        AccountsModel.bankIban = '000000000';
        AccountsModel.accountNumber = '000000000';
        AccountsModel.userBankLogo = '';
        AccountsModel.color = Colors.grey;
      }
    } on SocketException catch (_) {}
  }

  getProfileData(BuildContext context) async {
    Response response = await ApiFunctions().getRequest(
        'users/getuserprofile/' + preferences.get('id').toString(), context);
    if (response.statusCode == 200) {
      var res = jsonDecode(response.body);

      ProfileModel.email = res['results']['data']["email"];
      ProfileModel.employeetype = res['results']['data']["role"];
      ProfileModel.name = res['results']['data']["name"];
      ProfileModel.phonenumber = res['results']['data']["phone_no"];
      ProfileModel.uid = res['results']['data']["id"];
      ProfileModel.empid = res['results']['data']["employee_id"];
      ProfileModel.comid = res['results']['data']["company_id"];
      response = await ApiFunctions().getRequest(
          'employees/' + preferences.get('employee_id').toString() + '/banks',
          context);
      if (response.statusCode == 200 && response.body != '[]') {
        res = jsonDecode(response.body);
        if (res['results']['data'] != "No banks found") {
          preferences.put('transaction_bank_id',
              res['results']['data'][0]['bank_id'].toString());
          preferences.put('employee_account_number',
              res['results']['data'][0]['iban_account_no'].toString());
          ProfileModel.accountNumber =
              res['results']['data'][0]['iban_account_no'].toString();
          LoginModel.userBankAvailable = true;
        } else {
          LoginModel.userBankAvailable = false;
        }
      }
      response = await ApiFunctions().getRequest(
          'employees/getemployeedetail/' +
              preferences.get('employee_id').toString(),
          context);
      if (response.statusCode == 200 && response.body != '[]') {
        res = jsonDecode(response.body);
        preferences.put(
            'employee_salary', res['results']['data'][0]['salary'].toString());
        ProfileModel.salary = res['results']['data'][0]['salary'].toString();
        if (translateText(
                res['results']['data'][0]['employee_type'].toString()) !=
            null)
          LoginModel.employeeType = translateText(
                  res['results']['data'][0]['employee_type'].toString()) +
              ' ' +
              translateText('Employee');
        else
          LoginModel.employeeType =
              translateText('Temporary ' + translateText('Employee'));
      }
      response = await ApiFunctions().getRequest(
          'salaryCycle/company/' + preferences.get('company_id').toString(),
          context);
      if (response.statusCode == 200) {
        var decodedJson = jsonDecode(response.body);
        LoginModel.salaryStartCycle =
            decodedJson['results'][0]['cycle_start_date'];
        LoginModel.salaryEndCycle = decodedJson['results'][0]['cycle_end_date'];
      }
      response = await ApiFunctions().getRequest(
          'employees/getemployeebalance/' +
              preferences.get('employee_id').toString(),
          context);
      if (response.statusCode == 200) {
        res = jsonDecode(response.body);
        BalanceModel.currentbalance = res["results"]["balance"].toString() !=
                '0'
            ? res["results"]["balance"]
                .toString()
                .substring(0, res["results"]["balance"].toString().indexOf('.'))
            : res["results"]["balance"].toString();
        response = await ApiFunctions().getRequest(
            'employees/' + ProfileModel.empid.toString() + '/withdrawls',
            context);
        var decodeWithdrawJsonValue = jsonDecode(response.body);
        if (response.statusCode == 200)
          BalanceModel.totalWithdarw = (decodeWithdrawJsonValue['results']
                          ['employee_withdrawals'] !=
                      null ||
                  decodeWithdrawJsonValue['results']['employee_withdrawals'] !=
                      0)
              ? double.parse(decodeWithdrawJsonValue['results']
                      ['employee_withdrawals']
                  .toString())
              : 0;
        else
          BalanceModel.totalWithdarw = 0;
      }
    }
  }

  authenticateUser(var userDetails, BuildContext context) async {
    var jsonBody;
    jsonBody = {"email": userDetails[0], "password": userDetails[1]};
    LoginModel.email = userDetails[0];
    LoginModel.password = userDetails[1];
    bool isJailBroken = await SafeDevice.isJailBroken;
    try {
      Response response = await ApiFunctions()
          .loginRequest('users/login', jsonEncode(jsonBody));
      var res = jsonDecode(response.body);
      if (response.statusCode == 200 &&
          res['results']['employee_id'] != 0 &&
          isJailBroken == false) {
        SaveUserInfo().saveUserInformation(jsonDecode(response.body));

        preferences.put('token', res["results"]["token"]);
        TokenModel.token = preferences.get('token');
        preferences.put(
          'userEmail',
          LoginModel.email.toString(),
        );
        preferences.put('userPassword', LoginModel.password.toString());
        ProfileModel.uid = res["results"]["id"];
        ProfileModel.empid = res["results"]["employee_id"];
        ProfileModel.comid = res["results"]["company_id"];
        // ProfileModel.payrollRunDate = res["results"]["payrollRunDate"] != null
        //     ? int.parse(res["results"]["payrollRunDate"].toString())
        //     : DateUtil().daysInMonth(DateTime.now().month, DateTime.now().year);
        LoginModel.userName = res["results"]["name"];
        LoginModel.pinCheck =
            // ignore: unnecessary_null_comparison
            res["results"]["is_pin_enabled"] == null
                ? '0'
                : res["results"]["is_pin_enabled"].toString();
        String firebaseTopicId = 'userId_' +
            res["results"]["id"].toString() +
            '_companyId_' +
            res["results"]["company_id"].toString() +
            '_' +
            NOTIFICATION_SUBSCRIPTION_URL;

        if (res["results"]["companyLogo"] != null)
          userComapnyLogo = GET_FILE_URL + res["results"]["companyLogo"];
        await getProfileData(context);
        await getbankeapi(context);

        context.read<LoginProvider>().setLoginProcess(false);
        navigateToCustomNavigationBar(context, 2);
        if (checkPushNotificationServiceEnablity() == true) {
          if (preferences.get('notificationSubscription') != null) {
            try {
              await FirebaseMessaging.instance
                  .subscribeToTopic(firebaseTopicId);
            } catch (e) {}
            preferences.put('notificationSubscription', firebaseTopicId);
          } else {
            try {
              await FirebaseMessaging.instance
                  .subscribeToTopic(firebaseTopicId);
            } catch (e) {}
            try {
              await FirebaseMessaging.instance
                  .unsubscribeFromTopic(firebaseTopicId);
            } catch (e) {}
            try {
              await FirebaseMessaging.instance
                  .subscribeToTopic(firebaseTopicId);
            } catch (e) {}
            preferences.put('notificationSubscription', firebaseTopicId);
          }
        }
        return true;
      } else {
        CustomSnackBar(false).showInSnackBar(
            isJailBroken == true
                ? 'Rooted Device is not allowed to use the application!'
                : response.statusCode != 401
                    ? translateText('Admin_User_Not_Access')
                    : res["results"],
            context);
        context.read<LoginProvider>().setLoginProcess(false);
        return false;
      }
    } on SocketException catch (_) {
      CustomSnackBar(false).showInSnackBar(
          translateText('Not_Connected_with_Internet'), context);
      context.read<LoginProvider>().setLoginProcess(false);
    }
  }

  setSignUpNext(bool value) {
    allowSignUpNext = value;
    notifyListeners();
  }

  setSignUpButtonStatus(bool value) {
    allowSignUpButton = value;
    notifyListeners();
  }

  createUserWithApi(BuildContext context) async {
    var jsonBody = {
      "company_id": SignUpModel.companyid,
      // "username": SignUpModel.username,
      "username": "",
      "name": SignUpModel.name,
      "cnic_no": SignUpModel.cnic,
      "email": SignUpModel.email,
      "password": SignUpModel.password,
      "role": 8,
      "phone_no": SignUpModel.phone,
      "user_img": "",
      "gender": SignUpModel.gender,
      "is_push_notification": "1",
      "is_biomatric": "1",
      "verification_token": "token_verify",
      "is_verified": "1",
      "created_at": CurrentDateTime().getCurrentDateTime(),
      "updated_at": CurrentDateTime().getCurrentDateTime(),
      "verified_by": "Faraz",
      "status": 1,
      "is_admin": 0,
    };
    bool isJailBroken = await SafeDevice.isJailBroken;
    Response response = await ApiFunctions()
        .postRequest('users/adduser', jsonEncode(jsonBody), context);
    if (response.statusCode == 200 && isJailBroken == false) {
      var signUpResponse = jsonDecode(response.body);
      CustomSnackBar(true).showInSnackBar(signUpResponse['results'], context);
      context.read<LoginProvider>().setSignUpProcess(false);

      tabController.animateTo(0);
    } else if (response.statusCode == 409 && isJailBroken == false) {
      var signUpResponse = jsonDecode(response.body);
      CustomSnackBar(false).showInSnackBar(signUpResponse['results'], context);
      context.read<LoginProvider>().setSignUpProcess(false);
      tabController.animateTo(0);
    } else {
      CustomSnackBar(false).showInSnackBar(
          isJailBroken == true
              ? 'Rooted Device is not allowed to use the application!'
              : translateText('Something_wents_wrong'),
          context);
      context.read<LoginProvider>().setSignUpProcess(false);
    }
  }

  setValidatorIcons(bool allowValue, String valueType) {
    showValidatorIcons = allowValue;
    validatorIcon = valueType;
    notifyListeners();
  }
}
