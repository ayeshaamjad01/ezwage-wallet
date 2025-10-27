import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailSentDialouge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                          'assets/images/email_sent_logo.svg')),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset(
                            'assets/images/dialog_close_button.svg')),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              translateText('Email_Sent'),
              style: appLanguage == 'en'
                  ? GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    )
                  : GoogleFonts.notoNastaliqUrdu(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                translateText('Your_Email_has_been_sent_successfully'),
                style: appLanguage == 'en'
                    ? GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff808080),
                      )
                    : GoogleFonts.notoNastaliqUrdu(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff808080),
                      ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              translateText('Our_team_will_get_back_to_you_shortly'),
              style: appLanguage == 'en'
                  ? GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808080),
                    )
                  : GoogleFonts.notoNastaliqUrdu(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808080),
                    ),
            ),
            if (appLanguage == 'en')
              SizedBox(
                height: 20,
              ),
            if (appLanguage == 'ur')
              SizedBox(
                width: 300,
                height: 20,
              ),
            Padding(
              padding: appLanguage == 'en'
                  ? EdgeInsets.fromLTRB(10, 10, 10, 40)
                  : EdgeInsets.fromLTRB(20, 10, 20, 40),
              child: ConstrainedBox(
                constraints:
                    BoxConstraints.tightFor(height: 55, width: double.infinity),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blueColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {
                      navigateToCustomNavigationBar(context, 2);
                    },
                    child: Text(translateText('Back_to_Home'),
                        style: appLanguage == 'en'
                            ? GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )
                            : GoogleFonts.notoNastaliqUrdu(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ))),
              ),
            ),
          ]),
    );
  }
}
