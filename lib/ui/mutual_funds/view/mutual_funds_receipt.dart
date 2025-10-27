import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/transaction_details/controller/transaction_button_provider.dart';
import 'package:ezwage/ui/transaction_details/model/transaction_type.dart';
import 'package:ezwage/ui/transaction_details/view/transaction_receipt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MutualFundsReceipt extends StatefulWidget {
  var userTransactionDetails;
  MutualFundsReceipt(this.userTransactionDetails);

  @override
  State<MutualFundsReceipt> createState() => _MutualFundsReceiptState();
}

class _MutualFundsReceiptState extends State<MutualFundsReceipt> {
  var formatter = NumberFormat('#,000.00');

  String? _userAmount;

  String? _chargesAmount;
  Future<bool> _willPopCalled() {
    navigateToCustomNavigationBar(context, 2);
    throw '';
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    if (double.parse(widget.userTransactionDetails['Received']) > 99) {
      _userAmount = formatter
          .format(double.parse(widget.userTransactionDetails['Received']));
    } else {
      _userAmount = double.parse(widget.userTransactionDetails['Received'])
          .toStringAsFixed(2);
    }
    if (double.parse(widget.userTransactionDetails['Charges']) > 99) {
      _chargesAmount = formatter
          .format(double.parse(widget.userTransactionDetails['Charges']));
    } else {
      _chargesAmount = double.parse(widget.userTransactionDetails['Charges'])
          .toStringAsFixed(2);
    }
    var _transactionFieldList = [
      translateText('Transfer_From'),
      translateText('Transaction_ID'),
      translateText('Transaction_Date'),
      translateText('Transaction_Time'),
      translateText('Amount_Sent'),
      translateText('EZ_Wage_Charges'),
      translateText('Plan_Name'),
      translateText('Bank_Name'),
      translateText('Account_Number'),
    ];
    var _transactionValueList = [
      widget.userTransactionDetails['Transfer_From'],
      'FT-' + widget.userTransactionDetails['Transaction_ID'],
      widget.userTransactionDetails['Date'],
      widget.userTransactionDetails['Time'],
      'PKR ' + _userAmount.toString(),
      'PKR ' + _chargesAmount.toString(),
      'Multi Asset Fund',
      widget.userTransactionDetails['Bank_Name'],
      widget.userTransactionDetails['IBAN'],
    ];

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(shortestSide < 600 ? 100 : 68.sp),
        child: Column(
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    navigateToCustomNavigationBar(context, 2);
                  },
                  child: Align(
                    alignment: appLanguage == 'en'
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    child: Padding(
                      padding: appLanguage == 'en'
                          ? EdgeInsets.fromLTRB(shortestSide < 600 ? 20 : 30,
                              shortestSide < 600 ? 40 : 40, 0, 0)
                          : EdgeInsets.fromLTRB(0, 35, 20, 0),
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
                              : EdgeInsets.only(right: 10.0, top: 3, bottom: 3),
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
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Text(
                      'Receipt',
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
      body: WillPopScope(
        onWillPop: _willPopCalled,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/Mutual_Donation.png',
                width: 170,
                height: 170,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Funds Transferred to \n',
                      style: GoogleFonts.poppins(
                          color: Color.fromRGBO(28, 28, 28, 0.9),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                          text: 'Multi Asset Fund',
                          style: GoogleFonts.poppins(
                              color: Color(0xff00A2FF),
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        )
                      ])),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                  itemCount: _transactionFieldList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        if (index == 6)
                          Padding(
                            padding: appLanguage == 'en'
                                ? EdgeInsets.fromLTRB(
                                    shortestSide > 600 ? 12.sp : 25,
                                    shortestSide > 600 ? 5.sp : 10,
                                    0,
                                    0)
                                : EdgeInsets.fromLTRB(
                                    0,
                                    shortestSide > 600 ? 5.sp : 10,
                                    shortestSide > 600 ? 12.sp : 25,
                                    0),
                            child: Align(
                              alignment: appLanguage == 'en'
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                              child: Text(
                                translateText(
                                  'Fund_Investment_Details',
                                ),
                                textScaleFactor: 1,
                                style: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        fontSize:
                                            shortestSide > 600 ? 10.sp : 10,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff3E3E3E))
                                    : GoogleFonts.poppins(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff3E3E3E)),
                              ),
                            ),
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Padding(
                                padding: appLanguage == 'en'
                                    ? EdgeInsets.fromLTRB(
                                        shortestSide > 600 ? 12.sp : 25,
                                        shortestSide > 600 ? 5.sp : 10,
                                        0,
                                        0)
                                    : EdgeInsets.fromLTRB(
                                        0,
                                        shortestSide > 600 ? 5.sp : 10,
                                        shortestSide > 600 ? 12.sp : 25,
                                        0),
                                child: Text(
                                  _transactionFieldList[index],
                                  textScaleFactor: 1,
                                  textAlign: appLanguage == 'en'
                                      ? TextAlign.left
                                      : TextAlign.right,
                                  style: appLanguage == 'ur'
                                      ? GoogleFonts.notoNastaliqUrdu(
                                          fontSize:
                                              shortestSide > 600 ? 10.sp : 10,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff3E3E3E))
                                      : GoogleFonts.poppins(
                                          fontSize:
                                              shortestSide > 600 ? 12.sp : 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff3E3E3E)),
                                ),
                              ),
                            ),
                            // Spacer(),
                            Expanded(
                              flex: 5,
                              child: Padding(
                                padding: appLanguage == 'en'
                                    ? EdgeInsets.fromLTRB(0, 10,
                                        shortestSide > 600 ? 12.sp : 20, 0)
                                    : EdgeInsets.fromLTRB(5, 10, 10, 0),
                                child: Text(
                                  _transactionValueList[index].toString(),
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                      fontSize: shortestSide > 600 ? 12.sp : 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff3E3E3E)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    );
                  }),
              SizedBox(
                height: 40,
              ),
              ChangeNotifierProvider<TransactionButtonProvider>(
                  create: (_) => TransactionButtonProvider(),
                  child: TransactionReceipt(widget.userTransactionDetails,
                      context, TransactionType.MutualFunds)),
              SizedBox(
                height: 115,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
