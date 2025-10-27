import 'dart:io';

import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/authentication/controller/authscreen_tab_controller.dart';
import 'package:ezwage/ui/authentication/controller/biometric_controller.dart';
import 'package:ezwage/ui/authentication/controller/correct_phone_field.dart';
import 'package:ezwage/ui/authentication/controller/login_provider.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';
import 'package:ezwage/ui/forget_password/controller/change_password_controller.dart';
import 'package:ezwage/ui/forget_password/view/change_password_dialog.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginTextController =
      List.generate(2, (i) => TextEditingController(), growable: true);
  final _textFieldLists = ['Phone_Number', 'Password'];

  final _hintLists = ['Enter_your_phone_number', 'Enter_your_password'];
  bool _enableFingerPrint = false;
  bool _enableFaceId = false;
  List<FocusNode> _focusNodes =
      List<FocusNode>.generate(2, (int index) => FocusNode());
  var keyboardPlatform;
  final _formKey = GlobalKey<FormState>();
  getAvailableBiometrics() async {
    final LocalAuthentication auth = LocalAuthentication();
    late List<BiometricType> availableBiometrics;
    availableBiometrics = await auth.getAvailableBiometrics();
    if (availableBiometrics.contains(BiometricType.strong) ||
        availableBiometrics.contains(BiometricType.fingerprint) ||
        availableBiometrics.contains(BiometricType.weak)) {
      context.read<LoginProvider>().setFingerPrintStatus(true);
      fingerPrintAvailable = true;
    } else if (availableBiometrics.contains(BiometricType.face)) {
      context.read<LoginProvider>().setFaceIdStatus(true);
      faceIdAvailable = true;
    }
  }

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 2; i++) {
      _focusNodes[i].addListener(() {
        _onFocusChange(i);
      });
    }
    // Future.delayed(Duration.zero, () {
    //   if (LoginModel.remember != null)
    //     context
    //         .read<LoginProvider>()
    //         .setRememeberMeStatus(LoginModel.remember!);
    // });
    getAvailableBiometrics();
    if (Platform.isIOS == true) {
      keyboardPlatform =
          TextInputType.numberWithOptions(signed: true, decimal: true);
    } else {
      keyboardPlatform = TextInputType.number;
    }
  }

  _onFocusChange(int index) {
    if (_focusNodes[index].hasFocus == false && index == 0) {
      _loginTextController[index].text =
          correctPhoneNumber(_loginTextController[index].text);
    }
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    bool _hidePassword = context.watch<LoginProvider>().hidePassword;
    // bool checkBoxValue = context.watch<LoginProvider>().rememberMe;
    bool _processLogin = context.watch<LoginProvider>().loginProcess;
    _enableFingerPrint = context.watch<LoginProvider>().enableFingerPrint;
    _enableFaceId = context.watch<LoginProvider>().enableFaceId;
    final mediaQuery = MediaQuery.of(context).textScaleFactor;
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView.builder(
                itemCount: _textFieldLists.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            8,
                            shortestSide > 600 ? 4.sp : 8,
                            8,
                            shortestSide > 600 ? 5.sp : 8),
                        child: Align(
                          alignment: appLanguage == 'en'
                              ? Alignment.centerLeft
                              : Alignment.centerRight,
                          child: Text(
                            translateText(
                              _textFieldLists[index],
                            ),
                            style: appLanguage == 'en'
                                ? GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: shortestSide > 600 ? 14.sp : 16)
                                : GoogleFonts.notoNastaliqUrdu(
                                    fontWeight: FontWeight.w500,
                                    fontSize: shortestSide > 600 ? 12.sp : 14),
                            textScaleFactor: 1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(3, 0, 3, 5),
                        child: Neumorphic(
                          // margin:
                          //     EdgeInsets.only(left: 1, right: 0, top: 1, bottom: 0),
                          style: NeumorphicStyle(
                              color: Color(0xffF6F6F6),
                              depth: NeumorphicTheme.embossDepth(context),
                              intensity: 0.6,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(
                                      shortestSide > 600 ? 5.sp : 10))),
                          child: shortestSide > 600
                              ? SizedBox(
                                  height: 40.sp,
                                  child: Center(
                                    child: TextFormField(
                                      enableInteractiveSelection: false,
                                      maxLength: 15,
                                      focusNode: _focusNodes[index],
                                      controller: _loginTextController[index],
                                      obscureText:
                                          index == 1 ? _hidePassword : false,
                                      onChanged: (value) {},
                                      style: GoogleFonts.poppins(
                                        fontSize: shortestSide > 600
                                            ? 12.sp / mediaQuery
                                            : 12 / mediaQuery,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      inputFormatters: index == 0
                                          ? <TextInputFormatter>[
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ]
                                          : <TextInputFormatter>[],
                                      keyboardType: index == 0
                                          ? keyboardPlatform
                                          : TextInputType.text,
                                      textInputAction: index == 0
                                          ? TextInputAction.next
                                          : TextInputAction.done,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        suffixIcon: index == 1
                                            ? Padding(
                                                padding: EdgeInsets.all(
                                                    shortestSide > 600
                                                        ? 4.sp
                                                        : 0),
                                                child: IconButton(
                                                  onPressed: () {
                                                    if (_hidePassword ==
                                                        false) {
                                                      context
                                                          .read<LoginProvider>()
                                                          .setPasswordStatus(
                                                              true);
                                                    } else {
                                                      context
                                                          .read<LoginProvider>()
                                                          .setPasswordStatus(
                                                              false);
                                                    }
                                                  },
                                                  icon: Icon(_hidePassword ==
                                                          true
                                                      ? Icons.visibility
                                                      : Icons.visibility_off),
                                                  iconSize: shortestSide > 600
                                                      ? 15.sp
                                                      : 20,
                                                ),
                                              )
                                            : null,
                                        hintText:
                                            translateText(_hintLists[index]),
                                        contentPadding: EdgeInsets.all(20.0),
                                        hintStyle: appLanguage == 'en'
                                            ? GoogleFonts.poppins(
                                                fontSize: shortestSide > 600
                                                    ? 12.sp / mediaQuery
                                                    : 10 / mediaQuery,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff97ADB6))
                                            : GoogleFonts.notoNastaliqUrdu(
                                                fontSize: shortestSide > 600
                                                    ? 10.sp / mediaQuery
                                                    : 10 / mediaQuery,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff97ADB6)),
                                        filled: true,
                                        fillColor: Color(0xffF6F6F6),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: Color(0xffF6F6F6))),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: Color(0xffF6F6F6))),
                                      ),
                                    ),
                                  ),
                                )
                              : TextFormField(
                                  enableInteractiveSelection: false,
                                  maxLength: 15,
                                  focusNode: _focusNodes[index],
                                  controller: _loginTextController[index],
                                  obscureText:
                                      index == 1 ? _hidePassword : false,
                                  onChanged: (value) {},
                                  style: GoogleFonts.poppins(
                                    fontSize: shortestSide > 600
                                        ? 12.sp / mediaQuery
                                        : 12 / mediaQuery,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  inputFormatters: index == 0
                                      ? <TextInputFormatter>[
                                          FilteringTextInputFormatter.digitsOnly
                                        ]
                                      : <TextInputFormatter>[],
                                  keyboardType: index == 0
                                      ? keyboardPlatform
                                      : TextInputType.text,
                                  textInputAction: index == 0
                                      ? TextInputAction.next
                                      : TextInputAction.done,
                                  decoration: InputDecoration(
                                    counterText: '',
                                    suffixIcon: index == 1
                                        ? Padding(
                                            padding: EdgeInsets.all(
                                                shortestSide > 600 ? 4.sp : 0),
                                            child: IconButton(
                                              onPressed: () {
                                                if (_hidePassword == false) {
                                                  context
                                                      .read<LoginProvider>()
                                                      .setPasswordStatus(true);
                                                } else {
                                                  context
                                                      .read<LoginProvider>()
                                                      .setPasswordStatus(false);
                                                }
                                              },
                                              icon: Icon(_hidePassword == true
                                                  ? Icons.visibility
                                                  : Icons.visibility_off),
                                              iconSize: shortestSide > 600
                                                  ? 15.sp
                                                  : 20,
                                            ),
                                          )
                                        : null,
                                    hintText: translateText(_hintLists[index]),
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintStyle: appLanguage == 'en'
                                        ? GoogleFonts.poppins(
                                            fontSize: shortestSide > 600
                                                ? 12.sp / mediaQuery
                                                : 12 / mediaQuery,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff97ADB6),
                                          )
                                        : GoogleFonts.notoNastaliqUrdu(
                                            fontSize: shortestSide > 600
                                                ? 10.sp / mediaQuery
                                                : 10 / mediaQuery,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff97ADB6)),
                                    filled: true,
                                    fillColor: Color(0xffF6F6F6),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                            color: Color(0xffF6F6F6))),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                            color: Color(0xffF6F6F6))),
                                  ),
                                ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 10.0, top: shortestSide > 600 ? 8.sp : 0),
            child: Row(
              children: [
                // Transform.scale(
                //   scale: shortestSide > 600 ? 0.7.sp : 1,
                //   child: Checkbox(
                //       value: checkBoxValue,
                //       side: BorderSide(
                //         color: Color(0xffCECDCD),
                //       ),
                //       shape: RoundedRectangleBorder(),
                //       activeColor: Color.alphaBlend(
                //           Color(0xff00A2FF), Color(0xff0075B9)),
                //       onChanged: (bool? value) {
                //         context
                //             .read<LoginProvider>()
                //             .setRememeberMeStatus(value!);
                //       }),
                // ),
                // Padding(
                //   padding: EdgeInsets.fromLTRB(
                //       shortestSide > 600 ? 4.sp : 0, 0, 0, 0),
                //   child: Text(
                //     translateText('Remember_me'),
                //     style: appLanguage == 'en'
                //         ? GoogleFonts.poppins(
                //             fontSize: shortestSide > 600 ? 12.sp : 12,
                //             fontWeight: FontWeight.w400,
                //             color: Color(0xff5E5E5E),
                //           )
                //         : GoogleFonts.notoNastaliqUrdu(
                //             fontSize: shortestSide > 600 ? 10.sp : 10,
                //             fontWeight: FontWeight.w400,
                //             color: Color(0xff5E5E5E),
                //           ),
                //   ),
                // ),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return WillPopScope(
                            onWillPop: () async => false,
                            child: AlertDialog(
                              insetPadding:
                                  EdgeInsets.fromLTRB(10, 50, 10, 150),
                              contentPadding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              content: Container(
                                  color: Colors.white,
                                  child: MultiProvider(
                                      providers: [
                                        ChangeNotifierProvider(
                                            create: (_) =>
                                                ChangePasswordProvider()),
                                      ],
                                      child: Consumer<ChangePasswordProvider>(
                                          builder:
                                              (context, provider, snapshot) {
                                        return ChangePasswordScreenDiaglog(
                                            false);
                                      }))),
                            ),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Container(
                        padding: EdgeInsets.only(
                          bottom: 3, // space between underline and text
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Color(0xffB5B5B5), // Text colour here
                          width: 1.0, // Underline width
                        ))),
                        child: Text(
                          translateText('Forgot_Password?'),
                          style: appLanguage == 'en'
                              ? GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 12.sp : 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffB5B5B5),
                                )
                              : GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 10.sp : 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffB5B5B5),
                                ),
                          textScaleFactor: 1,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(20, shortestSide > 600 ? 12.sp : 25, 20, 0),
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                  height: shortestSide > 600 ? 35.sp : 55),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffDB1695),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            shortestSide > 600 ? 5.sp : 10)),
                  ),
                  onPressed: () {
                    if (_loginTextController[0].text.length < 1) {
                      CustomSnackBar(false).showInSnackBar(
                          translateText('Phone_number_field_is_empty'),
                          context);
                    }
                    if (_loginTextController[1].text.length < 1 &&
                        _loginTextController[0].text.length > 10) {
                      CustomSnackBar(false).showInSnackBar(
                          translateText('Password_field_is_empty'), context);
                    }
                    if (_loginTextController[0].text.length > 1 &&
                        _loginTextController[0].text.length < 11) {
                      CustomSnackBar(false).showInSnackBar(
                          translateText('Type_your_complete_phone_number'),
                          context);
                    }
                    // if (_loginTextController[1].text.length > 1 &&
                    //     RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&.#])[A-Za-z\d@$!%*?&.#]{8,20}$")
                    //             .hasMatch(_loginTextController[1].text) ==
                    //         false) {
                    //   CustomSnackBar().showInSnackBar(
                    //       translateText('Password_format_Incorrect'), context);
                    // }
                    if (
                        // RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&.#])[A-Za-z\d@$!%*?&.#]{8,20}$")
                        //           .hasMatch(_loginTextController[1].text) ==
                        //       true &&
                        _loginTextController[0].text.length > 10 &&
                            _loginTextController[1].text.length > 0) {
                      if (_processLogin == false) {
                        context.read<LoginProvider>().setLoginProcess(true);
                        var userDetails = [];
                        _loginTextController[0].text =
                            correctPhoneNumber(_loginTextController[0].text);
                        for (int i = 0; i < _loginTextController.length; i++)
                          userDetails.add(_loginTextController[i].text);
                        if (appLanguage == 'ur' && userDetails[0][0] != '+') {
                          userDetails[0] = userDetails[0]
                                  [userDetails[0].length - 1] +
                              userDetails[0]
                                  .toString()
                                  .substring(0, userDetails[0].length - 1);
                        } else if (appLanguage == 'en' &&
                            userDetails[0][userDetails[0].length - 1] == '+') {
                          userDetails[0] = '+' +
                              userDetails[0]
                                  .toString()
                                  .substring(0, userDetails[0].length - 1);
                        }
                        var _authenticateUserResponse = context
                            .read<LoginProvider>()
                            .authenticateUser(userDetails, context);
                        if (_authenticateUserResponse == true) {
                          for (int i = 0; i < 2; i++) {
                            _loginTextController[i].text = '';
                          }
                        }
                      } else {
                        context.read<LoginProvider>().setLoginProcess(false);
                      }
                    }
                  },
                  child: _processLogin == false
                      ? Text(
                          translateText('Login'),
                          style: appLanguage == 'en'
                              ? GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 16.sp : 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)
                              : GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 12.sp : 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                          textScaleFactor: 1,
                        )
                      : SpinKitCircle(
                          color: Colors.white,
                          size: 20.0,
                        )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                translateText("Don't_have_an_account?_Sign_Up"),
                textScaleFactor: 1,
                style: appLanguage == 'ur'
                    ? GoogleFonts.notoNastaliqUrdu(
                        fontSize: shortestSide > 600 ? 10.sp : 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6F6F6F),
                      )
                    : GoogleFonts.poppins(
                        fontSize: shortestSide > 600 ? 12.sp : 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6F6F6F)),
              ),
              GestureDetector(
                onTap: () {
                  tabController.animateTo(1);
                },
                child: Text(
                  "  " + translateText('Sign_Up'),
                  textScaleFactor: 1,
                  style: appLanguage == 'ur'
                      ? GoogleFonts.notoNastaliqUrdu(
                          fontSize: shortestSide > 600 ? 11.sp : 11,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff00A2FF),
                        )
                      : GoogleFonts.poppins(
                          fontSize: shortestSide > 600 ? 12.sp : 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff00A2FF)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              if (
              // (
              _enableFaceId == true
                  //  && faceIdBiometric == true)
                  ||
                  // (
                  // fingerPrintBiometric == true &&
                  _enableFingerPrint == true)
                //  )
                Row(children: <Widget>[
                  Expanded(child: Divider()),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 0, left: 10.0, right: 10),
                      child: Text(
                        translateText('OR'),
                        textScaleFactor: 1,
                        style: appLanguage == 'en'
                            ? GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w400)
                            : GoogleFonts.notoNastaliqUrdu(
                                fontSize: 12, fontWeight: FontWeight.w400),
                      )),
                  Expanded(child: Divider()),
                ]),
              CustomSizeBox(5),
              if (_enableFingerPrint == true
              // && fingerPrintBiometric == true
              )
                Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          onTap: () {
                            if (LoginModel.email != null &&
                                LoginModel.password != null &&
                                fingerPrintBiometric == true) {
                              var _authenticateUserResponse = context
                                  .read<LoginProvider>()
                                  .authenticateUserBiometric(context);
                              if (_authenticateUserResponse == true) {
                                for (int i = 0; i < 2; i++) {
                                  _loginTextController[i].text = '';
                                }
                              }
                            } else if (LoginModel.email == null &&
                                LoginModel.password == null) {
                              CustomSnackBar(false).showInSnackBar(
                                  translateText(
                                      'You_need_to_do_first_login_with_phone_number_and_password'),
                                  context);
                            } else {
                              CustomSnackBar(true).showInSnackBar(
                                  translateText(
                                      'Allow_Touch_ID_Authentication'),
                                  context);
                            }
                          },
                          child: SvgPicture.asset(
                            'assets/images/New_Biometric.svg',
                            width: 38,
                            height: 38,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Text(
                        translateText('Login_with_Touch_ID'),
                        textScaleFactor: 1,
                        style: appLanguage == 'en'
                            ? GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w400)
                            : GoogleFonts.notoNastaliqUrdu(
                                fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              CustomSizeBox(5),
              if (_enableFaceId == true
              // && faceIdBiometric == true
              )
                Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          onTap: () {
                            if (LoginModel.email != null &&
                                LoginModel.password != null &&
                                faceIdBiometric == true) {
                              var _authenticateUserResponse = context
                                  .read<LoginProvider>()
                                  .authenticateUserBiometric(context);
                              if (_authenticateUserResponse == true) {
                                for (int i = 0; i < 2; i++) {
                                  _loginTextController[i].text = '';
                                }
                              }
                            } else if (LoginModel.email == null &&
                                LoginModel.password == null) {
                              CustomSnackBar(false).showInSnackBar(
                                  translateText(
                                      'You_need_to_do_first_login_with_phone_number_and_password'),
                                  context);
                            } else {
                              CustomSnackBar(true).showInSnackBar(
                                  translateText('Allow_Face_ID_Authentication'),
                                  context);
                            }
                          },
                          child: SvgPicture.asset(
                            'assets/images/Face_ID.svg',
                            width: 38,
                            height: 38,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Text(
                        translateText('Login_with_Face_ID'),
                        textScaleFactor: 1,
                        style: appLanguage == 'en'
                            ? GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w400)
                            : GoogleFonts.notoNastaliqUrdu(
                                fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              CustomSizeBox(200),
            ],
          )
        ],
      ),
    );
  }
}
