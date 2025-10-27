import 'dart:convert';

import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/get_api_data.dart';
import 'package:ezwage/ui/ez_friend/model/ez_friend_model.dart';
import 'package:ezwage/ui/ez_friend/view/ez_friend_send_form.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class EZFriendProvider extends ChangeNotifier {
  bool showSuffix = false;
  bool cnicFound = false;
  var suffixLogo;

  getCnicDetails(String value, BuildContext context) async {
    EZFriendModel.cnic = value;
    value = value.replaceAll('-', '');
    if (preferences.get('cnic_no') != value) {
      Response response =
          await ApiFunctions().getRequest('ezfriend?cnic=' + value, context);
      if (response.statusCode == 200) {
        suffixLogo = 'assets/images/correct_data.svg';
        cnicFound = true;
        var decodedJson = jsonDecode(response.body);
        EZFriendModel.userId = decodedJson['results'][0]['ez_friend_user_id'];
        EZFriendModel.employeeId =
            decodedJson['results'][0]['ez_friend_employee_id'];
        EZFriendModel.companyId =
            decodedJson['results'][0]['ez_friend_company_id'];
        EZFriendModel.name =
            decodedJson['results'][0]['ez_friend_account_title'];
        EZFriendModel.accountNo =
            decodedJson['results'][0]['ez_friend_account_number'];
        EZFriendModel.bankName =
            decodedJson['results'][0]['ez_friend_bank_name'];
        EZFriendModel.companyName =
            decodedJson['results'][0]['ez_friend_company_name'];
      } else {
        suffixLogo = 'assets/images/uncorrect_data.svg';
        cnicFound = false;
      }
    } else {
      suffixLogo = 'assets/images/uncorrect_data.svg';
      cnicFound = false;
    }
    showSuffix = true;
    notifyListeners();
  }

  disableSuffix() {
    showSuffix = false;
    cnicFound = false;
    notifyListeners();
  }

  navigateToSendForm(BuildContext context) async {
    Response response = await ApiFunctions().getRequest('purpose', context);
    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      List<GetApiData> parsePurposeApiData = <GetApiData>[];
      parsePurposeApiData = GetApiData.parse()
          .apiData(jsonEncode(decodedJson['results']['data']));
      var purposeNameList = [];
      var purposeIdList = [];
      for (int i = 0; i < parsePurposeApiData.length; i++) {
        purposeNameList.add(parsePurposeApiData[i].getApiData['name']);
        purposeIdList.add(parsePurposeApiData[i].getApiData['id']);
      }
      Navigator.pop(context);
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EZWageSendForm(
                purposeIdList: purposeIdList,
                purposeNameList: purposeNameList,
              )));
    } else {
      Navigator.pop(context);
    }
  }
}
