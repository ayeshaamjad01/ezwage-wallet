import 'dart:async';
import 'dart:convert';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/models/balance.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/navigations/transaction_details_navigation.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/date_util.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/utils/logo_loader.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/global/views/buttons/custom_button.dart';
import 'package:ezwage/global/views/dialogues/custom_dialogue.dart';
import 'package:ezwage/global/views/dialogues/fail_dialogue.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/global/views/main_text.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/current_date_time.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/accounts/models/accounts_model.dart';
import 'package:ezwage/ui/accounts/view/accounts_view.dart';
import 'package:ezwage/ui/profile/model/profile_model.dart';
import 'package:ezwage/ui/transaction_details/model/transaction_model.dart';
import 'package:ezwage/ui/transaction_details/model/transaction_type.dart';
import 'package:ezwage/ui/video_tutorials/model/condition_bloc.dart';
import 'package:ezwage/ui/video_tutorials/model/enum_condition_event.dart';
import 'package:ezwage/ui/withdraw/controller/withdraw_notification.dart';
import 'package:ezwage/ui/withdraw/controller/withdraw_controller.dart';
import 'package:ezwage/ui/withdraw/model/withdraw_model.dart';
import 'package:ezwage/ui/withdraw/view/amount_buttons.dart';
import 'package:ezwage/ui/withdraw/view/amount_buttons_provider.dart';
// import 'package:ezwage/ui/withdraw/view/thumb_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
// import 'package:otp_autofill/otp_autofill.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

import '../presentation/dialogues/pending_transactions.dart';
import '../presentation/dialogues/withdraw_information_dialogure.dart';

class WithdrawView extends StatefulWidget {
  const WithdrawView({Key? key}) : super(key: key);

  @override
  _withdrawviewState createState() => _withdrawviewState();
}

class _withdrawviewState extends State<WithdrawView> {
  double total = 0;
  TextEditingController _controller = new TextEditingController();
  String? currentEmpSalary;
  String? currentWithdraw;
  Timer? _timer;
  int _start = 30;
  ConditionBloc _conditionBloc = ConditionBloc();

  // late OTPTextEditController _otpReceiverController;
  // late OTPInteractor _otpInteractor;
  // final _otpPinController = TextEditingController();
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          _conditionBloc.eventSink.add(ConditionEvent.True);
          // timer.cancel();
          // });
        } else {
          _start--;
          _conditionBloc.eventSink.add(ConditionEvent.True);
          // });
        }
      },
    );
  }

  convertDigits(int value) {
    if (value < 10)
      return '0' + value.toString();
    else
      return value.toString();
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  Future validtrans() async {
    // ignore: unnecessary_null_comparison
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return LogoLoader();
        });
    var json_body = {
      "employee_id": ProfileModel.empid,
      "user_id": ProfileModel.uid,
      "amount": int.parse(total.toStringAsFixed(0)),
      "company_id": ProfileModel.comid,
      "transaction_time": CurrentDateTime().getCurrentDateTime(),
    };
    Response response = await ApiFunctions().postRequest(
        'transaction/validateTransaction', jsonEncode(json_body), context);
    var res = jsonDecode(response.body);
    if (response.statusCode == 200 &&
        res['results']['data']['message'] == "OTP created") {
      // initializeOtpInteractor();
      Navigator.pop(context);

      WithDrawModel.transid = res['results']['data']["data"]["id"];

      _start = 120;
      // // });

      // });

      // Navigator.pop(context);
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            var shortestSide = MediaQuery.of(context).size.shortestSide;
            return CustomDialog("", translateText('Next'), () {
              if (WithDrawModel.otp.length > 3 && _otpSend == false) {
                confirmtrans();
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
                      textScaleFactor: 1,
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
                        textScaleFactor: 1,
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
                        // boxShadows: [
                        //   BoxShadow(
                        //     color: Colors.black26,
                        //     blurRadius: 3.0,
                        //     offset: const Offset(0.0, 5.0),
                        //   ),
                        // ],
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
                              stream: _conditionBloc.condtionStream,
                              builder: (context, snapshot) {
                                return appLanguage == 'en'
                                    ? Text(
                                        translateText('Time_Remaning') +
                                            " $_start" +
                                            's',
                                        textScaleFactor: 1,
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
                                        textScaleFactor: 1,
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
                                _conditionBloc.dispose();
                                _conditionBloc = ConditionBloc();
                                // _otpReceiverController.stopListen();
                                WithDrawModel.otp = '';
                                validtrans();
                              },
                              child: Text(
                                translateText('Resend'),
                                textScaleFactor: 1,
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

  convertInDecimalFormat(double value) {
    if (value < 1000) {
      return value.toStringAsFixed(2);
    } else {
      return decimalFormatter.format(value);
    }
  }

  withDrawDialogue(BuildContext context) {
    return showDialog(
        barrierDismissible: true,
        context: context,
        builder: (BuildContext context) {
          var shortestSide = MediaQuery.of(context).size.shortestSide;
          
return WithdrawDetails("", translateText('Next'), () {
            _conditionBloc.dispose();
            _conditionBloc = ConditionBloc();
            _start = 120;
            WithDrawModel.otp = '';
            validtrans();
          },
              Column(
                children: [
                  shortestSide > 600
                      ? Image.asset(
                          "assets/images/withdrawdialogue.png",
                          height: 30.sp,
                          fit: BoxFit.cover,
                        )
                      : Image.asset("assets/images/withdrawdialogue.png"),
                  CustomSizeBox(30),
                  Text(
                    translateText('Withdraw'),
                    textScaleFactor: 1,
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      children: [
                        Text(
                          translateText('Amount_Withdrawn'),
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 12.sp : 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff808080),
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 12.sp : 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff808080)),
                        ),
                        Spacer(),
                        RichText(
                            text: TextSpan(
                                text: 'PKR ',
                                style: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff808080),
                                      )
                                    : GoogleFonts.poppins(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff808080)),
                                children: <TextSpan>[
                              TextSpan(
                                text: double.parse(WithDrawModel.amount) > 99
                                    ? decimalFormatter.format(
                                        double.parse(WithDrawModel.amount))
                                    : WithDrawModel.amount,
                                style: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff808080),
                                      )
                                    : GoogleFonts.poppins(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff808080)),
                              ),
                            ])),
                      ],
                    ),
                  ),
                  CustomSizeBox(20),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
                    child: Row(
                      children: [
                        Text(
                          translateText('EZ_Wage_Charges'),
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 12.sp : 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff808080),
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 12.sp : 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff808080)),
                        ),
                        Spacer(),
                        RichText(
                            text: TextSpan(
                                text: 'PKR ',
                                style: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff808080),
                                      )
                                    : GoogleFonts.poppins(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff808080)),
                                children: <TextSpan>[
                              TextSpan(
                                text: double.parse(WithDrawModel.fee)
                                    .toStringAsFixed(2)
                                    .toString(),
                                style: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff808080),
                                      )
                                    : GoogleFonts.poppins(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff808080)),
                              ),
                            ])),
                      ],
                    ),
                  ),
                  Divider(),
                  CustomSizeBox(20),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      children: [
                        Text(
                          translateText('Total_Receivable'),
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 12.sp : 12,
                                  fontWeight: FontWeight.w500,
                                  color: blueColor,
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 12.sp : 14,
                                  fontWeight: FontWeight.w500,
                                  color: blueColor),
                        ),
                        Spacer(),
                        RichText(
                            text: TextSpan(
                                text: 'PKR ',
                                style: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff808080),
                                      )
                                    : GoogleFonts.poppins(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff808080)),
                                children: <TextSpan>[
                              TextSpan(
                                text: double.parse(WithDrawModel.total) > 99
                                    ? decimalFormatter.format(
                                        double.parse(WithDrawModel.total))
                                    : WithDrawModel.total,
                                style: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff808080),
                                      )
                                    : GoogleFonts.poppins(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff808080)),
                              ),
                            ])),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        offset: const Offset(0.0, 4.0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset('assets/images/Withdraw.svg',
                      height: 65,
                      width: 65,
                      // width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill)),
              false);
        });
  }

  Future confirmtrans() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return LogoLoader();
        });

    var json_body = {
      "id": WithDrawModel.transid,
      "otp_pin": WithDrawModel.otp,
      "employee_id": ProfileModel.empid,
      "user_id": ProfileModel.uid,
      "amount": int.parse(total.toStringAsFixed(0)),
      "company_id": ProfileModel.comid,
      "bank_id": AccountsModel.res['results']['data'][0]["bank_id"],
      // "transaction_amount": "000000100000",
    };

    Response response = await ApiFunctions()
        .postRequest('transaction/execute', jsonEncode(json_body), context);
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
          return PendingTransactionsRequest("", "Ok", () async {
            var _userTransactionDetails = new Map();
            if (response.statusCode == 200) {
              Response response = await ApiFunctions().getRequest(
                  'employees/getemployeebalance/' +
                      preferences.get('employee_id').toString(),
                  context);
              _userTransactionDetails['EmpID'] =
                  TransactionModel.eid.toString();
              _userTransactionDetails['Amount'] =
                  res['results']['data']["amount"].toString();
              _userTransactionDetails['Received'] = (double.parse(
                          res['results']['data']["amount"].toString()) -
                      double.parse(
                          res['results']['data']['serviceCharges'].toString()))
                  .toString();
              _userTransactionDetails['Charges'] =
                  res['results']['data']['serviceCharges'].toString();
              _userTransactionDetails['Bank_Name'] = AccountsModel.bankName;
              _userTransactionDetails['IBAN'] = AccountsModel.bankIban;
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
              // navigateToconfirmtransactionscreen(context);
              navigateToTransactionDetailsScreen(
                  context,
                  _userTransactionDetails,
                  'Withdraw',
                  TransactionType.SalaryWithdraw);
            } else if (responsCode == 201) {
              Navigator.pop(context);
              navigateToCustomNavigationBar(context, 2);
            } else {
              Navigator.pop(context);
              // navigateToconfirmtransactionscreen(context);
              navigateToTransactionDetailsScreen(
                  context,
                  _userTransactionDetails,
                  'Withdraw',
                  TransactionType.SalaryWithdraw);
            }
          },
              Column(
                children: [
                  responsCode == 200 ?
                  SvgPicture.asset(
                    "assets/images/withdraw_success.svg",
                    width: shortestSide > 600 ? 50.sp : 60,
                    height: shortestSide > 600 ? 50.sp : 60,
                  ):
                  SvgPicture.asset(
                    "assets/images/withdraw_waiting.svg",
                    width: shortestSide > 600 ? 50.sp : 60,
                    height: shortestSide > 600 ? 50.sp : 60,
                  ),
                   CustomSizeBox(18.h),
                   responsCode == 200 ?
                   Text( translateText("Transaction_Successful"),
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
                          ),):
                  Text(
                    translateText("Wait_For_Approval"),
                    textScaleFactor: 1,
                    textAlign: TextAlign.center,
                    style: appLanguage == 'ur'
                        ? GoogleFonts.notoNastaliqUrdu(
                            fontSize: shortestSide > 600 ? 18.sp : 22,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFC5982D),
                          )
                        : GoogleFonts.poppins(
                            fontSize: shortestSide > 600 ? 18.sp : 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFC5982D),
                          ),
                  ),
                  CustomSizeBox(7.h),
                  Text(
                    translateText(responsCode == 200
                        ? 'Your_transaction_has_been_successfully_completed'
                        : 'Transaction_wait_for_approval'),
                    textScaleFactor: 1,
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
              )),
              responsCode == 200 ? Color(0xff00B528) : Color(0xFFC5982D),
              );
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
                    textScaleFactor: 1,
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

  String id = ProfileModel.uid.toString();

  String val = "0";
  @override
  void initState() {
    super.initState();
    WithDrawModel.a = 0;
    startTimer();
  }

  var formatter = NumberFormat('#,000');
  var decimalFormatter = NumberFormat('#,000.00');
  bool _otpSend = false;
  String? currentBalanceInAccount;
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    if (BalanceModel.totalWithdarw != null) {
      if (BalanceModel.totalWithdarw! > 99)
        currentWithdraw =
            formatter.format(BalanceModel.totalWithdarw!).toString();
      else
        currentWithdraw = BalanceModel.totalWithdarw!.toStringAsFixed(2);
    }
    if (BalanceModel.currentbalance != null) {
      if (double.parse(BalanceModel.currentbalance!) > 99)
        currentBalanceInAccount = formatter
            .format(double.parse(BalanceModel.currentbalance!))
            .toString();
      else
        currentBalanceInAccount = BalanceModel.currentbalance!;
    }
    if (ProfileModel.salary != null) {
      if (double.parse(BalanceModel.currentbalance!) > 99)
        currentEmpSalary =
            formatter.format(double.parse(ProfileModel.salary!)).toString();
      else
        currentEmpSalary = ProfileModel.salary!;
    }
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            shortestSide > 600 ? 8.sp : 0.0,
            shortestSide > 600 ? 8.sp : 0.0,
            shortestSide > 600 ? 15.sp : 0.0,
            shortestSide > 600 ? 8.sp : 0.0),
        child: Column(
          children: [
            // CustomSizeBox(5),
            if (double.parse(BalanceModel.currentbalance!).toInt() != 0)
              Text(
                translateText('Enter_the_amount_you_wish_to_withdraw'),
                textScaleFactor: 1,
                style: appLanguage == 'ur'
                    ? GoogleFonts.notoNastaliqUrdu(
                        fontSize: shortestSide > 600 ? 12.sp : 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6A6A6A),
                      )
                    : GoogleFonts.poppins(
                        fontSize: shortestSide > 600 ? 12.sp : 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6A6A6A)),
              ),
            CustomSizeBox(15),
            if (double.parse(BalanceModel.currentbalance!).toInt() != 0)
              ChangeNotifierProvider<AmountButtonsProvider>(
                create: (_) => AmountButtonsProvider(),
                child: AmountButtons(_controller),
              ),
            CustomSizeBox(20),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: AccountsView(),
            ),
            CustomSizeBox(30),
            if (double.parse(BalanceModel.currentbalance!).toInt() != 0)
              Padding(
                  padding: appLanguage == 'en'
                      ? EdgeInsets.only(left: 0, right: 0)
                      : EdgeInsets.only(left: 0, right: 2),
                  child: customButton(
                    translateText('Next'),
                    () async {
                      if (_controller != '') {
                        var json = {"amount": WithDrawModel.amount};
                        Response response = await ApiFunctions().postRequest(
                            'companies/' +
                                preferences.get('company_id').toString() +
                                '/transactionCharges',
                            jsonEncode(json),
                            context);
                        var decodeJson = jsonDecode(response.body);
                        if (_controller.text.length > 0 &&
                            double.parse(_controller.text
                                    .toString()
                                    .replaceAll(',', '')) >
                                0 &&
                            decodeJson['results']['data'] != null) {
                          String _withdrawAmountValue =
                              _controller.text.replaceAll(',', '');
                          WithDrawModel.amount =
                              double.parse(_withdrawAmountValue)
                                  .toStringAsFixed(2);
                          WithDrawModel.fee =
                              decodeJson['results']['data'].toString();
                          WithDrawModel.total =
                              (double.parse(WithDrawModel.amount) -
                                      double.parse(WithDrawModel.fee))
                                  .toStringAsFixed(2);
                          total = double.parse(WithDrawModel.amount);
                          if (double.parse(WithDrawModel.total) > 0)
                            withDrawDialogue(context);
                          else
                            CustomSnackBar(false).showInSnackBar(
                                translateText(
                                        'Please_select_minimum_amount_PKR')
                                    .toString()
                                    .replaceAll(
                                        'PKR',
                                        'PKR ' +
                                            (double.parse(WithDrawModel.fee) +
                                                    1)
                                                .toString()
                                                .substring(
                                                    0,
                                                    (double.parse(WithDrawModel
                                                                .fee) +
                                                            1)
                                                        .toString()
                                                        .indexOf('.')) +
                                            ' '),
                                context);
                        }
                      }
                    },
                    context.watch<Counter>().buttonColor != false
                        ? Color(0xff00A2FF)
                        : Colors.grey,
                  )),
            CustomSizeBox(shortestSide < 600
                ? 340
                : appLanguage == 'en'
                    ? 500
                    : 700),
          ],
        ),
      ),
    );
  }
}
