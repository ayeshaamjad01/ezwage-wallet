import 'dart:async';
import 'dart:convert';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/authentication/controller/correct_phone_field.dart';
import 'package:ezwage/ui/authentication/view/authscreen_create.dart';
import 'package:ezwage/ui/forget_password/model/forgot_password_phone_field_model.dart';
import 'package:ezwage/ui/forget_password/model/otp_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';

class ChangePasswordProvider extends ChangeNotifier {
  bool submissionProcess = false;
  String currentScreenType = 'Forgot';
  int _changePasswordId = 0;
  bool allowPhoneFieldButton = false;
  bool allowOtpFieldButton = false;
  bool allowChangePasswordButton = false;
  int otpTime = 120;
  var hidePassword = [true, true];
  String otpErrorMessage = '';
  setSubmissionProcess(bool value) {
    submissionProcess = value;
    notifyListeners();
  }

  changeScreenStatus(String value) {
    currentScreenType = value;
    notifyListeners();
  }

  verifyPhoneNumber(BuildContext context) async {
    var jsonBody = {
      "email": OtpModel.phoneNumber,
      "source_device": "Mobile",
      "link_type": "Reset Password"
    };
    Response response = await ApiFunctions()
        .postRequest('users/forgotpassword', jsonEncode(jsonBody), context);
    var decodeJson = jsonDecode(response.body);
    if (response.statusCode == 200) {
      _changePasswordId = decodeJson["results"]["data"]["id"];
      parseOtpId = decodeJson["results"]["data"]["id"];
      phoneFieldValidatorController.text = '';
      context.read<ChangePasswordProvider>().setSubmissionProcess(false);
      context.read<ChangePasswordProvider>().changeScreenStatus('Change');
    } else {
      phoneFieldValidatorController.text =
          translateText("Phone_Number_didn't_exist.");
      context.read<ChangePasswordProvider>().setSubmissionProcess(false);
      notifyListeners();
      // CustomSnackBar().showInSnackBar(
      //     translateText("Phone_Number_didn't_exist."),
      //     context);
    }
  }

  resendOtpCode(BuildContext context) async {
    var jsonBody = {
      "email": OtpModel.phoneNumber,
      "source_device": "Mobile",
      "link_type": "Reset Password"
    };
    Response response = await ApiFunctions()
        .postRequest('users/forgotpassword', jsonEncode(jsonBody), context);
    if (response.statusCode == 200) {
      var decodeJson = jsonDecode(response.body);
      _changePasswordId = decodeJson["results"]["data"]["id"];
      parseOtpId = decodeJson["results"]["data"]["id"];
    }
  }

  setPhoneFieldButtonStatus(bool value) {
    allowPhoneFieldButton = value;
    notifyListeners();
  }

  setOtpButtonStatus(bool value) {
    allowOtpFieldButton = value;
    if (otpErrorMessage != '' && value == false) otpErrorMessage = '';
    notifyListeners();
  }

  setChangePasswordButtonStatus(bool value) {
    allowChangePasswordButton = value;
    notifyListeners();
  }

  getElevateButtonColor() {
    if (currentScreenType == 'Forgot') {
      if (allowPhoneFieldButton == true) {
        return Color(0xffDB1695);
      } else {
        return Colors.grey;
      }
    } else if (currentScreenType == 'Change') {
      if (allowChangePasswordButton == true) {
        return Color(0xffDB1695);
      } else {
        return Colors.grey;
      }
    } else if (currentScreenType == 'OTP') {
      if (allowOtpFieldButton == true) {
        return Color(0xffDB1695);
      } else {
        return Colors.grey;
      }
    }
    notifyListeners();
  }

  setHidePasswordStatus(bool value, int index) {
    hidePassword[index] = value;
    notifyListeners();
  }

  setOtpTime(int value, BuildContext context) {
    otpTime = value;
    const oneSec = const Duration(seconds: 1);
    if (globalTimer != null) globalTimer!.cancel();
    globalTimer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (otpTime == 0) {
          context.read<ChangePasswordProvider>().setOtpButtonStatus(false);
        } else {
          otpTime--;
        }
        notifyListeners();
      },
    );
  }

  sendOtpRequest(BuildContext context) async {
    var consumeOtpJsonBody = {
      "otp_id": parseOtpId.toString(),
      "otp_pin": OtpModel.otpPin
    };
    Response response = await ApiFunctions().postRequest(
        'users/consumeOtp', jsonEncode(consumeOtpJsonBody), context);
    if (response.statusCode == 200) {
      var jsonBody = {
        "id": _changePasswordId,
        "email": correctPhoneNumber(OtpModel.phoneNumber.toString()),
        "password": OtpModel.changePassword,
        "otp_pin": OtpModel.otpPin,
        "source_device": "Mobile"
      };
      response = await ApiFunctions()
          .postRequest('users/resetpassword', jsonEncode(jsonBody), context);
      var decodeJson = jsonDecode(response.body);
      if (response.statusCode == 200) {
        preferences.delete('token');
        preferences.delete('userEmail');
        preferences.delete('userPassword');
        // preferences.delete('remember');
        // LoginModel.remember = false;
        LoginModel.allowBiometric = false;
        CustomSnackBar(true).showInSnackBar(decodeJson["results"], context);
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => AuthScreenCreate()));
      } else {
        CustomSnackBar(false).showInSnackBar(decodeJson["message"], context);
        Navigator.pop(context);
      }
      if (globalTimer != null) globalTimer!.cancel();
    } else {
      var decodeJson = jsonDecode(response.body);
      otpErrorMessage = decodeJson["results"];
      submissionProcess = false;
      notifyListeners();
    }
  }

  setPasswordValidator(String text) {
    passwordFieldValidatorController.text = text;
    notifyListeners();
  }
}
