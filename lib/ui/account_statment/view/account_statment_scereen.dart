import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../global/models/app_language.dart';
import '../../../global/navigations/navigate_bottom_bar.dart';
import '../../../global/utils/colors.dart';
import '../../../helper/application_dictionary.dart';
import 'account_statment_view.dart';

class AccountStatementScreen extends StatefulWidget {
  const AccountStatementScreen({Key? key}) : super(key: key);

  @override
  State<AccountStatementScreen> createState() => _AccountStatementScreenState();
}

class _AccountStatementScreenState extends State<AccountStatementScreen> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSizeBox(20.h),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15.h, 0, 0),
              child: Stack(
                children: [
                  Padding(
                    padding: appLanguage == 'en'
                        ? EdgeInsets.fromLTRB(shortestSide < 600 ? 20 : 30,
                            shortestSide < 600 ? 0 : 12, 0, 0)
                        : EdgeInsets.fromLTRB(0, 10, 20, 0),
                    child: GestureDetector(
                      onTap: () {
                        navigateToCustomNavigationBar(context, 2);
                      },
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
                  Center(
                    child: Text(
                      translateText('Account_Statment'),
                      textScaleFactor: 1,
                      style: appLanguage == 'ur'
                          ? GoogleFonts.notoNastaliqUrdu(
                              color: blueColor,
                              fontWeight: FontWeight.w500,
                              fontSize: shortestSide > 600 ? 16.sp : 18)
                          : GoogleFonts.poppins(
                              color: blueColor,
                              fontWeight: FontWeight.w500,
                              fontSize: shortestSide > 600 ? 18.sp : 20),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Divider(),
            ),
            Expanded(child: AccountStatmentView())
          ],
        ),
      ),
    );
  }
}
