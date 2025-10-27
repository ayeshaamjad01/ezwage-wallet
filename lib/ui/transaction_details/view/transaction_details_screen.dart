import 'package:ezwage/ui/transaction_details/model/transaction_type.dart';
import 'package:ezwage/ui/transaction_details/view/transactions_details_view.dart';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../global/views/header.dart';

// ignore: must_be_immutable
class TransactionDetailsScreen extends StatefulWidget {
  var userTransactionDetails;
  String transactionDetailsType;
  TransactionType transactionType;
  TransactionDetailsScreen(this.userTransactionDetails,
      this.transactionDetailsType, this.transactionType);
  @override
  _TransactionDetailsScreenState createState() =>
      _TransactionDetailsScreenState();
}

class _TransactionDetailsScreenState extends State<TransactionDetailsScreen> {
  Future<bool> _willPopCalled() {
    if (widget.transactionDetailsType == 'History') {
      Navigator.pop(context);
    } else {
      navigateToCustomNavigationBar(context, 2);
    }
    throw '';
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return WillPopScope(
      onWillPop: _willPopCalled,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: shortestSide < 600
              ? Size.fromHeight(60.0)
              : Size.fromHeight(80.0),
          child: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.only(left: 0, right: 0),
              child: header(Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 35, 0, 20),
                    child: Stack(
                      children: [
                        Padding(
                          padding: appLanguage == 'en'
                              ? EdgeInsets.fromLTRB(
                                  shortestSide < 600 ? 10 : 30,
                                  shortestSide < 600 ? 0 : 15,
                                  0,
                                  0)
                              : EdgeInsets.fromLTRB(
                                  0, shortestSide < 600 ? 10 : 30, 10, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: backicon.withOpacity(0.2),
                                      width: 1),
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
                        ),
                        Center(
                          child: Text(
                            translateText('Transaction_Details'),
                            textScaleFactor: 1,
                            style: appLanguage == 'ur'
                                ? GoogleFonts.notoNastaliqUrdu(
                                    color: newblueColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: shortestSide > 600 ? 14.sp : 18)
                                : GoogleFonts.poppins(
                                    color: newblueColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: shortestSide > 600 ? 18.sp : 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider()
                ],
              )),
            ),
          ),
        ),
        //    translateText('Transaction_Details'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomSizeBox(30),
              TransactionDetailsView(
                  widget.userTransactionDetails, widget.transactionType),
            ],
          ),
        ),
      ),
    );
  }
}
