import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ComingSoonScreen extends StatelessWidget {
  int index;
  ComingSoonScreen(this.index);
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
                onTap: () {
                  navigateToCustomNavigationBar(context, index);
                },
                child: Align(
                  alignment: appLanguage == 'en'
                      ? Alignment.topLeft
                      : Alignment.topRight,
                  child: Padding(
                    padding: appLanguage == 'en'
                        ? EdgeInsets.fromLTRB(shortestSide < 600 ? 20 : 30,
                            shortestSide < 600 ? 20 : 52, 0, 0)
                        : EdgeInsets.fromLTRB(0, 28, 20, 0),
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
                )),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Text(
                      'Coming Soon',
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
                  SizedBox(
                    height: 37,
                  ),
                  SizedBox(
                    width: 244,
                    child: Text(
                      'Stay Tuned For Amazing Features...',
                      textScaleFactor: 1,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
