import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/forget_password/controller/change_password_controller.dart';
import 'package:ezwage/ui/forget_password/model/forgot_password_phone_field_model.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPasswordChangePasswordField extends StatelessWidget {
  final _createPasswordFieldLists = [
    'New_Password',
    'Confirm_New_Password',
  ];
  final _passwordHintLists = [
    'Enter_your_password',
    'Confirm_your_password',
  ];

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    var hidePasswordFromField =
        context.watch<ChangePasswordProvider>().hidePassword;
    return Column(
      children: [
        SizedBox(
          width: 400,
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: appLanguage == 'en'
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: Text(
              translateText('Enter_New_Password'),
              style: appLanguage == 'en'
                  ? GoogleFonts.poppins(
                      fontSize: 22 / MediaQuery.of(context).textScaleFactor * 1,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffDB1695))
                  : GoogleFonts.notoNastaliqUrdu(
                      fontSize: 24 / MediaQuery.of(context).textScaleFactor * 1,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffDB1695)),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        for (int index = 0; index < 2; index++)
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: appLanguage == 'en'
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: Text(
                    translateText(_createPasswordFieldLists[index]),
                    style: appLanguage == 'en'
                        ? GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize:
                                16 / MediaQuery.of(context).textScaleFactor * 1)
                        : GoogleFonts.notoNastaliqUrdu(
                            fontWeight: FontWeight.w500,
                            fontSize: 14 /
                                MediaQuery.of(context).textScaleFactor *
                                1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
                child: Neumorphic(
                  // margin:
                  //     EdgeInsets.only(left: 1, right: 0, top: 1, bottom: 0),
                  style: NeumorphicStyle(
                      color: const Color.fromARGB(255, 168, 166, 166),
                      depth: NeumorphicTheme.embossDepth(context),
                      intensity: 0.6,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(10))),
                  child: TextFormField(
                    enableInteractiveSelection: false,
                    controller: forgotChangePasswordController[index],
                    style: GoogleFonts.poppins(
                      fontSize: 12 / MediaQuery.of(context).textScaleFactor * 1,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLength: 20,
                    obscureText: hidePasswordFromField[index],
                    onChanged: (value) {
                      if (forgotChangePasswordController[0].text.length > 0 &&
                          forgotChangePasswordController[1].text.length > 0) {
                        context
                            .read<ChangePasswordProvider>()
                            .setChangePasswordButtonStatus(true);
                      } else {
                        context
                            .read<ChangePasswordProvider>()
                            .setChangePasswordButtonStatus(false);
                      }
                    },
                    decoration: InputDecoration(
                      counterText: '',
                      suffixIcon: IconButton(
                        onPressed: () {
                          if (hidePasswordFromField[index] == false) {
                            context
                                .read<ChangePasswordProvider>()
                                .setHidePasswordStatus(true, index);
                          } else {
                            context
                                .read<ChangePasswordProvider>()
                                .setHidePasswordStatus(false, index);
                          }
                        },
                        icon: Icon(hidePasswordFromField[index] == true
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      hintText: translateText(_passwordHintLists[index]),
                      contentPadding: const EdgeInsets.all(20.0),
                      hintStyle: appLanguage == 'en'
                          ? GoogleFonts.poppins(
                              fontSize: 12 /
                                  MediaQuery.of(context).textScaleFactor *
                                  1,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff97ADB6))
                          : GoogleFonts.notoNastaliqUrdu(
                              fontSize: 10 /
                                  MediaQuery.of(context).textScaleFactor *
                                  1,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff97ADB6)),
                      filled: true,
                      fillColor: const Color(0xffF6F6F6),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              const BorderSide(color: Color(0xffF6F6F6))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              const BorderSide(color: Color(0xffF6F6F6))),
                    ),
                  ),
                ),
              ),
            ],
          ),
        if (passwordFieldValidatorController.text != '')
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
            child: Align(
              alignment: appLanguage == 'en'
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              child: Text(
                passwordFieldValidatorController.text,
                textAlign:
                    appLanguage == 'en' ? TextAlign.left : TextAlign.right,
                style: appLanguage == 'en'
                    ? GoogleFonts.poppins(
                        fontSize:
                            12 / MediaQuery.of(context).textScaleFactor * 1,
                        color: Colors.red)
                    : GoogleFonts.notoNastaliqUrdu(
                        fontSize:
                            10 / MediaQuery.of(context).textScaleFactor * 1,
                        color: Colors.red),
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            translateText('Password_Characters_Limit'),
            style: appLanguage == 'en'
                ? GoogleFonts.poppins(
                    fontSize: shortestSide > 600
                        ? 7.sp / MediaQuery.of(context).textScaleFactor * 1
                        : 12 / MediaQuery.of(context).textScaleFactor * 1,
                    fontWeight: FontWeight.w500)
                : GoogleFonts.notoNastaliqUrdu(
                    fontSize: shortestSide > 600
                        ? 5.sp / MediaQuery.of(context).textScaleFactor * 1
                        : 10 / MediaQuery.of(context).textScaleFactor * 1,
                    fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
