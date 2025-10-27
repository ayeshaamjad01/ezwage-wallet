import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/transaction_details/controller/transaction_button_provider.dart';
import 'package:ezwage/ui/transaction_details/model/transaction_type.dart';
import 'package:ezwage/ui/transaction_details/view/transaction_receipt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class TransactionDetailsView extends StatefulWidget {
  var userTransactionDetails;
  TransactionType transactionType;
  TransactionDetailsView(
    this.userTransactionDetails,
    this.transactionType,
  );
  @override
  _TransactionDetailsViewState createState() => _TransactionDetailsViewState();
}

class _TransactionDetailsViewState extends State<TransactionDetailsView> {
  @override
  void initState() {
    super.initState();
  }

  var formatter = NumberFormat('#,000.00');
  String? _userAmount;
  String? _transactionAmount;
  String? _chargesAmount;
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    if (double.parse(widget.userTransactionDetails['Amount']) > 99) {
      _transactionAmount = formatter
          .format(double.parse(widget.userTransactionDetails['Amount']));
    } else {
      _transactionAmount = double.parse(widget.userTransactionDetails['Amount'])
          .toStringAsFixed(2);
    }
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
    _transactionAmount == _userAmount
        ? _chargesAmount = '0.00'
        : _chargesAmount;
    var _transactionFieldList =
        widget.transactionType == TransactionType.SalaryWithdraw
            ? [
                translateText('Transaction_ID'),
                translateText('Employee_ID'),
                translateText('Amount_Received'),
                translateText('EZ_Wage_Charges'),
                translateText('Bank_Name'),
                translateText('IBAN_number'),
                translateText('Transaction_Date'),
                translateText('Transaction_Time'),
              ]
            : (widget.transactionType == TransactionType.PayrollFinance)
                ? [
                    translateText('Transaction_ID'),
                    translateText('Employee_ID'),
                    translateText('Amount_Received'),
                    translateText('EZ_Wage_Charges'),
                    translateText('Bank_Name'),
                    translateText('IBAN_number'),
                    translateText('Transaction_Date'),
                    translateText('Transaction_Time'),
                  ]
                : widget.transactionType == TransactionType.MutualFunds
                    ? [
                        translateText('Transfer_From'),
                        translateText('Transaction_ID'),
                        translateText('Transaction_Date'),
                        translateText('Transaction_Time'),
                        translateText('Amount_Sent'),
                        translateText('EZ_Wage_Charges'),
                        translateText('Plan_Name'),
                        translateText('Bank_Name'),
                        translateText('Account_Number'),
                      ]
                    : [
                        translateText('Transfer_From'),
                        translateText('Transfer_To'),
                        translateText('EZ_Friends_CNIC'),
                        translateText('EZ_Friends_Company'),
                        translateText('Transaction_ID'),
                        translateText('Employee_ID'),
                        translateText('Amount_Sent'),
                        translateText('EZ_Wage_Charges'),
                        translateText('Bank_Name'),
                        translateText('IBAN_number'),
                        translateText('Transaction_Date'),
                        translateText('Transaction_Time'),
                      ];
    var _transactionValueList =
        widget.transactionType == TransactionType.SalaryWithdraw
            ? [
                'EZ-' + widget.userTransactionDetails['Transaction_ID'],
                'EZ-' + widget.userTransactionDetails['EmpID'],
                'PKR ' + _userAmount.toString(),
                'PKR ' + _chargesAmount.toString(),
                widget.userTransactionDetails['Bank_Name'],
                widget.userTransactionDetails['IBAN'],
                widget.userTransactionDetails['Date'],
                widget.userTransactionDetails['Time'],
              ]
            : widget.transactionType == TransactionType.PayrollFinance
                ? [
                    'EZ-' + widget.userTransactionDetails['Transaction_ID'],
                    'EZ-' + widget.userTransactionDetails['EmpID'],
                    'PKR ' + _userAmount.toString(),
                    'PKR ' + _chargesAmount.toString(),
                    widget.userTransactionDetails['Bank_Name'],
                    widget.userTransactionDetails['IBAN'],
                    widget.userTransactionDetails['Date'],
                    widget.userTransactionDetails['Time'],
                  ]
                : widget.transactionType == TransactionType.MutualFunds
                    ? [
                        widget.userTransactionDetails['Transfer_From'],
                        'FT-' + widget.userTransactionDetails['Transaction_ID'],
                        widget.userTransactionDetails['Date'],
                        widget.userTransactionDetails['Time'],
                        'PKR ' + _userAmount.toString(),
                        'PKR ' + _chargesAmount.toString(),
                        'Multi Asset Fund',
                        widget.userTransactionDetails['Bank_Name'],
                        widget.userTransactionDetails['IBAN'],
                      ]
                    : [
                        widget.userTransactionDetails['Transfer_From'],
                        widget.userTransactionDetails['Transfer_To'],
                        widget.userTransactionDetails['CNIC'],
                        widget.userTransactionDetails['EZ_Friends_Company'],
                        'EZ-' + widget.userTransactionDetails['Transaction_ID'],
                        'EZ-' + widget.userTransactionDetails['EmpID'],
                        'PKR ' + _userAmount.toString(),
                        'PKR ' + _chargesAmount.toString(),
                        widget.userTransactionDetails['Bank_Name'],
                        widget.userTransactionDetails['IBAN'],
                        widget.userTransactionDetails['Date'],
                        widget.userTransactionDetails['Time'],
                      ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 2),
          child: Container(
            height: shortestSide > 600 ? 180.sp : 200,
            width: double.infinity,
            // color: checkedtextcolor,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/images/transaction_details_background.png',
              ),
              fit: BoxFit.fill,
            )),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [Spacer()],
                  ),
                  appLanguage == 'en' ? CustomSizeBox(50) : CustomSizeBox(20),
                  RichText(
                      textScaleFactor: 1,
                      text: TextSpan(
                          text: translateText("Transaction") + " ",
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 12.sp : 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 12.sp : 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                              text: widget.userTransactionDetails['Status'] ==
                                      'Successful'
                                  ? translateText("Successful")
                                  : widget.userTransactionDetails['Status'] ==
                                          'In Review'
                                      ? translateText("Pending")
                                      : widget.userTransactionDetails[
                                                  'Status'] ==
                                              'Rejected'
                                          ? translateText("Rejected")
                                          : translateText("Failed"),
                              style: appLanguage == 'ur'
                                  ? GoogleFonts.notoNastaliqUrdu(
                                      fontSize: shortestSide > 600 ? 12.sp : 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    )
                                  : GoogleFonts.poppins(
                                      fontSize: shortestSide > 600 ? 12.sp : 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                            ),
                          ])),
                  Text(
                    "PKR " + _transactionAmount.toString(),
                    textScaleFactor: 1,
                    style: appLanguage == 'ur'
                        ? GoogleFonts.notoNastaliqUrdu(
                            fontSize: shortestSide > 600 ? 25.sp : 28,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          )
                        : GoogleFonts.poppins(
                            fontSize: shortestSide > 600 ? 25.sp : 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                  ),
                  appLanguage == 'en' ? CustomSizeBox(50) : CustomSizeBox(10),
                ],
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                child: Container(
                  width: double.infinity,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                            translateText('Transaction_Details')
                                .toString()
                                .toUpperCase(),
                            textScaleFactor: 1,
                            style: appLanguage == 'ur'
                                ? GoogleFonts.notoNastaliqUrdu(
                                    fontSize: shortestSide > 600 ? 12.sp : 14,
                                    fontWeight: FontWeight.w500,
                                    color: blueColor,
                                  )
                                : GoogleFonts.poppins(
                                    fontSize: shortestSide > 600 ? 14.sp : 16,
                                    fontWeight: FontWeight.w500,
                                    color: blueColor),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(25, 15, 25, 10),
                            child: DottedLine(
                              dashColor: backicon,
                              lineThickness: shortestSide > 600 ? 0.5.sp : 0.5,
                            )),
                        ListView.builder(
                            itemCount: _transactionFieldList.length,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  if (index == 6 &&
                                      widget.transactionType ==
                                          TransactionType.MutualFunds)
                                    Padding(
                                      padding: appLanguage == 'en'
                                          ? EdgeInsets.fromLTRB(
                                              shortestSide > 600 ? 12.sp : 25,
                                              shortestSide > 600 ? 5.sp : 10,
                                              0,
                                              5)
                                          : EdgeInsets.fromLTRB(
                                              0,
                                              shortestSide > 600
                                                  ? 5.sp
                                                  : widget.transactionType ==
                                                          TransactionType
                                                              .EZFriend
                                                      ? 5
                                                      : 10,
                                              shortestSide > 600 ? 12.sp : 25,
                                              5),
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
                                                  fontSize: shortestSide > 600
                                                      ? 10.sp
                                                      : 10,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xff3E3E3E))
                                              : GoogleFonts.poppins(
                                                  fontSize: shortestSide > 600
                                                      ? 12.sp
                                                      : 12,
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
                                                  shortestSide > 600
                                                      ? 12.sp
                                                      : 25,
                                                  shortestSide > 600
                                                      ? 5.sp
                                                      : 10,
                                                  0,
                                                  0)
                                              : EdgeInsets.fromLTRB(
                                                  0,
                                                  shortestSide > 600
                                                      ? 5.sp
                                                      : widget.transactionType ==
                                                              TransactionType
                                                                  .EZFriend
                                                          ? 5
                                                          : 10,
                                                  shortestSide > 600
                                                      ? 12.sp
                                                      : 25,
                                                  0),
                                          child: Text(
                                            _transactionFieldList[index],
                                            textScaleFactor: 1,
                                            textAlign: appLanguage == 'en'
                                                ? TextAlign.left
                                                : TextAlign.right,
                                            style: appLanguage == 'ur'
                                                ? GoogleFonts.notoNastaliqUrdu(
                                                    fontSize: shortestSide > 600
                                                        ? 10.sp
                                                        : 10,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xff3E3E3E))
                                                : GoogleFonts.poppins(
                                                    fontSize: shortestSide > 600
                                                        ? 12.sp
                                                        : 12,
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
                                              ? EdgeInsets.fromLTRB(
                                                  0,
                                                  10,
                                                  shortestSide > 600
                                                      ? 12.sp
                                                      : 20,
                                                  0)
                                              : EdgeInsets.fromLTRB(
                                                  5, 10, 10, 0),
                                          child: Text(
                                            _transactionValueList[index]
                                                .toString(),
                                            textScaleFactor: 1,
                                            textAlign: TextAlign.right,
                                            style: GoogleFonts.poppins(
                                                fontSize: shortestSide > 600
                                                    ? 12.sp
                                                    : 12,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff3E3E3E)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  if (index != _transactionFieldList.length - 1)
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          0,
                                          widget.transactionType ==
                                                      TransactionType
                                                          .EZFriend ||
                                                  widget.transactionType ==
                                                      TransactionType
                                                          .MutualFunds
                                              ? 5
                                              : 10,
                                          0,
                                          0),
                                    ),
                                ],
                              );
                            }),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              CustomSizeBox(20),
              ChangeNotifierProvider<TransactionButtonProvider>(
                  create: (_) => TransactionButtonProvider(),
                  child: TransactionReceipt(widget.userTransactionDetails,
                      context, widget.transactionType)),
              CustomSizeBox(115),
            ],
          ),
        ),
      ],
    );
  }
}
