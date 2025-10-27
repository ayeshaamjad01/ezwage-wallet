import 'dart:convert';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/get_api_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class RecentTransactionsProvider extends ChangeNotifier {
  bool apiDataLoaded = false;
  bool showTransactionsList = false;
  bool dataAvailable = true;
  bool showAllTransactions = false;
  var transactionAmountList = [];
  var transactionDateList = [];
  var transactionStatusList = [];
  var transactionDetailsDateList = [];
  var transactionDetailsTimeList = [];
  var transactionEmpIdList = [];
  var transactionStanIdList = [];
  var transactionChargesList = [];
  var transactionReceivedAmountList = [];
  var transactionIdList = [];
  var transactionTypeList = [];
  String wrongFromDate = '';
  String wrongToDate = '';
  DateTime currentDateTime = DateTime.now();
  getMonth(int value) {
    if (value == 1) {
      return translateText('January');
    } else if (value == 2) {
      return translateText('February');
    } else if (value == 3) {
      return translateText('March');
    } else if (value == 4) {
      return translateText('April');
    } else if (value == 5) {
      return translateText('May');
    } else if (value == 6) {
      return translateText('June');
    } else if (value == 7) {
      return translateText('July');
    } else if (value == 8) {
      return translateText('August');
    } else if (value == 9) {
      return translateText('September');
    } else if (value == 10) {
      return translateText('October');
    } else if (value == 11) {
      return translateText('November');
    } else if (value == 12) {
      return translateText('December');
    }
  }

  setApiDataLoaded(bool value) {
    apiDataLoaded = value;
    notifyListeners();
  }

  updateTransactionsList(bool value) {
    showAllTransactions = value;
    notifyListeners();
  }

  getTwelveHourFormat(int value) {
    if (value > 11) {
      return 'PM';
    } else {
      return 'AM';
    }
  }

  getHourFormat(int value) {
    if (value == 0) {
      return '12';
    } else if (value > 0 && value < 13) {
      return value.toString();
    } else {
      return (value - 12).toString();
    }
  }

  getTransactionsData(String getDataType, String transactionFilter,
      BuildContext context) async {
    apiDataLoaded = true;
    String? subUrl;
    if (getDataType == 'Recent') {
      subUrl = 'transaction/gettransactions/' +
          preferences.get('company_id').toString() +
          '/' +
          preferences.get('employee_id').toString();
      //  +
      // '/?status=Complete';
    } else {
      if (transactionFilter == '') {
        subUrl = 'transaction/gettransactions/' +
            preferences.get('company_id').toString() +
            '/' +
            preferences.get('employee_id').toString();
      } else {
        subUrl = 'transaction/gettransactions/' +
            preferences.get('company_id').toString() +
            '/' +
            preferences.get('employee_id').toString() +
            transactionFilter;
      }
    }
    Response response = await ApiFunctions().getRequest(subUrl, context);
    List<GetApiData> _parseTransactionsList = <GetApiData>[];
    if (response.statusCode == 200 && response.body != '[]') {
      transactionAmountList = [];
      transactionDateList = [];
      transactionStatusList = [];
      transactionDetailsDateList = [];
      transactionDetailsTimeList = [];
      transactionEmpIdList = [];
      transactionStanIdList = [];
      transactionChargesList = [];
      transactionReceivedAmountList = [];
      transactionIdList = [];
      transactionTypeList = [];
      var decodedJson = jsonDecode(response.body);
      _parseTransactionsList = GetApiData.parse()
          .apiData(jsonEncode(decodedJson['results']['data']));
      double _totalCaluclatedValue = 0;
      for (int i = 0; i < _parseTransactionsList.length; i++) {
        transactionIdList.add(_parseTransactionsList[i].getApiData['id']);
        transactionTypeList.add(_parseTransactionsList[i].getApiData['title']);
        _totalCaluclatedValue =
            _parseTransactionsList[i].getApiData['amount'] ==
                    _parseTransactionsList[i].getApiData['transfered_amount']
                ? double.parse(_parseTransactionsList[i].getApiData['amount'])
                : double.parse(_parseTransactionsList[i].getApiData['amount']) -
                    double.parse(
                        _parseTransactionsList[i].getApiData['ezwage_amount']);
        transactionAmountList
            .add(_parseTransactionsList[i].getApiData['amount'].toString());
        transactionChargesList.add(_parseTransactionsList[i].getApiData['ezwage_amount'].toString());
        transactionReceivedAmountList.add(_totalCaluclatedValue.toString());
        transactionDateList.add(getMonth(int.parse(_parseTransactionsList[i]
                .getApiData['transaction_time']
                .toString()
                .substring(5, 7))) +
            ' ' +
            _parseTransactionsList[i]
                .getApiData['transaction_time']
                .toString()
                .substring(8, 10) +
            ', ' +
            _parseTransactionsList[i]
                .getApiData['transaction_time']
                .toString()
                .substring(0, 4));
        if (_parseTransactionsList[i].getApiData['status'] == 'Failed') {
          transactionStatusList.add('Unsuccessful');
        } else if (_parseTransactionsList[i].getApiData['status'] ==
            'Rejected') {
          transactionStatusList.add('Rejected');
        } else if (_parseTransactionsList[i].getApiData['status'] ==
            'In Review') {
          transactionStatusList.add('In Review');
        } else {
          transactionStatusList.add('Successful');
        }
        transactionEmpIdList
            .add(_parseTransactionsList[i].getApiData['employee_id']);
        transactionDetailsDateList.add(_parseTransactionsList[i]
                .getApiData['transaction_time']
                .toString()
                .substring(5, 7) +
            '-' +
            _parseTransactionsList[i]
                .getApiData['transaction_time']
                .toString()
                .substring(8, 10) +
            '-' +
            _parseTransactionsList[i]
                .getApiData['transaction_time']
                .toString()
                .substring(0, 4));
        transactionDetailsTimeList.add(getHourFormat(int.parse(
                _parseTransactionsList[i]
                    .getApiData['transaction_time']
                    .toString()
                    .substring(11, 13))) +
            ':' +
            _parseTransactionsList[i]
                .getApiData['transaction_time']
                .toString()
                .substring(14, 16) +
            ' ' +
            getTwelveHourFormat(int.parse(_parseTransactionsList[i]
                .getApiData['transaction_time']
                .toString()
                .substring(11, 13))));
        transactionStanIdList.add(
            _parseTransactionsList[i].getApiData['stan'] != null &&
                    _parseTransactionsList[i].getApiData['stan'] != ""
                ? _parseTransactionsList[i].getApiData['stan'].toString()
                : _parseTransactionsList[i].getApiData['id'].toString());
      }

      showTransactionsList = true;
      dataAvailable = true;
      notifyListeners();
    } else {
      showTransactionsList = false;
      dataAvailable = false;
      notifyListeners();
    }
  }

  checkFromDateTime(DateTime fromTime, DateTime toTime) {
    final difference = currentDateTime.difference(fromTime).inDays;
    final toDifference = toTime.difference(fromTime).inDays;
    if (difference < 0) {
      wrongFromDate =
          translateText('From_date_cannot_be_greater_than_current_date');
      notifyListeners();
    } else if (toDifference < 0) {
      wrongFromDate = translateText('From_date_cannot_be_greater_than_to_date');
      notifyListeners();
    } else {
      if (wrongFromDate != '') {
        wrongFromDate = '';
        notifyListeners();
      }
    }
  }

  checkToDateTime(DateTime fromTime, DateTime toTime) {
    final difference = currentDateTime.difference(fromTime).inDays;
    final toDifference = toTime.difference(fromTime).inDays;
    if (difference < 0) {
      wrongToDate =
          translateText('To_date_cannot_be_greater_than_current_date');
      notifyListeners();
    } else if (toDifference < 0) {
      wrongToDate = translateText('To_date_cannot_be_less_than_from_date');
      notifyListeners();
    } else {
      if (wrongToDate != '') {
        wrongToDate = '';
        notifyListeners();
      }
    }
  }
}
