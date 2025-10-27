import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/authentication/controller/correct_phone_field.dart';
import 'package:ezwage/ui/forget_password/controller/change_password_controller.dart';
import 'package:ezwage/ui/forget_password/model/forgot_password_phone_field_model.dart';
import 'package:ezwage/ui/forget_password/model/otp_model.dart';
import 'package:ezwage/ui/forget_password/presentation/forgot_password_change_password_field.dart';
import 'package:ezwage/ui/forget_password/presentation/forgot_password_otp_field.dart';
import 'package:ezwage/ui/forget_password/presentation/forgot_password_phone_field.dart';
import 'package:ezwage/ui/settings/model/settings_change_password_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ChangePasswordScreenDiaglog extends StatefulWidget {
  bool allowTypeChange;
  ChangePasswordScreenDiaglog(this.allowTypeChange);

  @override
  State<ChangePasswordScreenDiaglog> createState() =>
      _ChangePasswordScreenDiaglogState();
}

class _ChangePasswordScreenDiaglogState
    extends State<ChangePasswordScreenDiaglog> {
  bool? _submissionProcess;

  String? _currentScreenType;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      if (widget.allowTypeChange == true) {
        context.read<ChangePasswordProvider>().changeScreenStatus('OTP');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _submissionProcess =
        context.watch<ChangePasswordProvider>().submissionProcess;
    _currentScreenType =
        context.watch<ChangePasswordProvider>().currentScreenType;
    bool _phoneFieldButtonStatus =
        context.watch<ChangePasswordProvider>().allowPhoneFieldButton;
    bool _otpFieldButtonStatus =
        context.watch<ChangePasswordProvider>().allowOtpFieldButton;
    bool _changePasswordFieldButtonStatus =
        context.watch<ChangePasswordProvider>().allowChangePasswordButton;
    Color _getCurrentButtonColor =
        context.watch<ChangePasswordProvider>().getElevateButtonColor();

    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                  onTap: () {
                    if (globalTimer != null) globalTimer!.cancel();
                    phoneFieldTextController.text = '';
                    for (int i = 0; i < 2; i++) {
                      forgotChangePasswordController[i].text = '';
                    }
                    Navigator.pop(context);
                    passwordFieldValidatorController.text = '';
                    phoneFieldValidatorController.text = '';
                  },
                  child: SvgPicture.asset(
                      'assets/images/dialog_close_button.svg'))),
          if (_currentScreenType == 'Forgot') ForgotPasswordPhonefield(),
          if (_currentScreenType == 'Change')
            ForgotPasswordChangePasswordField(),
          if (_currentScreenType == 'OTP') ForgotPasswordOTPField(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 40),
              child: ConstrainedBox(
                constraints:
                    BoxConstraints.tightFor(height: 55, width: double.infinity),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _getCurrentButtonColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {
                      if (_currentScreenType == 'Forgot' &&
                          _phoneFieldButtonStatus == true &&
                          _submissionProcess == false) {
                        if (phoneFieldTextController.text.length > 10) {
                          String setForgotPhoneNumber =
                              correctPhoneNumber(phoneFieldTextController.text);
                          if (appLanguage == 'ur') {
                            OtpModel.phoneNumber = setForgotPhoneNumber[
                                    setForgotPhoneNumber.length - 1] +
                                setForgotPhoneNumber.substring(
                                    0, setForgotPhoneNumber.length - 1);
                          } else {
                            OtpModel.phoneNumber = setForgotPhoneNumber;
                          }
                          context
                              .read<ChangePasswordProvider>()
                              .setSubmissionProcess(true);
                          context
                              .read<ChangePasswordProvider>()
                              .verifyPhoneNumber(context);
                        } else {
                          context
                              .read<ChangePasswordProvider>()
                              .setPasswordValidator(translateText(
                                  'Type_your_complete_phone_number'));

                          // CustomSnackBar().showInSnackBar(
                          //     translateText(
                          //             'Type_your_complete_phone_number']
                          //         .toString(),
                          //     context);
                        }
                      } else if (_currentScreenType == 'Change' &&
                          _changePasswordFieldButtonStatus == true) {
                        if (forgotChangePasswordController[0].text ==
                            forgotChangePasswordController[1].text) {
                          if (RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&.#])[A-Za-z\d@$!%*?&.#]{8,20}$")
                                  .hasMatch(
                                      forgotChangePasswordController[1].text) ==
                              true) {
                            context
                                .read<ChangePasswordProvider>()
                                .changeScreenStatus('OTP');
                            OtpModel.changePassword =
                                forgotChangePasswordController[1].text;
                          } else {
                            context
                                .read<ChangePasswordProvider>()
                                .setPasswordValidator(appDictionary[
                                            appLanguage]![
                                        'Password_at_least_8_characters_with_1_Capital_Letter_and_1_Number']
                                    .toString());
                            // CustomSnackBar().showInSnackBar(
                            //     translateText(
                            //             'Password_at_least_8_characters_with_1_Capital_Letter_and_1_Number']
                            //         .toString(),
                            //     context);
                          }
                        } else {
                          context
                              .read<ChangePasswordProvider>()
                              .setPasswordValidator(
                                  translateText("Both_Passowrds_don't_match"));
                          // CustomSnackBar().showInSnackBar(
                          //     translateText(
                          //             "Both_Passowrds_don't_match"),
                          //     context);
                        }
                      } else if (_currentScreenType == 'OTP' &&
                          _otpFieldButtonStatus == true &&
                          _submissionProcess == false) {
                        context
                            .read<ChangePasswordProvider>()
                            .setSubmissionProcess(true);
                        phoneFieldTextController.text = '';
                        for (int i = 0; i < 2; i++) {
                          forgotChangePasswordController[i].text = '';
                        }
                        for (int i = 0;
                            i < settingChangePasswordTextfield.length;
                            i++) settingChangePasswordTextfield[i].text = '';
                        context
                            .read<ChangePasswordProvider>()
                            .sendOtpRequest(context);
                      }
                    },
                    child: _submissionProcess == false
                        ? Text(
                            _currentScreenType == 'OTP'
                                ? translateText('Submit')
                                : translateText('Continue'),
                            textScaleFactor: 1,
                            style: appLanguage == 'en'
                                ? GoogleFonts.poppins(
                                    fontSize: 18 /
                                        MediaQuery.of(context).textScaleFactor *
                                        1,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)
                                : GoogleFonts.notoNastaliqUrdu(
                                    fontSize: 16 /
                                        MediaQuery.of(context).textScaleFactor *
                                        1,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                          )
                        : SpinKitCircle(
                            color: Colors.white,
                            size: 20.0,
                          )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
