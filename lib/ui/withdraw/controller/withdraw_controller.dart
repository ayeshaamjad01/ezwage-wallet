import 'package:ezwage/ui/transaction_details/model/transaction_model.dart';
import 'package:ezwage/ui/withdraw/model/withdraw_model.dart';
import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  bool buttonColor = false;
  int value = 0;
  void changeotp(String otpdigit) {
    WithDrawModel.otp = otpdigit;
    notifyListeners();
  }

  void setcolor(bool value) {
    buttonColor = value;
    notifyListeners();
  }

  void setValue(int newValue) {
    value = newValue;
    notifyListeners();
  }

  int getValue() {
    return value;
  }

  void withdrawinfo(
      String drawamount,
      // String drawfee, String drawtotal,
      double sliderval) {
    WithDrawModel.amount = drawamount;
    // WithDrawModel.fee = drawfee;
    // WithDrawModel.total = drawtotal;
    WithDrawModel.a = sliderval;
    notifyListeners();
  }

  changeslidervalue(double sliderval) {
    WithDrawModel.a = sliderval;
    notifyListeners();
  }

  void transactionscreen(var res) {
    TransactionModel.eid = res['results']['data']["employee_id"];
    TransactionModel.tid = res['results']['data']["stan"] != null
        ? res['results']['data']["stan"]
        : res['results']['data']["id"];
    TransactionModel.amountrecived = (double.parse(
                res['results']['data']["amount"].toString()) -
            double.parse(res['results']['data']['serviceCharges'].toString()))
        .toStringAsFixed(2);
    TransactionModel.tdate = res['results']['data']["transaction_date"];
    TransactionModel.ttime = res[""];
    notifyListeners();
  }
}
