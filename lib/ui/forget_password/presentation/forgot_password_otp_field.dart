import 'dart:async';
import 'dart:io';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/forget_password/controller/change_password_controller.dart';
import 'package:ezwage/ui/forget_password/model/otp_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ForgotPasswordOTPField extends StatefulWidget {
  @override
  State<ForgotPasswordOTPField> createState() => _ForgotPasswordOTPFieldState();
}

class _ForgotPasswordOTPFieldState extends State<ForgotPasswordOTPField> {
  var keyboardPlatform;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      context.read<ChangePasswordProvider>().setOtpTime(120, context);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS == true) {
      keyboardPlatform =
          TextInputType.numberWithOptions(signed: true, decimal: true);
    } else {
      keyboardPlatform = TextInputType.number;
    }

    int _otpTime = context.watch<ChangePasswordProvider>().otpTime;
    String _otpErrorMessage =
        context.watch<ChangePasswordProvider>().otpErrorMessage;
    return Column(
      children: [
        SizedBox(
          height: 10,
          width: 400,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: appLanguage == 'en'
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: Text(
              translateText('OTP_Verification'),
              textScaleFactor: 1,
              style: appLanguage == 'en'
                  ? GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffDB1695))
                  : GoogleFonts.notoNastaliqUrdu(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffDB1695)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: appLanguage == 'en'
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: appLanguage == 'en'
                ? RichText(
                    textScaleFactor: 1,
                    text: TextSpan(
                        text: translateText('Enter_the_OTP_sent_to'),
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5B5858)),
                        children: <TextSpan>[
                          TextSpan(
                            text: OtpModel.phoneNumber,
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff5B5858)),
                          )
                        ]))
                : RichText(
                    textScaleFactor: 1,
                    textAlign: TextAlign.right,
                    text: TextSpan(
                        text: OtpModel.phoneNumber.toString().substring(1) +
                            '+\n',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5B5858)),
                        children: <TextSpan>[
                          TextSpan(
                            text: translateText('Enter_the_OTP_sent_to'),
                            style: GoogleFonts.notoNastaliqUrdu(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff5B5858)),
                          ),
                        ])),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: PinCodeTextField(
            length: 4,
            obscureText: true,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            animationType: AnimationType.fade,
            // boxShadows: [
            //   BoxShadow(
            //     color: Colors.black26,
            //     blurRadius: 2.0,
            //     offset: const Offset(0.0, 3.0),
            //   ),
            // ],
            autoDismissKeyboard: true,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(10),
              fieldHeight: 50,
              fieldWidth: 50,
              disabledColor: Colors.white,
              activeFillColor: Colors.white,
              inactiveColor: Colors.grey,
              selectedColor: Colors.grey,
              inactiveFillColor: Colors.white,
              selectedFillColor: Colors.white,
              borderWidth: 1,
            ),
            animationDuration: Duration(milliseconds: 300),
            backgroundColor: Colors.transparent,
            enableActiveFill: true,
            cursorColor: simpletextColor,
            onCompleted: (value) {
              OtpModel.otpPin = value;
              if (_otpTime > 0)
                context.read<ChangePasswordProvider>().setOtpButtonStatus(true);
            },
            onChanged: (value) {
              if (value.length < 4)
                context
                    .read<ChangePasswordProvider>()
                    .setOtpButtonStatus(false);
            },
            beforeTextPaste: (text) {
              return true;
            },
            appContext: context,
          ),
        ),
        if (_otpErrorMessage != '')
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  _otpErrorMessage.toString(),
                  textScaleFactor: 1,
                  style: appLanguage == 'en'
                      ? GoogleFonts.poppins(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)
                      : GoogleFonts.notoNastaliqUrdu(
                          color: Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              appLanguage == 'en'
                  ? _otpTime.toString() + ' ' + translateText('Sec')
                  : _otpTime.toString() + '   ' + translateText('Sec'),
              textScaleFactor: 1,
              style: appLanguage == 'en'
                  ? GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff464646))
                  : GoogleFonts.notoNastaliqUrdu(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff464646)),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              translateText('Don’t_receive_code'),
              textScaleFactor: 1,
              style: appLanguage == 'en'
                  ? GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5A5A5A))
                  : GoogleFonts.notoNastaliqUrdu(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5A5A5A)),
            ),
            GestureDetector(
              onTap: () {
                context.read<ChangePasswordProvider>().setOtpTime(120, context);
                context.read<ChangePasswordProvider>().resendOtpCode(context);
              },
              child: Text(
                translateText('Re-send'),
                textScaleFactor: 1,
                style: appLanguage == 'en'
                    ? GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5A5A5A))
                    : GoogleFonts.notoNastaliqUrdu(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5A5A5A)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
