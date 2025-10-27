import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/models/balance.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/navigations/transaction_details_navigation.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/date_util.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/utils/logo_loader.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/global/views/dialogues/custom_dialogue.dart';
import 'package:ezwage/global/views/dialogues/fail_dialogue.dart';
import 'package:ezwage/global/views/main_text.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/current_date_time.dart';
import 'package:ezwage/ui/accounts/models/accounts_model.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';
import 'package:ezwage/ui/ez_friend/model/ez_friend_model.dart';
import 'package:ezwage/ui/profile/model/profile_model.dart';
import 'package:ezwage/ui/transaction_details/model/transaction_model.dart';
import 'package:ezwage/ui/transaction_details/model/transaction_type.dart';
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
import 'package:intl/intl.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

import '../../withdraw/presentation/dialogues/pending_transactions.dart';

// ignore: must_be_immutable
class EZWageSendForm extends StatefulWidget {
  var purposeNameList;
  var purposeIdList;
  EZWageSendForm({required this.purposeIdList, required this.purposeNameList});
  @override
  State<EZWageSendForm> createState() => _EZWageSendFormState();
}

class _EZWageSendFormState extends State<EZWageSendForm> {
  var labelsList = [
    'Transfer From',
    'EZ Friend’s Account Title',
    'EZ Friend’s Account Number',
    'Actual Amount',
    'Charges',
    'Purpose',
    'Note (Optional)',
  ];
  final ezFriendSendFormController =
      List.generate(7, (i) => TextEditingController(), growable: true);
  List<FocusNode> focusNodes =
      List<FocusNode>.generate(7, (int index) => FocusNode());
  var formatter = NumberFormat('#,000');
  var decimalFormatter = NumberFormat('#,000.00');
  int? selectedPurposeId;
  String currentBalanceInAccount = '0';
  List<PopupMenuItem<String>> dropdownItems = [];
  bool fetchServiceCharges = false;
  @override
  void initState() {
    super.initState();
    ezFriendSendFormController[0].text = LoginModel.userName.toString();
    ezFriendSendFormController[1].text = EZFriendModel.name!;
    ezFriendSendFormController[2].text = EZFriendModel.accountNo!;
    ezFriendSendFormController[5].text = widget.purposeNameList[0];
    for (int i = 0; i < widget.purposeNameList.length; i++) {
      dropdownItems.add(PopupMenuItem<String>(
          child: Text(
            widget.purposeNameList[i],
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          value: widget.purposeNameList[i]));
    }
    if (BalanceModel.currentbalance != null) {
      if (double.parse(BalanceModel.currentbalance!) > 99)
        currentBalanceInAccount = formatter
            .format(double.parse(BalanceModel.currentbalance!))
            .toString();
      else
        currentBalanceInAccount =
            double.parse(BalanceModel.currentbalance.toString()) < 1
                ? '0'
                : double.parse(BalanceModel.currentbalance!).toStringAsFixed(0);
    }
    for (int i = 0; i < 7; i++) {
      focusNodes[i].addListener(() {
        if (i == 3) onFocusChange(i);
      });
    }
    selectedPurposeId = widget.purposeIdList[0];
    startTimer();
  }

  onFocusChange(int index) async {
    if (focusNodes[index].hasFocus == true && fetchServiceCharges == false) {
      fetchServiceCharges = true;
    } else if (focusNodes[index].hasFocus == false &&
        fetchServiceCharges == true &&
        ezFriendSendFormController[3].text != '') {
      fetchServiceCharges = false;
      if (int.parse(ezFriendSendFormController[3].text.replaceAll(',', '')) >
          99) {
        var json = {
          "amount": ezFriendSendFormController[3].text.replaceAll(',', '')
        };
        Response response = await ApiFunctions().postRequest(
            'companies/' +
                preferences.get('company_id').toString() +
                '/transactionCharges',
            jsonEncode(json),
            context);
        var decodeJson = jsonDecode(response.body);

        ezFriendSendFormController[4].text =
            decodeJson['results']['data']!.toString();
        if (double.parse(ezFriendSendFormController[4].text) > 99)
          ezFriendSendFormController[4].text = decimalFormatter
              .format(double.parse(ezFriendSendFormController[4].text))
              .toString();
        else
          ezFriendSendFormController[4].text =
              double.parse(ezFriendSendFormController[4].text) < 1
                  ? '0'
                  : double.parse(ezFriendSendFormController[4].text)
                      .toStringAsFixed(2);
      }
    }
  }

  int _start = 30;
  ConditionBloc _conditionBloc = ConditionBloc();
  // ignore: unused_field
  Timer? _timer;
  bool _otpSend = false;
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

  Future validtrans() async {
    // ignore: unnecessary_null_comparison
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return LogoLoader();
        });
    // var jsonBody = {
    //   "employee_id": ProfileModel.empid,
    //   "user_id": ProfileModel.uid,
    //   "amount": int.parse(total.toStringAsFixed(0)),
    //   "company_id": ProfileModel.comid,
    //   "transaction_time": CurrentDateTime().getCurrentDateTime(),
    // };
    var jsonBody = {
      "employee_id": ProfileModel.empid,
      "user_id": ProfileModel.uid,
      "amount":
          int.parse(ezFriendSendFormController[3].text.replaceAll(',', '')),
      "company_id": ProfileModel.comid,
      "transaction_time": CurrentDateTime().getCurrentDateTime()
    };
    Response response = await ApiFunctions()
        .postRequest('ezfriend/validate', jsonEncode(jsonBody), context);
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

  Future confirmtrans() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return LogoLoader();
        });

    // var jsonBody = {
    // "id": WithDrawModel.transid,
    // "otp_pin": WithDrawModel.otp,
    // "employee_id": ProfileModel.empid,
    // "user_id": ProfileModel.uid,
    // "amount": int.parse(total.toStringAsFixed(0)),
    // "company_id": ProfileModel.comid,
    // "bank_id": AccountsModel.res['results']['data'][0]["bank_id"],
    //   // "transaction_amount": "000000100000",
    // };

    var jsonBody = {
      "id": WithDrawModel.transid,
      "otp_pin": WithDrawModel.otp,
      "employee_id": ProfileModel.empid,
      "user_id": ProfileModel.uid,
      "amount":
          int.parse(ezFriendSendFormController[3].text.replaceAll(',', '')),
      "company_id": ProfileModel.comid,
      "payment_purpose": selectedPurposeId,
      "bank_id": AccountsModel.res['results']['data'][0]["bank_id"],
      "ez_friend_user_id": EZFriendModel.userId,
      "ez_friend_employee_id": EZFriendModel.employeeId,
      "ez_friend_company_id": EZFriendModel.companyId,
      "ez_friend_name": EZFriendModel.name,
      "ez_friend_account_number": EZFriendModel.accountNo,
      "ez_friend_bank_name": EZFriendModel.bankName,
      "ez_friend_company_name": EZFriendModel.companyName
    };
    Response response = await ApiFunctions()
        .postRequest('ezfriend/execute', jsonEncode(jsonBody), context);
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
          return PendingTransactionsRequest(
            "",
            "Ok",
            () async {
              var _userTransactionDetails = new Map();
              if (response.statusCode == 200) {
                Response response = await ApiFunctions().getRequest(
                    'employees/getemployeebalance/' +
                        preferences.get('employee_id').toString(),
                    context);
                _userTransactionDetails['Transfer_From'] =
                    LoginModel.userName.toString();
                _userTransactionDetails['Transfer_To'] = EZFriendModel.name;
                _userTransactionDetails['EZ_Friends_Company'] =
                    EZFriendModel.companyName;
                _userTransactionDetails['CNIC'] = EZFriendModel.cnic;
                _userTransactionDetails['EmpID'] =
                    TransactionModel.eid.toString();
                _userTransactionDetails['Amount'] =
                    res['results']['data']["amount"].toString();
                _userTransactionDetails['Received'] =
                    (double.parse(res['results']['data']["amount"].toString()) -
                            double.parse(res['results']['data']
                                    ['serviceCharges']
                                .toString()))
                        .toString();
                _userTransactionDetails['Charges'] =
                    res['results']['data']['serviceCharges'].toString();
                _userTransactionDetails['Bank_Name'] = EZFriendModel.bankName;
                _userTransactionDetails['IBAN'] = EZFriendModel.accountNo;
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
                    TransactionType.EZFriend);
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
                    TransactionType.EZFriend);
              }
            },
            Column(
              children: [
                responsCode == 200
                    ? SvgPicture.asset(
                        "assets/images/withdraw_success.svg",
                        width: shortestSide > 600 ? 50.sp : 60,
                        height: shortestSide > 600 ? 50.sp : 60,
                      )
                    : SvgPicture.asset(
                        "assets/images/withdraw_waiting.svg",
                        width: shortestSide > 600 ? 50.sp : 60,
                        height: shortestSide > 600 ? 50.sp : 60,
                      ),
                CustomSizeBox(18.h),
                responsCode == 200
                    ? Text(
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
                      )
                    : Text(
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
                    borderRadius: BorderRadius.circular(10), color: greenColor),
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

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).textScaleFactor * 1;
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(shortestSide < 600
            ? 80.sp
            : appLanguage == 'en'
                ? 60.sp
                : 65.sp),
        child: Column(
          children: [
            Stack(
              children: [
                GestureDetector(
                    onTap: () {
                      navigateToCustomNavigationBar(
                          context, EZFriendModel.pageIndex!);
                    },
                    child: Align(
                      alignment: appLanguage == 'en'
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Padding(
                        padding: appLanguage == 'en'
                            ? EdgeInsets.fromLTRB(shortestSide < 600 ? 20 : 30,
                                shortestSide < 600 ? 40 : 52, 0, 0)
                            : EdgeInsets.fromLTRB(
                                0, shortestSide < 600 ? 48 : 70, 20, 0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: backicon.withOpacity(0.2), width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: appLanguage == 'en'
                                ? EdgeInsets.only(
                                    left: shortestSide < 600 ? 10.0 : 15,
                                    top: 3,
                                    bottom: 3)
                                : EdgeInsets.only(
                                    right: 10.0, top: 3, bottom: 3),
                            child: shortestSide > 600
                                ? Icon(
                                    Icons.arrow_back_ios,
                                    color: backicon,
                                    size: 15.sp,
                                  )
                                : Icon(
                                    Icons.arrow_back_ios,
                                    color: backicon,
                                  ),
                          ),
                        ),
                      ),
                    )),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, shortestSide > 600 ? 40 : 40, 0, 0),
                    child: Text(
                      'Send to EZ Friend',
                      textScaleFactor: 1,
                      style: appLanguage == 'ur'
                          ? GoogleFonts.notoNastaliqUrdu(
                              color: blueColor,
                              fontWeight: FontWeight.w500,
                              fontSize: shortestSide > 600 ? 16.sp : 18,
                            )
                          : GoogleFonts.poppins(
                              color: blueColor,
                              fontWeight: FontWeight.w500,
                              fontSize: shortestSide > 600 ? 18.sp : 20),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(11, 15, 11, 0),
              child: Divider(),
            ),
          ],
        ),
      ),
      body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(
            children: [
              Form(
                key: formKey,
                child: ListView.builder(
                    itemCount: ezFriendSendFormController.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(35, 15, 35, 0),
                            child: TextFormField(
                                controller: ezFriendSendFormController[index],
                                enableInteractiveSelection: false,
                                style: GoogleFonts.poppins(
                                    fontSize: 14 / mediaQuery,
                                    fontWeight: FontWeight.w400),
                                keyboardType: index == 3 && Platform.isAndroid
                                    ? TextInputType.number
                                    : TextInputType.text,
                                inputFormatters: index == 3
                                    ? <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                      ]
                                    : <TextInputFormatter>[],
                                focusNode: focusNodes[index],
                                readOnly:
                                    index == 3 || index == 6 ? false : true,
                                onChanged: ((value) {
                                  if (index == 3) {
                                    formKey.currentState!.validate();
                                    if (ezFriendSendFormController[index]
                                            .text !=
                                        '') {
                                      if (int.parse(
                                              ezFriendSendFormController[index]
                                                  .text
                                                  .replaceAll(',', '')) >
                                          int.parse(currentBalanceInAccount
                                              .replaceAll(',', ''))) {
                                        ezFriendSendFormController[index].text =
                                            ezFriendSendFormController[index]
                                                .text
                                                .substring(
                                                    0,
                                                    ezFriendSendFormController[
                                                                index]
                                                            .text
                                                            .length -
                                                        1);
                                      }
                                      if (double.parse(
                                              ezFriendSendFormController[index]
                                                  .text) >
                                          99)
                                        ezFriendSendFormController[index].text =
                                            formatter
                                                .format(double.parse(
                                                    ezFriendSendFormController[
                                                            index]
                                                        .text))
                                                .toString();
                                      else
                                        ezFriendSendFormController[index]
                                            .text = double.parse(
                                                    ezFriendSendFormController[
                                                            index]
                                                        .text) <
                                                1
                                            ? '0'
                                            : double.parse(
                                                    ezFriendSendFormController[
                                                            index]
                                                        .text)
                                                .toStringAsFixed(0);
                                      ezFriendSendFormController[index]
                                              .selection =
                                          TextSelection.fromPosition(
                                              TextPosition(
                                                  offset:
                                                      ezFriendSendFormController[
                                                              index]
                                                          .text
                                                          .length));
                                    }
                                  }
                                }),
                                onTap: () {
                                  if (index == 5) {
                                    showMenu(
                                      context: context,
                                      position: RelativeRect.fromLTRB(
                                          100, 500, 100, 0),
                                      items: [...dropdownItems],
                                    ).then((value) {
                                      if (value != null) {
                                        ezFriendSendFormController[index].text =
                                            value.toString();

                                        for (int i = 0;
                                            i < widget.purposeNameList.length;
                                            i++) {
                                          if (value.toString().contains(
                                              widget.purposeNameList[i])) {
                                            selectedPurposeId =
                                                widget.purposeIdList[i];
                                          }
                                        }
                                      }
                                    });
                                  }
                                },
                                validator: (value) {
                                  if (index == 3) {
                                    if (ezFriendSendFormController[index]
                                            .text ==
                                        '') {
                                      return 'Actual Amount must be at least 100!';
                                    } else if (int.parse(
                                            ezFriendSendFormController[index]
                                                .text
                                                .replaceAll(',', '')) <
                                        100) {
                                      return 'Actual Amount must be at least 100!';
                                    }
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12 / mediaQuery),
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12.0, horizontal: 20),
                                  labelText: labelsList[index],
                                  labelStyle: GoogleFonts.poppins(
                                    fontSize: 12 / mediaQuery,
                                    color: blueColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      color: blueColor,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      color: blueColor,
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      color: redColor,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      color: redColor,
                                    ),
                                  ),
                                  suffixIcon: index == 5
                                      ? PopupMenuButton<String>(
                                          icon: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: SvgPicture.asset(
                                              'assets/images/from_dropdown.svg',
                                            ),
                                          ),
                                          onSelected: (String value) {
                                            ezFriendSendFormController[index]
                                                .text = value;
                                            for (int i = 0;
                                                i <
                                                    widget
                                                        .purposeNameList.length;
                                                i++) {
                                              if (value.contains(
                                                  widget.purposeNameList[i])) {
                                                selectedPurposeId =
                                                    widget.purposeIdList[i];
                                              }
                                            }
                                          },
                                          itemBuilder: (BuildContext context) {
                                            return <PopupMenuItem<String>>[
                                              ...dropdownItems
                                            ];
                                          },
                                        )
                                      : null,
                                )),
                          ),
                          if (index == 2)
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 40.0,
                                top: 5,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                    textScaleFactor: 1,
                                    text: TextSpan(
                                        text: 'Bank Name:  ',
                                        style: GoogleFonts.poppins(
                                            fontSize: 10 / mediaQuery,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                          TextSpan(
                                            text: EZFriendModel.bankName,
                                            style: GoogleFonts.poppins(
                                                fontSize: 10 / mediaQuery,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ])),
                              ),
                            ),
                          if (index == 1)
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 40.0,
                                top: 5,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                    // textScaleFactor: 1,
                                    text: TextSpan(
                                        text: 'Company:  ',
                                        style: GoogleFonts.poppins(
                                            fontSize: 10 / mediaQuery,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                      TextSpan(
                                        text: EZFriendModel.companyName,
                                        style: GoogleFonts.poppins(
                                            fontSize: 10 / mediaQuery,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ])),
                              ),
                            ),
                          if (index == 3)
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 40.0,
                                top: 5,
                              ),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: RichText(
                                    //  textScaleFactor: 1,
                                    text: TextSpan(
                                        text: 'Available Balance: ',
                                        style: GoogleFonts.poppins(
                                            fontSize: 10 / mediaQuery,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                      TextSpan(
                                        text: currentBalanceInAccount,
                                        style: GoogleFonts.poppins(
                                            fontSize: 10 / mediaQuery,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ])),
                              ),
                            ),
                        ],
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 124,
                      height: 35,
                      child: ElevatedButton(
                          onPressed: () {
                            navigateToCustomNavigationBar(context, 2);
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.white,
                            side: BorderSide(
                                color: Color.fromRGBO(128, 128, 128, 0.5)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Cancel',
                            textScaleFactor: 1,
                            style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(128, 128, 128, 0.5)),
                          )),
                    ),
                    SizedBox(
                      width: 37,
                    ),
                    SizedBox(
                      width: 124,
                      height: 35,
                      child: ElevatedButton(
                          onPressed: () {
                            // if (cnicFound == true) {
                            //   showDialog(
                            //       context: context,
                            //       barrierDismissible: false,
                            //       builder: (BuildContext context) {
                            //         return LogoLoader();
                            //       });
                            //   context
                            //       .read<EZFriendProvider>()
                            //       .navigateToSendForm(context);
                            // }
                            FocusScope.of(context).unfocus();
                            if (formKey.currentState!.validate() == true) {
                              _conditionBloc.dispose();
                              _conditionBloc = ConditionBloc();
                              WithDrawModel.otp = '';
                              validtrans();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Color(0xff00A2FF),
                            side: BorderSide(color: Color(0xff00A2FF)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Proceed',
                            textScaleFactor: 1,
                            style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 37,
              ),
            ],
          ))),
    );
  }
}
