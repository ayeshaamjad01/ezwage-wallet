import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/drawer/biometric_settings_provider.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class BiometricSettingsDialouge extends StatelessWidget {
  bool touchId = false;
  BiometricSettingsDialouge(this.touchId);
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
                      child: SvgPicture.asset(touchId == true
                          ? 'assets/images/touch_id_icon.svg'
                          : 'assets/images/face_id_icon.svg')),
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
            SizedBox(
              width: 170,
              child: Text(
                translateText(touchId == true
                    ? 'Sign_in_with_you_fingerprint'
                    : 'Sign_in_with_you_faceid'),
                    textScaleFactor: 1,
                textAlign: TextAlign.center,
                style: appLanguage == 'en'
                    ? GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff00A2FF),
                      )
                    : GoogleFonts.notoNastaliqUrdu(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff00A2FF),
                      ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 228,
              child: Text(
                translateText(touchId == true
                    ? 'Use_your_fingerprint'
                    : 'Use_your_faceid'),
                    textScaleFactor: 1,
                textAlign: TextAlign.center,
                style: appLanguage == 'en'
                    ? GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff030319),
                      )
                    : GoogleFonts.notoNastaliqUrdu(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff030319),
                      ),
              ),
            ),
            if (appLanguage == 'en')
              SizedBox(
                height: 20,
                width: 300,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(height: 39, width: 105),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: whiteColor,
                          side: const BorderSide(
                            width: 1.0,
                            color: Color.fromRGBO(0, 0, 0, 0.2),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(translateText('Deny'),
                        textScaleFactor: 1,
                            style: appLanguage == 'en'
                                ? GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)
                                : GoogleFonts.notoNastaliqUrdu(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black))),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(height: 39, width: 105),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: blueColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () async {
                          bool authenticated = false;
                          final LocalAuthentication auth =
                              LocalAuthentication();
                          authenticated = await auth.authenticate(
                            localizedReason:
                                'Use for allow biometric authentication',
                            options: const AuthenticationOptions(
                              useErrorDialogs: true,
                              stickyAuth: true,
                            ),
                          );
                          if (authenticated == true) {
                            if (touchId == true) {
                              context
                                  .read<BiometricSettingsProivder>()
                                  .setFingerPrintSwitchValue(true);
                            } else {
                              context
                                  .read<BiometricSettingsProivder>()
                                  .setFaceIdSwitchValue(true);
                            }
                            navigateToCustomNavigationBar(context, 2);
                          }
                        },
                        child: Text(translateText('Allow'),
                        textScaleFactor: 1,
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
                ],
              ),
            ),
          ]),
    );
  }
}
