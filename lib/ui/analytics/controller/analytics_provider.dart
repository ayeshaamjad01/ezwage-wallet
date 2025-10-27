import 'dart:convert';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/get_api_data.dart';
import 'package:ezwage/ui/accounts/models/Ordinal_Transactions.dart';
// import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AnalyticsProvider extends ChangeNotifier {
  bool showAnalytics = false;
  bool dataAvailable = true;
  bool apiDataLoaded = false;
  double intervalValue = 0;
  var amountList = [];
  var monthList = [];
  var dataSpotsList = [];
  var digitMonthList = [];
  var charMonthList = [];
  var yearList = [];
  var reverseCharMonthList = [];
  var reverseYearList = [];
  var reverseAmountList = [];
  var totalMonthList = [];
  var ordinalDataList = [];
  var showOrdinalDataList = [];
  getMonth(double value) {
    if (value == 1.0) {
      return translateText('January');
    } else if (value == 2.0) {
      return translateText('February');
    } else if (value == 3.0) {
      return translateText('March');
    } else if (value == 4.0) {
      return translateText('April');
    } else if (value == 5.0) {
      return translateText('May');
    } else if (value == 6.0) {
      return translateText('June');
    } else if (value == 7.0) {
      return translateText('July');
    } else if (value == 8.0) {
      return translateText('August');
    } else if (value == 9.0) {
      return translateText('September');
    } else if (value == 10.0) {
      return translateText('October');
    } else if (value == 11.0) {
      return translateText('November');
    } else if (value == 12.0) {
      return translateText('December');
    }
  }

  setApiDataLoaded(bool value) {
    apiDataLoaded = value;
    notifyListeners();
  }

  getAnalyticsData(int monthRange, BuildContext context) async {
    Response response = await ApiFunctions().getRequest(
        'transaction/gettransactions/' +
            preferences.get('company_id').toString() +
            '/' +
            preferences.get('employee_id').toString() +
            '/?status=Complete',
        context);
    List<GetApiData> _parseTransactionsList = <GetApiData>[];
    if (response.statusCode == 200 && response.body != '[]') {
      amountList = [];
      monthList = [];
      digitMonthList = [];
      yearList = [];
      var decodedJson = jsonDecode(response.body);
      _parseTransactionsList = GetApiData.parse()
          .apiData(jsonEncode(decodedJson['results']['data']));
      for (int i = 0; i < _parseTransactionsList.length; i++) {
        amountList
            .add(double.parse(_parseTransactionsList[i].getApiData['amount']));
        monthList.add(_parseTransactionsList[i]
            .getApiData['transaction_time']
            .toString()
            .substring(5, 7));
        yearList.add(_parseTransactionsList[i]
            .getApiData['transaction_time']
            .toString()
            .substring(0, 4));
      }
      digitMonthList = [];
      charMonthList = [];
      var selectedAmountList = [];
      int monthListLimit = DateTime.now().month;
      var totalMonthListLimit = [];
      for (int i = 0; i < 6; i++) {
        totalMonthListLimit.add(double.parse(monthListLimit.toString()));
        monthListLimit--;
        if (monthListLimit == 0) monthListLimit = 12;
      }
      for (int i = 0; i < monthList.length; i++) {
        bool monthUnderInLimits = false;
        for (int j = 0; j < totalMonthListLimit.length; j++) {
          if (double.parse(monthList[i]) == totalMonthListLimit[j]) {
            monthUnderInLimits = true;
          }
        }
        if (monthUnderInLimits == true) {
          digitMonthList.add(double.parse(monthList[i]));
          charMonthList.add(getMonth(double.parse(monthList[i])));
          selectedAmountList.add(amountList[i]);
        }
      }
      double latestMonth = double.parse(DateTime.now().month.toString());
      int latestYear = DateTime.now().year;
      var totalAmountsList = [];
      var selectedMonthsList = [];
      var selectedYearsList = [];
      var selectedMonthsDigitsList = [];
      for (int i = 0; i < 6; i++) {
        double amountSum = 0;
        for (int j = 0; j < digitMonthList.length; j++) {
          if (latestMonth == digitMonthList[j]) {
            amountSum = amountSum + selectedAmountList[j];
          }
        }
        totalAmountsList.add(amountSum);
        selectedMonthsList.add(getMonth(latestMonth));
        selectedMonthsDigitsList.add(latestMonth);
        selectedYearsList.add(latestYear.toString());
        latestMonth--;
        if (latestMonth == 0) {
          latestMonth = 12;
          latestYear--;
        }
      }

      reverseCharMonthList = [];
      reverseAmountList = [];
      reverseYearList = [];
      for (int i = selectedMonthsList.length - 1; i >= 0; i--) {
        reverseCharMonthList.add(selectedMonthsList[i]);
        reverseYearList.add(selectedYearsList[i]);
      }
      for (int i = totalAmountsList.length - 1; i >= 0; i--) {
        reverseAmountList.add(totalAmountsList[i]);
      }
      dataSpotsList = [];
      totalMonthList = [];
      var maximumAmountList = [];
      for (int index = 0; index < reverseCharMonthList.length; index++) {
        ordinalDataList.add(OrdinalTransactions(
            reverseCharMonthList[index].toString().substring(
                    0,
                    appLanguage == 'en'
                        ? 3
                        : reverseCharMonthList[index].toString().length) +
                '\n' +
                reverseYearList[index],
            reverseAmountList[index]));
        maximumAmountList.add(reverseAmountList[index]);
      }
      for (int i = 0; i < maximumAmountList.length; i++) {
        if (intervalValue < maximumAmountList[i]) {
          intervalValue = maximumAmountList[i];
        }
      }
      showOrdinalDataList = [];
      for (int i = (6 - monthRange); i < 6; i++) {
        showOrdinalDataList.add(ordinalDataList[i]);
      }
      intervalValue = intervalValue / 5;
      showAnalytics = true;
      dataAvailable = true;
      apiDataLoaded = true;
      notifyListeners();
    } else {
      showAnalytics = false;
      dataAvailable = false;
      apiDataLoaded = true;
      notifyListeners();
    }
  }
}
