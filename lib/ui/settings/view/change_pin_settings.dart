import 'dart:convert';

import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';
import 'package:ezwage/ui/forget_password/controller/change_password_controller.dart';
import 'package:ezwage/ui/forget_password/model/forgot_password_phone_field_model.dart';
import 'package:ezwage/ui/forget_password/model/otp_model.dart';
import 'package:ezwage/ui/forget_password/view/change_password_dialog.dart';
import 'package:ezwage/ui/settings/controller/change_password_provider.dart';
import 'package:ezwage/ui/settings/model/settings_change_password_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ChangePinSettings extends StatefulWidget {
  bool setupPin;
  ChangePinSettings(this.setupPin);
  @override
  State<ChangePinSettings> createState() => _ChangePinSettingsState();
}

class _ChangePinSettingsState extends State<ChangePinSettings> {
  final _createPinFieldLists = [
    'New_Pin',
    'ReEnter_New_Pin',
  ];

  sendOtpCode() async {
    var jsonBody = {
      "email": preferences.get('userEmail'),
      "source_device": "Mobile",
      "link_type": "Reset Password"
    };
    // ignore: unused_local_variable
    Response response = await ApiFunctions()
        .postRequest('users/forgotpassword', jsonEncode(jsonBody), context);
    var decodeJson = jsonDecode(response.body);
    OtpModel.phoneNumber = preferences.get('userEmail');
    OtpModel.changePassword = settingChangePasswordTextfield[1].text;
    parseOtpId = decodeJson["results"]["data"]["id"];
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            insetPadding: EdgeInsets.fromLTRB(10, 50, 10, 150),
            contentPadding: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            content: Container(
                color: Colors.white,
                child: MultiProvider(
                    providers: [
                      ChangeNotifierProvider(
                          create: (_) => ChangePasswordProvider()),
                    ],
                    child: Consumer<ChangePasswordProvider>(
                        builder: (context, provider, snapshot) {
                      return ChangePasswordScreenDiaglog(true);
                    }))),
          ),
        );
      },
    );
  }

  addEmployeePin() async {
    var jsonBody = {"current_password": LoginModel.password, "pin": "2233"};
    // ignore: unused_local_variable
    Response response = await ApiFunctions().postRequest(
        'users/' + preferences.get('id') + '/add-pin',
        jsonEncode(jsonBody),
        context);
  }

  updateEmployeePin() async {
    var jsonBody = {"current_password": LoginModel.password, "pin": "2233"};
    // ignore: unused_local_variable
    Response response = await ApiFunctions().postRequest(
        'users/' + preferences.get('id') + '/add-pin',
        jsonEncode(jsonBody),
        context);
  }

  @override
  Widget build(BuildContext context) {
    // bool _processLogin =
    //     context.watch<SettingsChangePasswordProvider>().showProcess;
    var hidePasswordFromField =
        context.watch<SettingsChangePasswordProvider>().hidePassword;
    bool _allowSaveButton =
        context.watch<SettingsChangePasswordProvider>().enableSaveButton;
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: appLanguage == 'en'
                                      ? EdgeInsets.fromLTRB(10, 0, 0, 0)
                                      : EdgeInsets.fromLTRB(0, 2, 10, 0),
                                  child: GestureDetector(
                                    onTap: () {
                                      for (int i = 0;
                                          i <
                                              settingChangePasswordTextfield
                                                  .length;
                                          i++)
                                        settingChangePasswordTextfield[i].text =
                                            '';
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: backicon.withOpacity(0.2),
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: appLanguage == 'en'
                                            ? EdgeInsets.only(
                                                left: shortestSide < 600
                                                    ? 10.0
                                                    : 15,
                                                top: 3,
                                                bottom: 3)
                                            : EdgeInsets.only(
                                                right: 10.0, top: 3, bottom: 3),
                                        child: Icon(
                                          Icons.arrow_back_ios,
                                          color: backicon,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    translateText(widget.setupPin == true
                                        ? 'Setup_PIN'
                                        : 'Settings'),
                                    style: appLanguage == 'ur'
                                        ? GoogleFonts.notoNastaliqUrdu(
                                            color: blueColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18)
                                        : GoogleFonts.poppins(
                                            color: blueColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Divider(),
                  ),
                  Padding(
                    padding: appLanguage == 'en'
                        ? EdgeInsets.fromLTRB(30, 10, 0, 0)
                        : EdgeInsets.fromLTRB(0, 10, 30, 0),
                    child: Align(
                      alignment: appLanguage == 'en'
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Text(
                        translateText(widget.setupPin == true
                            ? 'Setup_PIN'
                            : 'Change_pin'),
                        style: appLanguage == 'ur'
                            ? GoogleFonts.notoNastaliqUrdu(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff00A2FF),
                              )
                            : GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff00A2FF)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ListView.builder(
                        itemCount: _createPinFieldLists.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemBuilder: (context, index) {
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
                                    translateText(_createPinFieldLists[index]),
                                    style: appLanguage == 'ur'
                                        ? GoogleFonts.notoNastaliqUrdu(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          )
                                        : GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(3, 5, 3, 5),
                                child: TextFormField(
                                  enableInteractiveSelection: false,
                                  controller:
                                      settingChangePasswordTextfield[index],
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  maxLength: 4,
                                  obscureText: hidePasswordFromField[index],
                                  onChanged: (value) {
                                    if (settingChangePasswordTextfield[0]
                                                .text
                                                .length >
                                            3 &&
                                        settingChangePasswordTextfield[1]
                                                .text
                                                .length >
                                            3) {
                                      context
                                          .read<
                                              SettingsChangePasswordProvider>()
                                          .setSaveButtonStatus(true);
                                    } else {
                                      context
                                          .read<
                                              SettingsChangePasswordProvider>()
                                          .setSaveButtonStatus(false);
                                    }
                                  },
                                  decoration: InputDecoration(
                                    counterText: '',
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        if (hidePasswordFromField[index] ==
                                            false) {
                                          context
                                              .read<
                                                  SettingsChangePasswordProvider>()
                                              .setHidePassword(true, index);
                                        } else {
                                          context
                                              .read<
                                                  SettingsChangePasswordProvider>()
                                              .setHidePassword(false, index);
                                        }
                                      },
                                      icon: Icon(
                                          hidePasswordFromField[index] == true
                                              ? Icons.visibility
                                              : Icons.visibility_off),
                                    ),
                                    hintText: '1234',
                                    contentPadding: const EdgeInsets.all(20.0),
                                    hintStyle: appLanguage == 'ur'
                                        ? GoogleFonts.notoNastaliqUrdu(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff97ADB6),
                                          )
                                        : GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff97ADB6)),
                                    filled: true,
                                    fillColor: const Color(0xffF6F6F6),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                            color: Color(0xffD5DAE0))),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                            color: Color(0xffD5DAE0))),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  CustomSizeBox(30),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _allowSaveButton == true
                              ? Color(0xff00A2FF)
                              : Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          if (_allowSaveButton == true) {
                            if (settingChangePasswordTextfield[0].text !=
                                settingChangePasswordTextfield[1].text) {
                              CustomSnackBar(false).showInSnackBar(
                                  translateText("Both_Passowrds_don't_match"),
                                  context);
                            } else {
                              // sendOtpCode();
                              addEmployeePin();
                            }
                          }
                        },
                        child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              translateText('Save'),
                              style: appLanguage == 'ur'
                                  ? GoogleFonts.notoNastaliqUrdu(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )
                                  : GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                            )),
                      ),
                    ),
                  ),
                  CustomSizeBox(30),
                ],
              ),
            ),
          ),
        ));
  }
}
