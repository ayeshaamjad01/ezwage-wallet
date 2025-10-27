import 'dart:convert';

import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/transaction_details_navigation.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/transaction_details/model/transaction_type.dart';
import 'package:ezwage/ui/video_tutorials/model/condition_bloc.dart';
import 'package:ezwage/ui/video_tutorials/model/enum_condition_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';

// ignore: must_be_immutable
class TransactionsHistoryList extends StatelessWidget {
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
  // ignore: unused_field
  bool? _showTransactions;
  // ignore: unused_field
  bool? _transactionsAvailale;
  // ignore: unused_field
  bool? _apiDataLoaded;
  String? statusType;
  TransactionsHistoryList(
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
    this.statusType,
    this._receivedTransactionList,
    this._transactionServiceChargesList,
    this._transactionIdList,
    this._transactionTypeList,
  );
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    _transactionsAvailale = false;
    ConditionBloc conditionBloc = ConditionBloc();
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: appLanguage == 'en'
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: Padding(
              padding: appLanguage == 'en'
                  ? EdgeInsets.fromLTRB(35, 0, 0, 20)
                  : EdgeInsets.fromLTRB(0, 0, 35, 20),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  translateText('Recent_Transactions'),
                  textScaleFactor: 1,
                  style: appLanguage == 'ur'
                      ? GoogleFonts.notoNastaliqUrdu(
                          fontSize: shortestSide > 600 ? 12.sp : 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1C1C1C))
                      : GoogleFonts.poppins(
                          fontSize: shortestSide > 600 ? 12.sp : 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1C1C1C)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              children: [
                ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: _transactionsDateList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    if (_transactionStatusList[index]
                        .toString()
                        .contains(statusType.toString()))
                      conditionBloc.eventSink.add(ConditionEvent.True);
                    else if (_transactionStatusList[index] == 'Rejected' &&
                        statusType == 'Unsuccessful')
                      conditionBloc.eventSink.add(ConditionEvent.True);
                    return InkWell(
                      onTap: () async {
                        Response? response;
                        var _userTransactionDetails = new Map();
                        if (_transactionTypeList[index].contains('EZ Friend')) {
                          _userTransactionDetails['Transaction_Type'] =
                              TransactionType.EZFriend;
                          response = await ApiFunctions().getRequest(
                              'ezfriend/' +
                                  _transactionIdList[index].toString(),
                              context);
                        } else if (_transactionTypeList[index]
                            .contains('Mutual Fund')) {
                          _userTransactionDetails['Transaction_Type'] =
                              TransactionType.MutualFunds;
                          response = await ApiFunctions().getRequest(
                              'mutualfund/' +
                                  _transactionIdList[index].toString(),
                              context);
                        } else if (_transactionTypeList[index]
                            .contains('Payroll Financing')) {
                          _userTransactionDetails['Transaction_Type'] =
                              TransactionType.PayrollFinance;
                          response = await ApiFunctions().getRequest(
                              'payrollFinancing/' +
                                  _transactionIdList[index].toString(),
                              context);
                        } else {
                          _userTransactionDetails['Transaction_Type'] =
                              TransactionType.SalaryWithdraw;
                          response = await ApiFunctions().getRequest(
                              'salaryWithdraw/' +
                                  _transactionIdList[index].toString(),
                              context);
                        }
                        var decodedJson = jsonDecode(response!.body);
                        if (_userTransactionDetails['Transaction_Type'] ==
                            TransactionType.PayrollFinance) {
                          _userTransactionDetails['Bank_Name'] =
                              decodedJson['results'][0]['benificiary_bank_name']
                                  .toString();
                          _userTransactionDetails['EmpID'] =
                              decodedJson['results'][0]['employee_id']
                                  .toString();
                          _userTransactionDetails['IBAN'] =
                              decodedJson['results'][0]['account_number_to']
                                  .toString();
                        } else if (_userTransactionDetails[
                                'Transaction_Type'] ==
                            TransactionType.EZFriend) {
                          _userTransactionDetails['Bank_Name'] =
                              decodedJson['results'][0]['ez_friend_bank_name']
                                  .toString();
                          _userTransactionDetails['IBAN'] =
                              decodedJson['results'][0]
                                      ['ez_friend_account_number']
                                  .toString();
                          _userTransactionDetails['EmpID'] =
                              decodedJson['results'][0]['employee_id']
                                  .toString();
                          _userTransactionDetails['Transfer_From'] =
                              LoginModel.userName.toString();
                          _userTransactionDetails['Transfer_To'] =
                              decodedJson['results'][0]['ez_friend_name']
                                  .toString();
                          _userTransactionDetails['EZ_Friends_Company'] =
                              decodedJson['results'][0]
                                      ['ez_friend_company_name']
                                  .toString();
                          _userTransactionDetails['CNIC'] =
                              decodedJson['results'][0]['ez_friend_cnic']
                                  .toString();
                        } else if (_userTransactionDetails[
                                'Transaction_Type'] ==
                            TransactionType.MutualFunds) {
                          _userTransactionDetails['Bank_Name'] =
                              decodedJson['results'][0]['benificiary_bank_name']
                                  .toString();
                          _userTransactionDetails['EmpID'] =
                              decodedJson['results'][0]['employee_id']
                                  .toString();
                          _userTransactionDetails['IBAN'] =
                              decodedJson['results'][0]['account_number_to']
                                  .toString();
                          _userTransactionDetails['Transfer_From'] =
                              LoginModel.userName.toString();
                        } else {
                          _userTransactionDetails['Bank_Name'] =
                              decodedJson['results'][0]['benificiary_bank_name']
                                  .toString();
                          _userTransactionDetails['EmpID'] =
                              decodedJson['results'][0]['employee_id']
                                  .toString();
                          _userTransactionDetails['IBAN'] =
                              decodedJson['results'][0]['account_number_to']
                                  .toString();
                        }
                        // _userTransactionDetails['EmpID'] =
                        //     _transactionEmpIdList[index].toString();
                        _userTransactionDetails['Amount'] =
                            _transactionsAmountList[index].toString();
                        _userTransactionDetails['Received'] =
                            _receivedTransactionList[index].toString();
                        _userTransactionDetails['Charges'] =
                            _transactionServiceChargesList[index].toString();
                        _userTransactionDetails['Date'] =
                            _transactionDetailsDateList[index].toString();
                        _userTransactionDetails['Time'] =
                            _transactionDetailsTimeList[index].toString();
                        _userTransactionDetails['Status'] =
                            _transactionStatusList[index].toString();
                        _userTransactionDetails['Transaction_ID'] =
                            _transactionStanIdList[index].toString();

                        navigateToTransactionDetailsScreen(
                            context,
                            _userTransactionDetails,
                            'History',
                            _userTransactionDetails['Transaction_Type']);
                      },
                      child: _transactionStatusList[index]
                                  .toString()
                                  .contains(statusType.toString()) ||
                              (_transactionStatusList[index] == 'Rejected' &&
                                  statusType == 'Unsuccessful')
                          ? Column(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: (appLanguage == 'ur')
                                              ? const EdgeInsets.only(
                                                  left: 15.0)
                                              : const EdgeInsets.all(0),
                                          child: Container(
                                            // decoration: BoxDecoration(
                                            //     border: Border.all(
                                            //       color: transicon,
                                            //       width: 3,
                                            //     ),
                                            //     // shape: BoxShape.circle,
                                            //     borderRadius:
                                            //         BorderRadius.circular(20),
                                            //     color: transicon),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Image.asset(
                                                'assets/images/transactionicon.png',
                                                width: shortestSide > 600
                                                    ? 30.sp
                                                    : 50,
                                                height: shortestSide > 600
                                                    ? 30.sp
                                                    : 50,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // CustomTextWidget(
                                              //     name, simpletextcolor, 12),
                                              Row(
                                                children: [
                                                  Text(
                                                    _transactionTypeList[index]
                                                                .contains(
                                                                    'EZ Friend') ==
                                                            true
                                                        ? 'EZ Friend Transfer'
                                                        : _transactionTypeList[
                                                                        index]
                                                                    .contains(
                                                                        'Mutual Fund') ==
                                                                true
                                                            ? 'Mutual Funds'
                                                            : 'Salary Withdrawn',
                                                    textScaleFactor: 1,
                                                    style: GoogleFonts.workSans(
                                                        fontSize:
                                                            shortestSide > 600
                                                                ? 12.sp
                                                                : 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                  Padding(
                                                    padding: appLanguage == 'en'
                                                        ? EdgeInsets.only(
                                                            left: 8.0)
                                                        : EdgeInsets.fromLTRB(
                                                            20, 0, 10, 0),
                                                    child: shortestSide > 599
                                                        ? SvgPicture.asset(
                                                            _transactionStatusList[
                                                                        index] ==
                                                                    'Successful'
                                                                ? "assets/images/tick.svg"
                                                                : _transactionStatusList[
                                                                            index] ==
                                                                        'In Review'
                                                                    ? "assets/images/pending_icon.svg"
                                                                    : 'assets/images/transaction_unsuccess.svg',
                                                            height: 30,
                                                          )
                                                        : SvgPicture.asset(_transactionStatusList[
                                                                    index] ==
                                                                'Successful'
                                                            ? "assets/images/tick.svg"
                                                            : _transactionStatusList[
                                                                        index] ==
                                                                    'In Review'
                                                                ? "assets/images/pending_icon.svg"
                                                                : 'assets/images/transaction_unsuccess.svg'),
                                                  )
                                                ],
                                              ),
                                              RichText(
                                                  textScaleFactor: 1,
                                                  text: TextSpan(
                                                      text: 'PKR ',
                                                      style:
                                                          GoogleFonts.workSans(
                                                              fontSize:
                                                                  shortestSide >
                                                                          600
                                                                      ? 12.sp
                                                                      : 12,
                                                              height: 2,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Color(
                                                                  0xff00A2FF)),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                          text: double.parse(
                                                                      _transactionsAmountList[
                                                                          index]) >
                                                                  99
                                                              ? formatter
                                                                  .format(double.parse(
                                                                      _transactionsAmountList[
                                                                          index]))
                                                                  .toString()
                                                              : _transactionsAmountList[
                                                                  index],
                                                          style: GoogleFonts.workSans(
                                                              fontSize:
                                                                  shortestSide >
                                                                          600
                                                                      ? 12.sp
                                                                      : 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Color(
                                                                  0xff00A2FF)),
                                                        ),
                                                      ])),

                                              // CustomTextWidget(
                                              //     'PKR ' +

                                              //         ? _transactionsAmountList[
                                              //                 index]
                                              //             .toString()
                                              //         : _transactionsAmountList[
                                              //                 index]
                                              //             .toString(),
                                              //     bluecolor,
                                              //     12),
                                              // CustomTextWidget(
                                              //     _transactionsDateList[index]
                                              //         .toString(),
                                              //     simpletextcolor,
                                              //     10)
                                              Text(
                                                _transactionsDateList[index],
                                                textScaleFactor: 1,
                                                style: appLanguage == 'ur'
                                                    ? GoogleFonts
                                                        .notoNastaliqUrdu(
                                                            height: 2,
                                                            fontSize:
                                                                shortestSide >
                                                                        600
                                                                    ? 10.sp
                                                                    : 10,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Color(
                                                                0xff9F9F9F))
                                                    : GoogleFonts.poppins(
                                                        fontSize:
                                                            shortestSide > 600
                                                                ? 10.sp
                                                                : 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff9F9F9F)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 10, 0),
                                          child: Icon(
                                            Icons.navigate_next,
                                            color: Color(0xff00A2FF),
                                            size:
                                                shortestSide > 600 ? 20.sp : 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      10, shortestSide > 600 ? 5.sp : 0, 10, 0),
                                  child: Divider(),
                                ),
                                CustomSizeBox(10),
                              ],
                            )
                          : Column(),
                    );
                  },
                ),
                CustomSizeBox(90),
              ],
            ),
          ),
          StreamBuilder<bool>(
              stream: conditionBloc.condtionStream,
              builder: (context, snapshot) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (snapshot.hasData == false)
                      Text(
                        translateText("Transaction's_History_not_Available"),
                        textScaleFactor: 1,
                        style: appLanguage == 'en'
                            ? GoogleFonts.poppins(color: Colors.black)
                            : GoogleFonts.notoNastaliqUrdu(color: Colors.black),
                      )
                  ],
                );
              }),
          SizedBox(
            height: 140,
          ),
        ],
      ),
    );
  }
}
