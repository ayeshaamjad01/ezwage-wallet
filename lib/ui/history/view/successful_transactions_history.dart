import 'package:ezwage/ui/history/view/transactions_history_list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class SuccessfulTransactionsHistory extends StatelessWidget {
  var formatter = NumberFormat('#,000.00');
  var _transactionsAmountList = [];
  var _transactionsDateList = [];
  var _transactionStatusList = [];
  var _transactionDetailsDateList = [];
  var _transactionDetailsTimeList = [];
  var _transactionEmpIdList = [];
  var _transactionStanIdList = [];
  var _receivedTransactionList = [];
  var _transactionServiceChargesList = [];
  var _transactionIdList = [];
  var _transactionTypeList = [];
  bool? _showTransactions;
  bool? _transactionsAvailale;
  bool? _apiDataLoaded;
  SuccessfulTransactionsHistory(
    this._transactionsAmountList,
    this._transactionsDateList,
    this._transactionStatusList,
    this._transactionDetailsDateList,
    this._transactionDetailsTimeList,
    this._transactionEmpIdList,
    this._transactionStanIdList,
    this._showTransactions,
    this._transactionsAvailale,
    this._apiDataLoaded,
    this._receivedTransactionList,
    this._transactionServiceChargesList,
    this._transactionIdList,
    this._transactionTypeList,
  );
  @override
  Widget build(BuildContext context) {
    return TransactionsHistoryList(
        _transactionsAmountList,
        _transactionsDateList,
        _transactionStatusList,
        _transactionDetailsDateList,
        _transactionDetailsTimeList,
        _transactionEmpIdList,
        _transactionStanIdList,
        _showTransactions,
        _transactionsAvailale,
        _apiDataLoaded,
        'Successful',
        _receivedTransactionList,
        _transactionServiceChargesList,
        _transactionIdList,
        _transactionTypeList);
  }
}
