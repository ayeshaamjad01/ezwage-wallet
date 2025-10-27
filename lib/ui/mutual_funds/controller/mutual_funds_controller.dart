import 'dart:async';
import 'dart:convert';

import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/models/balance.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/date_util.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/utils/logo_loader.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/global/views/dialogues/custom_dialogue.dart';
import 'package:ezwage/global/views/dialogues/fail_dialogue.dart';
import 'package:ezwage/global/views/dialogues/sucess_dialogue.dart';
import 'package:ezwage/global/views/main_text.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/current_date_time.dart';
import 'package:ezwage/helper/get_api_data.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';
import 'package:ezwage/ui/mutual_funds/model/mutual_funds_model.dart';
import 'package:ezwage/ui/mutual_funds/view/mutual_funds_form.dart';
import 'package:ezwage/ui/mutual_funds/view/mutual_funds_receipt.dart';
import 'package:ezwage/ui/profile/model/profile_model.dart';
import 'package:ezwage/ui/transaction_details/model/transaction_model.dart';
import 'package:ezwage/ui/video_tutorials/model/condition_bloc.dart';
import 'package:ezwage/ui/video_tutorials/model/enum_condition_event.dart';
import 'package:ezwage/ui/withdraw/controller/withdraw_controller.dart';
import 'package:ezwage/ui/withdraw/controller/withdraw_notification.dart';
import 'package:ezwage/ui/withdraw/model/withdraw_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class MutualFundsController extends ChangeNotifier {
  bool enableMutualFundsDetails = false;
  static ConditionBloc conditionBloc = ConditionBloc();
  static int _start = 30;
  // ignore: unused_field
  static Timer? _timer;
  static bool _otpSend = false;
  // late OTPTextEditController _otpReceiverController;
  // late OTPInteractor _otpInteractor;
  // final _otpPinController = TextEditingController();
  static navigateToMutualFundsForm(BuildContext context) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return LogoLoader();
        });
    MutualFundsModel.bankNamesList = [];
    MutualFundsModel.bankIdsList = [];
    Response response =
        await ApiFunctions().getRequest('bank/getbankaccounts', context);
    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      List<GetApiData> getBanksApiData = <GetApiData>[];
      getBanksApiData = GetApiData.parse()
          .apiData(jsonEncode(decodedJson['results']['data']));

      for (int i = 0; i < getBanksApiData.length; i++) {
        MutualFundsModel.bankNamesList
            .add(getBanksApiData[i].getApiData['name']);
        MutualFundsModel.bankIdsList.add(getBanksApiData[i].getApiData['id']);
      }
      Navigator.pop(context);
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
              create: (_) => MutualFundsController(),
              child: MutualFundsForm())));
    } else {
      Navigator.pop(context);
    }
  }

  static startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          conditionBloc.eventSink.add(ConditionEvent.True);
          // timer.cancel();
          // });
        } else {
          _start--;
          conditionBloc.eventSink.add(ConditionEvent.True);
          // });
        }
      },
    );
  }

  static Future validtrans(BuildContext context) async {
    BuildContext contextRef = context;
    conditionBloc.dispose();
    conditionBloc = ConditionBloc();
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return LogoLoader();
        });
    var jsonBody = {
      "employee_id": ProfileModel.empid,
      "user_id": ProfileModel.uid,
      "amount": int.parse(MutualFundsModel.selectedAmount!.replaceAll(',', '')),
      "company_id": ProfileModel.comid,
      "transaction_time": CurrentDateTime().getCurrentDateTime()
    };
    Response response = await ApiFunctions().postRequest(
        'transaction/validateTransaction', jsonEncode(jsonBody), context);
    var res = jsonDecode(response.body);
    if (response.statusCode == 200 &&
        res['results']['data']['message'] == "OTP created") {
      Navigator.pop(context);
      WithDrawModel.transid = res['results']['data']["data"]["id"];
      _start = 120;
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            var shortestSide = MediaQuery.of(context).size.shortestSide;
            return CustomDialog("", translateText('Next'), () {
              if (WithDrawModel.otp.length > 3 && _otpSend == false) {
                confirmtrans(context);
                _otpSend = true;
              }
            },
                Column(
                  children: [
                    shortestSide > 600
                        ? Image.asset(
                            "assets/images/lockotp.png",
                            height: 30.sp,
                            fit: BoxFit.fitHeight,
                          )
                        : Image.asset("assets/images/lockotp.png"),
                    CustomSizeBox(20),
                    Text(
                      translateText("Confirm_OTP"),
                      textAlign: TextAlign.center,
                      style: appLanguage == 'ur'
                          ? GoogleFonts.notoNastaliqUrdu(
                              fontSize: shortestSide > 600 ? 12.sp : 14,
                              fontWeight: FontWeight.w700,
                            )
                          : GoogleFonts.poppins(
                              fontSize: shortestSide > 600 ? 12.sp : 16,
                              fontWeight: FontWeight.w700,
                            ),
                    ),
                    CustomSizeBox(20),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        translateText(
                            'Enter_the_OTP_sent_to_your_phone_number'),
                        textAlign: TextAlign.center,
                        style: appLanguage == 'ur'
                            ? GoogleFonts.notoNastaliqUrdu(
                                fontSize: shortestSide > 600 ? 12.sp : 12,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff030319),
                              )
                            : GoogleFonts.poppins(
                                fontSize: shortestSide > 600 ? 12.sp : 14,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff030319)),
                      ),
                    ),
                    CustomSizeBox(20),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: PinCodeTextField(
                        length: 4,
                        obscureText: true,
                        cursorHeight: shortestSide > 600 ? 12.sp : 18,
                        textStyle: TextStyle(
                            fontSize: shortestSide > 600 ? 12.sp : 18),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        animationType: AnimationType.fade,
                        boxShadows: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 3.0,
                            offset: const Offset(0.0, 5.0),
                          ),
                        ],
                        autoDismissKeyboard: true,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(
                              shortestSide > 600 ? 3.sp : 5),
                          fieldHeight: shortestSide > 600 ? 50.sp : 50,
                          fieldWidth: shortestSide > 600 ? 50.sp : 50,
                          disabledColor: Colors.white,
                          activeFillColor: Colors.white,
                          inactiveColor: Colors.grey,
                          selectedColor: Colors.grey,
                          inactiveFillColor: Colors.white,
                          selectedFillColor: Colors.white,
                          borderWidth: 1,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        backgroundColor: Colors.transparent,
                        enableActiveFill: true,

                        cursorColor: simpletextColor,
                        // controller: _otpPinController,
                        onCompleted: (v) {
                          WithDrawModel.otp = v;
                        },
                        onChanged: (value) {
                          Provider.of<Counter>(context, listen: false)
                              .changeotp(value);
                        },
                        beforeTextPaste: (text) {
                          return true;
                        },
                        appContext: context,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Row(
                        children: [
                          StreamBuilder<bool>(
                              stream: conditionBloc.condtionStream,
                              builder: (context, snapshot) {
                                return appLanguage == 'en'
                                    ? Text(
                                        translateText('Time_Remaning') +
                                            " $_start" +
                                            's',
                                        style: GoogleFonts.poppins(
                                          fontSize:
                                              shortestSide > 600 ? 8.sp : 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    : Text(
                                        translateText('Time_Remaning') +
                                            " $_start" +
                                            ' سیکنڈ',
                                        style: GoogleFonts.notoNastaliqUrdu(
                                          fontSize:
                                              shortestSide > 600 ? 8.sp : 8,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      );
                              }),
                          Spacer(),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);

                                // _otpReceiverController.stopListen();
                                WithDrawModel.otp = '';
                                validtrans(contextRef);
                              },
                              child: Text(
                                translateText('Resend'),
                                style: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        fontSize: shortestSide > 600 ? 8.sp : 8,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      )
                                    : GoogleFonts.poppins(
                                        fontSize:
                                            shortestSide > 600 ? 8.sp : 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
                Container(),
                true);
          });
      return response.body;
    } else {
      _otpSend = false;
      Navigator.pop(context);
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          var shortestSide = MediaQuery.of(context).size.shortestSide;
          return FailDialoge("", translateText('Continue'), () {
            Navigator.pop(context);
          },
              Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/withdraw_unsuccess.svg",
                    width: shortestSide > 600 ? 70.sp : 60,
                    height: shortestSide > 600 ? 70.sp : 60,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    translateText('Transaction') +
                        ' ' +
                        translateText('Failed'),
                    textAlign: TextAlign.center,
                    style: appLanguage == 'ur'
                        ? GoogleFonts.notoNastaliqUrdu(
                            fontSize: shortestSide > 600 ? 18.sp : 22,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFF6B6B),
                          )
                        : GoogleFonts.poppins(
                            fontSize: shortestSide > 600 ? 18.sp : 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFF6B6B),
                          ),
                  ),
                  CustomSizeBox(10),
                  if (response.statusCode == 500)
                    CustomTextWidget(res["message"], Color(0xff030319), 10)
                  else if (response.statusCode != 422)
                    CustomTextWidget(
                        res["results"]["data"], Color(0xff030319), 10)
                  else
                    CustomTextWidget(res["results"], Color(0xff030319), 10)
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                    color: redColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        offset: const Offset(0.0, 4.0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset('assets/images/cross.svg',
                      height: 65, width: 65, fit: BoxFit.fill)));
        },
      );
    }
  }

  static getTwelveHourFormat(int value) {
    if (value > 11) {
      return 'PM';
    } else {
      return 'AM';
    }
  }

  static getHourFormat(int value) {
    if (value == 0) {
      return '12';
    } else if (value > 0 && value < 13) {
      return value.toString();
    } else {
      return (value - 12).toString();
    }
  }

  static convertInDecimalFormat(double value) {
    if (value < 1000) {
      return value.toStringAsFixed(2);
    } else {
      return MutualFundsModel.decimalFormatter.format(value);
    }
  }

  static Future confirmtrans(BuildContext context) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return LogoLoader();
        });
    var jsonBody = {
      "id": WithDrawModel.transid,
      "otp_pin": WithDrawModel.otp,
      "employee_id": ProfileModel.empid,
      "user_id": ProfileModel.uid,
      "amount": int.parse(MutualFundsModel.selectedAmount!.replaceAll(',', '')),
      "company_id": ProfileModel.comid,
      "account_number": MutualFundsModel.accountNumber.toString().toUpperCase(),
      "bank_id": MutualFundsModel.selectedBankId,
    };
    Response response = await ApiFunctions().postRequest(
        'mutualfund/transaction/execution', jsonEncode(jsonBody), context);
    var res = jsonDecode(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      _otpSend = false;
      if (response.statusCode == 200)
        Provider.of<Counter>(context, listen: false).transactionscreen(res);
      Navigator.pop(context);
      Navigator.pop(context);
      int responsCode = response.statusCode;
      createWithdrawNotification(
          'Transaction is successful',
          responsCode == 200
              ? 'You have successfully withdrawn PKR ' +
                  convertInDecimalFormat(double.parse(
                      res['results']['data']["amount"].toString())) +
                  WithDrawModel().getCurrentDateTime() +
                  '. EZ Wage Service Charges: PKR ' +
                  convertInDecimalFormat(double.parse(
                      res['results']['data']["serviceCharges"].toString())) +
                  '. You will receive PKR ' +
                  convertInDecimalFormat(double.parse(
                          res['results']['data']["amount"].toString()) -
                      double.parse(res['results']['data']['serviceCharges']
                          .toString())) +
                  ' in your account.'
              : "Your transaction request has been successfully sent for approval. You will receive your withdrawn amount once your company approves this transaction.",
          1,
          context);
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          var shortestSide = MediaQuery.of(context).size.shortestSide;
          return SucessDialoge("", "Ok", () async {
            var _userTransactionDetails = new Map();
            if (response.statusCode == 200) {
              Response response = await ApiFunctions().getRequest(
                  'employees/getemployeebalance/' +
                      preferences.get('employee_id').toString(),
                  context);
              _userTransactionDetails['Transfer_From'] =
                  LoginModel.userName.toString();

              _userTransactionDetails['Amount'] =
                  res['results']['data']["amount"].toString();
              _userTransactionDetails['Received'] = (double.parse(
                          res['results']['data']["amount"].toString()) -
                      double.parse(
                          res['results']['data']['serviceCharges'].toString()))
                  .toString();
              _userTransactionDetails['Charges'] =
                  res['results']['data']['serviceCharges'].toString();
              _userTransactionDetails['Bank_Name'] = MutualFundsModel.bankName;
              _userTransactionDetails['IBAN'] =
                  MutualFundsModel.accountNumber.toString().toUpperCase();
              _userTransactionDetails['Date'] =
                  TransactionModel.tdate.toString().substring(5, 7) +
                      '-' +
                      TransactionModel.tdate.toString().substring(8, 10) +
                      '-' +
                      TransactionModel.tdate.toString().substring(0, 4);
              _userTransactionDetails['Time'] = getHourFormat(int.parse(
                      TransactionModel.tdate.toString().substring(11, 13))) +
                  ':' +
                  TransactionModel.tdate.toString().substring(14, 16) +
                  ' ' +
                  getTwelveHourFormat(int.parse(
                      TransactionModel.tdate.toString().substring(11, 13)));
              _userTransactionDetails['Status'] = 'Successful';
              _userTransactionDetails['Transaction_ID'] =
                  TransactionModel.tid.toString();
              res = jsonDecode(response.body);

              BalanceModel.currentbalance =
                  res["results"]["balance"].toString();
              DateTime dateTime = DateTime.now();
              BalanceModel.totalWithdarw =
                  (((double.parse(ProfileModel.salary.toString()) /
                                  double.parse(DateUtil()
                                      .daysInMonth(
                                          dateTime.month, dateTime.year)
                                      .toString())) *
                              (dateTime.day - 1)) /
                          2) -
                      double.parse(BalanceModel.currentbalance.toString());
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MutualFundsReceipt(_userTransactionDetails)));
            } else if (responsCode == 201) {
              Navigator.pop(context);
              navigateToCustomNavigationBar(context, 2);
            } else {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MutualFundsReceipt(_userTransactionDetails)));
            }
          },
              Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/withdraw_success.svg",
                    width: shortestSide > 600 ? 50.sp : 60,
                    height: shortestSide > 600 ? 50.sp : 60,
                  ),
                  Text(
                    translateText("Transaction_Successful"),
                    textAlign: TextAlign.center,
                    style: appLanguage == 'ur'
                        ? GoogleFonts.notoNastaliqUrdu(
                            fontSize: shortestSide > 600 ? 18.sp : 22,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff00B528),
                          )
                        : GoogleFonts.poppins(
                            fontSize: shortestSide > 600 ? 18.sp : 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff00B528),
                          ),
                  ),
                  CustomSizeBox(10),
                  Text(
                    translateText(responsCode == 200
                        ? 'Your_transaction_has_been_successfully_completed'
                        : 'Your_transaction_has_been_successfully_approval'),
                    textAlign: TextAlign.center,
                    style: appLanguage == 'ur'
                        ? GoogleFonts.notoNastaliqUrdu(
                            fontSize: shortestSide > 600 ? 8.sp : 8,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff030319),
                          )
                        : GoogleFonts.poppins(
                            fontSize: shortestSide > 600 ? 8.sp : 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff030319),
                          ),
                  ),
                ],
              ),
              Container(
                  child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  // height: 30,
                  // width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: greenColor),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.done,
                      size: shortestSide > 600 ? 30.sp : 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              )));
        },
      );

      return response.body;
    } else {
      _otpSend = false;
      Navigator.pop(context);
      Navigator.pop(context);
      createWithdrawNotification(
          'Transaction is unsuccessful', res['results'], 2, context);
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          var shortestSide = MediaQuery.of(context).size.shortestSide;
          return FailDialoge("", translateText('Continue'), () {
            Navigator.pop(context);
          },
              Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/withdraw_unsuccess.svg",
                    width: shortestSide > 600 ? 50.sp : 60,
                    height: shortestSide > 600 ? 50.sp : 60,
                  ),
                  Text(
                    translateText('Transaction') +
                        ' ' +
                        translateText('Failed'),
                    textAlign: TextAlign.center,
                    style: appLanguage == 'ur'
                        ? GoogleFonts.notoNastaliqUrdu(
                            fontSize: shortestSide > 600 ? 18.sp : 22,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFF6B6B),
                          )
                        : GoogleFonts.poppins(
                            fontSize: shortestSide > 600 ? 18.sp : 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFF6B6B),
                          ),
                  ),
                  CustomSizeBox(10),
                  CustomTextWidget(res["results"], Color(0xff030319),
                      shortestSide > 600 ? 12.sp : 10)
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                    color: redColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        offset: const Offset(0.0, 4.0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset('assets/images/cross.svg',
                      height: 65, width: 65, fit: BoxFit.fill)));
        },
      );

      throw Exception(response.body);
    }
  }

  showMutalFundsDetails(bool value) {
    enableMutualFundsDetails = value;
    notifyListeners();
  }
}
