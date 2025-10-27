import 'dart:io';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/forget_password/controller/change_password_controller.dart';
import 'package:ezwage/ui/forget_password/model/forgot_password_phone_field_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ForgotPasswordPhonefield extends StatelessWidget {
  var keyboardPlatform;
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS == true) {
      keyboardPlatform =
          TextInputType.numberWithOptions(signed: true, decimal: true);
    } else {
      keyboardPlatform = TextInputType.number;
    }
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: appLanguage == 'en'
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: Text(
              translateText('Forgot_Password?'),
              style: appLanguage == 'en'
                  ? GoogleFonts.poppins(
                      fontSize: 24 / MediaQuery.of(context).textScaleFactor * 1,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffDB1695))
                  : GoogleFonts.notoNastaliqUrdu(
                      fontSize: 22 / MediaQuery.of(context).textScaleFactor * 1,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffDB1695)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            translateText(
                'Don’t_worry_It_happens_Please_enter_the_phone_number_we_will_send_the_OTP_in_this_phone_number'),
            textAlign: appLanguage == 'en' ? TextAlign.left : TextAlign.right,
            style: appLanguage == 'en'
                ? GoogleFonts.poppins(
                    fontSize: 12 / MediaQuery.of(context).textScaleFactor * 1,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff5B5858))
                : GoogleFonts.notoNastaliqUrdu(
                    fontSize: 10 / MediaQuery.of(context).textScaleFactor * 1,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff5B5858)),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 8, 8, 8),
          child: Align(
            alignment: appLanguage == 'en'
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: Text(
              translateText('Phone_Number'),
              style: appLanguage == 'en'
                  ? GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16 / MediaQuery.of(context).textScaleFactor * 1)
                  : GoogleFonts.notoNastaliqUrdu(
                      fontWeight: FontWeight.w500,
                      fontSize:
                          14 / MediaQuery.of(context).textScaleFactor * 1),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 30),
          child: Neumorphic(
            // margin:
            //     EdgeInsets.only(left: 1, right: 0, top: 1, bottom: 0),
            style: NeumorphicStyle(
                color: Color.fromARGB(255, 168, 166, 166),
                depth: NeumorphicTheme.embossDepth(context),
                intensity: 0.6,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
            child: TextFormField(
              enableInteractiveSelection: false,
              maxLength: 15,
              controller: phoneFieldTextController,
              onChanged: (value) {
                if (value.length > 0) {
                  context
                      .read<ChangePasswordProvider>()
                      .setPhoneFieldButtonStatus(true);
                } else {
                  context
                      .read<ChangePasswordProvider>()
                      .setPhoneFieldButtonStatus(false);
                }
              },
              style: GoogleFonts.poppins(
                fontSize: 12 / MediaQuery.of(context).textScaleFactor * 1,
                fontWeight: FontWeight.w400,
              ),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              keyboardType: keyboardPlatform,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                counterText: '',
                hintText: translateText('Enter_your_phone_number'),
                contentPadding: EdgeInsets.all(20.0),
                hintStyle: appLanguage == 'en'
                    ? GoogleFonts.poppins(
                        fontSize:
                            12 / MediaQuery.of(context).textScaleFactor * 1,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff97ADB6))
                    : GoogleFonts.notoNastaliqUrdu(
                        fontSize:
                            10 / MediaQuery.of(context).textScaleFactor * 1,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff97ADB6)),
                filled: true,
                fillColor: Color(0xffF6F6F6),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Color(0xffF6F6F6))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Color(0xffF6F6F6))),
              ),
            ),
          ),
        ),
        if (phoneFieldValidatorController.text != '')
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 10, 20),
            child: Align(
              alignment: appLanguage == 'en'
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              child: Text(
                phoneFieldValidatorController.text,
                textAlign:
                    appLanguage == 'en' ? TextAlign.left : TextAlign.right,
                style: appLanguage == 'en'
                    ? GoogleFonts.poppins(fontSize: 12, color: Colors.red)
                    : GoogleFonts.notoNastaliqUrdu(
                        fontSize: 10, color: Colors.red),
              ),
            ),
          )
      ],
    );
  }
}
