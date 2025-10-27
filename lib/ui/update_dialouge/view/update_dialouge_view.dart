import 'dart:io';

import 'package:ezwage/global/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_redirect/store_redirect.dart';

class UpdateDialougeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        content: SizedBox(
          // width: 450,
          height: 260,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 31, 0, 0),
                  child: Text(
                    'Update Required',
                    textScaleFactor: 1,
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Text(
                    Platform.isIOS == true
                        ? 'Please update EZ Wage from apple app store'
                        : 'Please update EZ Wage from google play store',
                    textScaleFactor: 1,
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        StoreRedirect.redirect(
                            androidAppId: "com.ezwage.employee",
                            iOSAppId: "1636626701");
                      },
                      child: Text(
                        'Update',
                        textScaleFactor: 1,
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: blueColor),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
