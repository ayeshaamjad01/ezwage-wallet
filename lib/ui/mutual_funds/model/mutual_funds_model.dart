import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MutualFundsModel {
  static String? planName;
  static String? bankName;
  static String? accountTitle;
  static String? accountNumber;
  static String? transactionId;
  static String? sentAmount;
  static String? charges;
  static String? transactionDate;
  static var bankIdsList;
  static var bankNamesList;
  static var labelsList = [
    'Transfer From',
    'Bank',
    'Enter Account Number',
    'Transfer Amount',
    'Charges',
    'Note',
  ];
  static var formatter = NumberFormat('#,000');
  static var decimalFormatter = NumberFormat('#,000.00');
  static int? selectedBankId;
  static String currentBalanceInAccount = '0';
  static List<PopupMenuItem<String>> dropdownItems = [];
  static bool fetchServiceCharges = false;

  static int? pageIndex;
  static String? selectedAmount;
  static var mutualFundsDetailsNamesList = [
    'Plan Name',
    'Bank',
    'Account Title'
  ];
  static var mutualFundsDetailsDescList;
}
