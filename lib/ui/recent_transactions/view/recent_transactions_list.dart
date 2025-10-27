import 'dart:convert';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/ui/recent_transactions/controller/recent_transactions_provider.dart';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/transaction_details_navigation.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/transaction_details/model/transaction_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';

class RecentTransactionsList extends StatefulWidget {
  @override
  _RecentTransactionsListState createState() => _RecentTransactionsListState();
}

class _RecentTransactionsListState extends State<RecentTransactionsList> {
  int _transactionslength = 0;
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
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    bool _showTransactions =
        context.watch<RecentTransactionsProvider>().showTransactionsList;
    bool _transactionsAvailale =
        context.watch<RecentTransactionsProvider>().dataAvailable;
    bool _apiDataLoaded =
        context.watch<RecentTransactionsProvider>().apiDataLoaded;
    bool _showAllTransactions =
        context.watch<RecentTransactionsProvider>().showAllTransactions;
    if (_apiDataLoaded == false) {
      // context.read<RecentTransactionsProvider>().setApiDataLoaded(true);
      context
          .read<RecentTransactionsProvider>()
          .getTransactionsData('Recent', '', context);
    }
    _transactionIdList =
        context.watch<RecentTransactionsProvider>().transactionIdList;
    _transactionTypeList =
        context.watch<RecentTransactionsProvider>().transactionTypeList;
    _transactionsDateList =
        context.watch<RecentTransactionsProvider>().transactionDateList;
    _transactionsAmountList =
        context.watch<RecentTransactionsProvider>().transactionAmountList;
    _transactionStatusList =
        context.watch<RecentTransactionsProvider>().transactionStatusList;
    _transactionDetailsDateList =
        context.watch<RecentTransactionsProvider>().transactionDetailsDateList;
    _transactionDetailsTimeList =
        context.watch<RecentTransactionsProvider>().transactionDetailsTimeList;
    _transactionEmpIdList =
        context.watch<RecentTransactionsProvider>().transactionEmpIdList;
    _transactionStanIdList =
        context.watch<RecentTransactionsProvider>().transactionStanIdList;
    _receivedTransactionList = context
        .watch<RecentTransactionsProvider>()
        .transactionReceivedAmountList;
    _transactionServiceChargesList =
        context.watch<RecentTransactionsProvider>().transactionChargesList;
    if (_transactionsDateList.length > 0) {
      if (_showAllTransactions == false) {
        if (_transactionsDateList.length < 6) {
          _transactionslength = _transactionsDateList.length;
        } else {
          _transactionslength = 5;
        }
      }
    }

    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        translateText('Recent_Transactions'),
                        textScaleFactor: 1,
                        style: appLanguage == 'ur'
                            ? GoogleFonts.notoNastaliqUrdu(
                                fontSize: shortestSide > 600 ? 14.sp : 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff1C1C1C))
                            : GoogleFonts.poppins(
                                fontSize: shortestSide > 600 ? 14.sp : 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff1C1C1C)),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        if (_showAllTransactions == true)
                          context
                              .read<RecentTransactionsProvider>()
                              .updateTransactionsList(false);
                        else
                          context
                              .read<RecentTransactionsProvider>()
                              .updateTransactionsList(true);
                      },
                      child: Padding(
                        padding: appLanguage == 'en'
                            ? EdgeInsets.fromLTRB(0, 0, 0, 0)
                            : EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          _showAllTransactions == false
                              ? translateText('See_All')
                              : translateText('See_Less'),
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 10.sp : 10,
                                  fontWeight: FontWeight.w500,
                                  color: greyColor,
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 10.sp : 12,
                                  fontWeight: FontWeight.w500,
                                  color: greyColor),
                        ),
                      ),
                    ),
                  ],
                ),
                CustomSizeBox(15),
                if (_showTransactions == true)
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                    child: Column(
                      children: [
                        // for (int a = 0;
                        //     (widget.enableseeall == true)
                        //         ? a < length
                        //         : a < length + 12;
                        //     a++)
                        ListView.builder(
                          itemCount: _showAllTransactions == true
                              ? _transactionsDateList.length
                              : _transactionslength,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () async {
                                Response? response;
                                var _userTransactionDetails = new Map();
                                if (_transactionTypeList[index]
                                    .contains('EZ Friend')) {
                                  _userTransactionDetails['Transaction_Type'] =
                                      TransactionType.EZFriend;
                                  response = await ApiFunctions().getRequest(
                                      'ezfriend/' +
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
                                } else if (_transactionTypeList[index]
                                    .contains('Mutual Fund')) {
                                  _userTransactionDetails['Transaction_Type'] =
                                      TransactionType.MutualFunds;
                                  response = await ApiFunctions().getRequest(
                                      'mutualfund/' +
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

                                if (_userTransactionDetails[
                                        'Transaction_Type'] ==
                                    TransactionType.PayrollFinance) {
                                  _userTransactionDetails['Bank_Name'] =
                                      decodedJson['results'][0]
                                              ['benificiary_bank_name']
                                          .toString();
                                  _userTransactionDetails['IBAN'] =
                                      decodedJson['results'][0]
                                              ['account_number_to']
                                          .toString();
                                } else if (_userTransactionDetails[
                                        'Transaction_Type'] ==
                                    TransactionType.EZFriend) {
                                  _userTransactionDetails['Bank_Name'] =
                                      decodedJson['results'][0]
                                              ['ez_friend_bank_name']
                                          .toString();
                                  _userTransactionDetails['IBAN'] =
                                      decodedJson['results'][0]
                                              ['ez_friend_account_number']
                                          .toString();
                                  _userTransactionDetails['Transfer_From'] =
                                      LoginModel.userName.toString();
                                  _userTransactionDetails['Transfer_To'] =
                                      decodedJson['results'][0]
                                              ['ez_friend_name']
                                          .toString();
                                  _userTransactionDetails[
                                          'EZ_Friends_Company'] =
                                      decodedJson['results'][0]
                                              ['ez_friend_company_name']
                                          .toString();
                                  _userTransactionDetails['CNIC'] =
                                      decodedJson['results'][0]
                                              ['ez_friend_cnic']
                                          .toString();
                                } else if (_userTransactionDetails[
                                        'Transaction_Type'] ==
                                    TransactionType.MutualFunds) {
                                  _userTransactionDetails['Bank_Name'] =
                                      decodedJson['results'][0]
                                              ['benificiary_bank_name']
                                          .toString();
                                  _userTransactionDetails['IBAN'] =
                                      decodedJson['results'][0]
                                              ['account_number_to']
                                          .toString();
                                  _userTransactionDetails['Transfer_From'] =
                                      LoginModel.userName.toString();
                                } else {
                                  _userTransactionDetails['Bank_Name'] =
                                      decodedJson['results'][0]
                                              ['benificiary_bank_name']
                                          .toString();
                                  _userTransactionDetails['IBAN'] =
                                      decodedJson['results'][0]
                                              ['account_number_to']
                                          .toString();
                                }
                                _userTransactionDetails['EmpID'] =
                                    _transactionEmpIdList[index].toString();
                                _userTransactionDetails['Amount'] =
                                    _transactionsAmountList[index].toString();
                                _userTransactionDetails['Received'] =
                                    _receivedTransactionList[index].toString();
                                _userTransactionDetails['Charges'] =
                                    _transactionServiceChargesList[index]
                                        .toString();
                                _userTransactionDetails['Date'] =
                                    _transactionDetailsDateList[index]
                                        .toString();
                                _userTransactionDetails['Time'] =
                                    _transactionDetailsTimeList[index]
                                        .toString();
                                _userTransactionDetails['Status'] =
                                    _transactionStatusList[index].toString();
                                _userTransactionDetails['Transaction_ID'] =
                                    _transactionStanIdList[index].toString();

                                navigateToTransactionDetailsScreen(
                                    context,
                                    _userTransactionDetails,
                                    'History',
                                    _userTransactionDetails[
                                        'Transaction_Type']);
                              },
                              child: Column(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 15, 0, 20),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: (appLanguage == 'ur')
                                                ? const EdgeInsets.only(
                                                    left: 15.0)
                                                : const EdgeInsets.all(0),
                                            child: Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(0.0),
                                                child: shortestSide > 600
                                                    ? Image.asset(
                                                        'assets/images/transactionicon.png',
                                                        height: 30.sp,
                                                        fit: BoxFit.fitHeight,
                                                      )
                                                    : Image.asset(
                                                        'assets/images/transactionicon.png',
                                                      ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 25.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                // CustomTextWidget(
                                                //     name, simpletextcolor, 12),
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
                                                CustomSizeBox(
                                                    appLanguage == 'en'
                                                        ? shortestSide > 600
                                                            ? 0
                                                            : 5
                                                        : 0),
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
                                                        )
                                                      ]),
                                                ),
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
                                                CustomSizeBox(
                                                    appLanguage == 'en'
                                                        ? 5
                                                        : 0),
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
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  datetextclr)
                                                      : GoogleFonts.workSans(
                                                          fontSize:
                                                              shortestSide > 600
                                                                  ? 10.sp
                                                                  : 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: datetextclr),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.navigate_next,
                                            color: Color(0xff00A2FF),
                                            size:
                                                shortestSide > 600 ? 20.sp : 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Divider(),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                if (_transactionsAvailale == false && _apiDataLoaded == true)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        translateText("Transaction's_History_not_Available"),
                        textScaleFactor: 1,
                        style: appLanguage == 'en'
                            ? GoogleFonts.poppins(color: Colors.black)
                            : GoogleFonts.notoNastaliqUrdu(color: Colors.black),
                      )
                    ],
                  ),
                if (_transactionsAvailale == false && _apiDataLoaded == false)
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.3,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
              ],
            ),
          ),
        ),
        // SizedBox(
        //   height: 130,
        // ),
      ],
    );
  }
}
