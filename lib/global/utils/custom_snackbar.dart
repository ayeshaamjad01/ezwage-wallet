import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomSnackBar extends StatelessWidget {
  bool okOperation = true;
  CustomSnackBar(this.okOperation);

  void showInSnackBar(String value, BuildContext conx) {
    ScaffoldMessenger.of(conx).removeCurrentSnackBar();
    var shortestSide = MediaQuery.of(conx).size.shortestSide;
    var CustomSnackBar = SnackBar(
        backgroundColor:
            okOperation == true ? blueColor : Color.fromRGBO(255, 3, 3, 0.8),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: shortestSide > 600
                    ? MediaQuery.of(conx).size.width - 48
                    : 300,
                child: Text(
                  value,
                  textAlign: TextAlign.center,
                  style: appLanguage == 'en'
                      ? GoogleFonts.poppins(
                          fontSize: shortestSide > 600 ? 10.sp : 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )
                      : GoogleFonts.notoNastaliqUrdu(
                          fontSize: shortestSide > 600 ? 9.sp : 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                  textScaleFactor: 1,
                )),
          ],
        ));
    ScaffoldMessenger.of(conx).showSnackBar(
      CustomSnackBar,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
