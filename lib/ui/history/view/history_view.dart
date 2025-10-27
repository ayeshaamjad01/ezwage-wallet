import 'package:ezwage/ui/history/view/all_transactions_history.dart';
import 'package:ezwage/ui/recent_transactions/controller/recent_transactions_provider.dart';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/history/view/pending_transactions_history.dart';
import 'package:ezwage/ui/history/view/successful_transactions_history.dart';
import 'package:ezwage/ui/history/view/unsuccessful_transactions_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  _historyviewState createState() => _historyviewState();
}

class _historyviewState extends State<HistoryView> {
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
    if (_apiDataLoaded == false) {
      context
          .read<RecentTransactionsProvider>()
          .getTransactionsData('History', '', context);
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

    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          if (_showTransactions == true)
            DefaultTabController(
              length: 4,
              initialIndex: 0,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Color(0xffE1E1E1), width: 2)),
                      ),
                      child: TabBar(
                        indicatorColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.blue,
                        padding: EdgeInsets.zero,
                        labelStyle: appLanguage == 'ur'
                            ? GoogleFonts.notoNastaliqUrdu(
                                fontSize: shortestSide > 600 ? 8.sp : 8,
                              )
                            : GoogleFonts.poppins(
                                fontSize: shortestSide > 600 ? 8.sp : 10,
                                fontWeight: FontWeight.w500),
                        tabs: [
                          Tab(
                            child: Text(
                              translateText('All'),
                              textScaleFactor: 1,
                            ),
                          ),
                          Tab(
                            child: Text(
                              translateText('Successful'),
                              textScaleFactor: 1,
                            ),
                          ),
                          Tab(
                            child: Text(
                              translateText('Failed'),
                              textScaleFactor: 1,
                            ),
                          ),
                          Tab(
                            child: Text(
                              translateText('Pending'),
                              textScaleFactor: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: TabBarView(
                        children: [
                          AllTransacyionsHistory(
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
                              _receivedTransactionList,
                              _transactionServiceChargesList,
                              _transactionIdList,
                              _transactionTypeList),
                          SuccessfulTransactionsHistory(
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
                              _receivedTransactionList,
                              _transactionServiceChargesList,
                              _transactionIdList,
                              _transactionTypeList),
                          UnsuccessfulTransactionsHistory(
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
                              _receivedTransactionList,
                              _transactionServiceChargesList,
                              _transactionIdList,
                              _transactionTypeList),
                          PendingTransacyionsHistory(
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
                              _receivedTransactionList,
                              _transactionServiceChargesList,
                              _transactionIdList,
                              _transactionTypeList),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (_showTransactions == false && _apiDataLoaded == true)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                ),
                Text(
                  translateText("Transaction's_History_not_Available"),
                  textScaleFactor: 1,
                  style: appLanguage == 'en'
                      ? GoogleFonts.poppins(color: Colors.black)
                      : GoogleFonts.notoNastaliqUrdu(color: Colors.black),
                )
              ],
            ),
          if (_showTransactions == false && _apiDataLoaded == false)
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.3,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
