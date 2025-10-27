import 'package:ezwage/ui/settings/controller/settings_provider.dart';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/change_password_screen_view_navigation.dart';
import 'package:ezwage/global/navigations/profile_navigation.dart';
// import 'package:ezwage/global/navigations/change_pin_settings_screen.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
// import 'package:ezwage/ui/authentication/controller/biometric_controller.dart';
import 'package:ezwage/ui/forget_password/model/forgot_password_phone_field_model.dart';
import 'package:ezwage/ui/profile/model/profile_page_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  _settingviewState createState() => _settingviewState();
}

class _settingviewState extends State<SettingsView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      context.read<SettingsProvider>().getSwitchValues();
    });
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    bool _notificationSwitchValue =
        context.watch<SettingsProvider>().notificationSwitch;
    // bool faceidValue = context.watch<SettingsProvider>().faceIdSwitch;
    // bool touchidValue = context.watch<SettingsProvider>().fingerPrintSwitch;

    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: appLanguage == 'en'
                ? EdgeInsets.fromLTRB(10, 0, 0, 0)
                : EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Text(
              translateText('General_Settings'),
              textScaleFactor: 1,
              style: appLanguage == 'ur'
                  ? GoogleFonts.notoNastaliqUrdu(
                      fontSize: shortestSide > 600 ? 12.sp : 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff00A2FF),
                    )
                  : GoogleFonts.poppins(
                      fontSize: shortestSide > 600 ? 14.sp : 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff00A2FF)),
            ),
          ),
          CustomSizeBox(shortestSide > 600 ? 12.sp : 30),
          Container(
            height: shortestSide > 600 ? 30.sp : 60,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffF7F8F9), width: 1),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 180, 219, 235).withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(4, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: whiteColor),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  profilePageToBeNavigate = 'Settings';
                  navigateToProfileScreen(context);
                },
                child: Row(
                  children: [
                    Padding(
                      padding: appLanguage == 'en'
                          ? EdgeInsets.fromLTRB(20, 0, 0, 0)
                          : EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Text(
                        translateText('Change_profile_information'),
                        textScaleFactor: 1,
                        style: appLanguage == 'ur'
                            ? GoogleFonts.notoNastaliqUrdu(
                                fontSize: shortestSide > 600 ? 12.sp : 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff808080),
                              )
                            : GoogleFonts.poppins(
                                fontSize: shortestSide > 600 ? 12.sp : 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff808080)),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: appLanguage == 'en'
                          ? EdgeInsets.fromLTRB(0, 0, 15, 0)
                          : EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: shortestSide > 600
                          ? Icon(
                              Icons.navigate_next,
                              size: 20.sp,
                              color: Color(0xff3EC0B8D),
                            )
                          : Icon(
                              Icons.navigate_next,
                              color: Color(0xff3EC0B8D),
                            ),
                    )
                  ],
                ),
              ),
            ),
          ),
          CustomSizeBox(shortestSide > 600 ? 15.sp : 20),
          Container(
            height: shortestSide > 600 ? 30.sp : 60,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffF7F8F9), width: 1),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 180, 219, 235).withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(4, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: whiteColor),
            child: Center(
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: appLanguage == 'en'
                            ? EdgeInsets.fromLTRB(20, 0, 0, 0)
                            : EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Text(
                          translateText('Push_notification'),
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 11.sp : 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff808080),
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 12.sp : 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff808080)),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Padding(
                        padding:
                            EdgeInsets.all(shortestSide > 600 ? 12.sp : 0.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Transform.scale(
                            scale: shortestSide > 600 ? 0.4.sp : 0.6,
                            child: CupertinoSwitch(
                              activeColor: Color(0xff00A2FF),
                              value: _notificationSwitchValue,
                              onChanged: (value) {
                                context
                                    .read<SettingsProvider>()
                                    .setNotificationSwitchValue(value);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          CustomSizeBox(shortestSide > 600 ? 15.sp : 25),
          Padding(
            padding: appLanguage == 'en'
                ? EdgeInsets.fromLTRB(10, 0, 0, 0)
                : EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Text(
              translateText('Security_&_Privacy'),
              textScaleFactor: 1,
              style: appLanguage == 'ur'
                  ? GoogleFonts.notoNastaliqUrdu(
                      fontSize: shortestSide > 600 ? 12.sp : 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff00A2FF),
                    )
                  : GoogleFonts.poppins(
                      fontSize: shortestSide > 600 ? 14.sp : 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff00A2FF)),
            ),
          ),
          CustomSizeBox(shortestSide > 600 ? 15.sp : 25),
          Container(
            height: shortestSide > 600 ? 30.sp : 60,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffF7F8F9), width: 1),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 180, 219, 235).withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(4, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: whiteColor),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  profilePageToBeNavigate = 'Settings';
                  navigateToChangePasswordScreenView(context);
                },
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        for (int i = 0; i < 2; i++) {
                          forgotChangePasswordController[i].text = '';
                        }
                        navigateToChangePasswordScreenView(context);
                      },
                      child: Padding(
                        padding: appLanguage == 'en'
                            ? EdgeInsets.fromLTRB(20, 0, 0, 0)
                            : EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Text(
                          translateText('Change_password'),
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 12.sp : 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff808080),
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 12.sp : 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff808080)),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: appLanguage == 'en'
                          ? EdgeInsets.fromLTRB(0, 0, 15, 0)
                          : EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: shortestSide > 600
                          ? Icon(
                              Icons.navigate_next,
                              size: 20.sp,
                              color: Color(0xff3EC0B8D),
                            )
                          : Icon(
                              Icons.navigate_next,
                              color: Color(0xff3EC0B8D),
                            ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // CustomSizeBox(20),
          // Container(
          //   height: shortestSide > 600 ? 30.sp : 60,
          //   decoration: BoxDecoration(
          //       border: Border.all(color: Color(0xffF7F8F9), width: 1),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Color.fromARGB(255, 180, 219, 235).withOpacity(0.1),
          //           spreadRadius: 1,
          //           blurRadius: 1,
          //           offset: Offset(4, 4),
          //         ),
          //       ],
          //       borderRadius: BorderRadius.circular(10),
          //       color: whitecolor),
          //   child: Center(
          //     child: GestureDetector(
          //       onTap: () {
          //         profilePageToBeNavigate = 'Settings';
          //         navigateToChangePinSettings(context, false);
          //       },
          //       child: Row(
          //         children: [
          //           GestureDetector(
          //             onTap: () {
          //               navigateToChangePinSettings(context, false);
          //             },
          //             child: Padding(
          //               padding: appLanguage == 'en'
          //                   ? EdgeInsets.fromLTRB(20, 0, 0, 0)
          //                   : EdgeInsets.fromLTRB(0, 0, 20, 0),
          //               child: Text(
          //                 translateText('Change_pin'),
          //                 style: appLanguage == 'ur'
          //                     ? GoogleFonts.notoNastaliqUrdu(
          //                         fontSize: shortestSide > 600 ? 12.sp : 12,
          //                         fontWeight: FontWeight.w400,
          //                         color: Color(0xff808080),
          //                       )
          //                     : GoogleFonts.poppins(
          //                         fontSize: shortestSide > 600 ? 12.sp : 14,
          //                         fontWeight: FontWeight.w400,
          //                         color: Color(0xff808080)),
          //               ),
          //             ),
          //           ),
          //           Spacer(),
          //           Padding(
          //             padding: appLanguage == 'en'
          //                 ? EdgeInsets.fromLTRB(0, 0, 15, 0)
          //                 : EdgeInsets.fromLTRB(15, 0, 0, 0),
          //             child: shortestSide > 600
          //                 ? Icon(
          //                     Icons.navigate_next,
          //                     size: 20.sp,
          //                     color: Color(0xff3EC0B8D),
          //                   )
          //                 : Icon(
          //                     Icons.navigate_next,
          //                     color: Color(0xff3EC0B8D),
          //                   ),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // CustomSizeBox(20),
          // if (fingerPrintAvailable == true)
          //   Container(
          //     height: 60,
          //     decoration: BoxDecoration(
          //         border: Border.all(color: Color(0xffF7F8F9), width: 1),
          //         boxShadow: [
          //           BoxShadow(
          //             color:
          //                 Color.fromARGB(255, 180, 219, 235).withOpacity(0.1),
          //             spreadRadius: 1,
          //             blurRadius: 1,
          //             offset: Offset(4, 4),
          //           ),
          //         ],
          //         borderRadius: BorderRadius.circular(10),
          //         color: whiteColor),
          //     child: Center(
          //       child: GestureDetector(
          //         onTap: () {
          //           profilePageToBeNavigate = 'Settings';
          //           navigateToProfileScreen(context);
          //         },
          //         child: Row(
          //           children: [
          //             Align(
          //               alignment: Alignment.centerLeft,
          //               child: Padding(
          //                 padding: appLanguage == 'en'
          //                     ? EdgeInsets.fromLTRB(20, 0, 0, 0)
          //                     : EdgeInsets.fromLTRB(0, 0, 20, 0),
          //                 child: Text(
          //                   translateText('Touch_authentication'),
          //                   style: appLanguage == 'ur'
          //                       ? GoogleFonts.notoNastaliqUrdu(
          //                           fontSize: 11,
          //                           fontWeight: FontWeight.w400,
          //                           color: Color(0xff808080),
          //                         )
          //                       : GoogleFonts.poppins(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w400,
          //                           color: Color(0xff808080)),
          //                 ),
          //               ),
          //             ),
          //             Expanded(
          //               child: Align(
          //                 alignment: Alignment.centerRight,
          //                 child: Transform.scale(
          //                   scale: 0.6,
          //                   child: CupertinoSwitch(
          //                     activeColor: Color(0xff00A2FF),
          //                     value: touchidValue,
          //                     onChanged: (value) {
          //                       context
          //                           .read<SettingsProvider>()
          //                           .setFingerPrintSwitchValue(value);
          //                     },
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // CustomSizeBox(20),
          // if (faceIdAvailable == true)
          //   Container(
          //     height: 60,
          //     decoration: BoxDecoration(
          //         border: Border.all(color: Color(0xffF7F8F9), width: 1),
          //         boxShadow: [
          //           BoxShadow(
          //             color:
          //                 Color.fromARGB(255, 180, 219, 235).withOpacity(0.1),
          //             spreadRadius: 1,
          //             blurRadius: 1,
          //             offset: Offset(4, 4),
          //           ),
          //         ],
          //         borderRadius: BorderRadius.circular(10),
          //         color: whiteColor),
          //     child: Center(
          //       child: GestureDetector(
          //         onTap: () {
          //           profilePageToBeNavigate = 'Settings';
          //           navigateToProfileScreen(context);
          //         },
          //         child: Row(
          //           children: [
          //             Align(
          //               alignment: Alignment.centerLeft,
          //               child: Padding(
          //                 padding: appLanguage == 'en'
          //                     ? EdgeInsets.fromLTRB(20, 0, 0, 0)
          //                     : EdgeInsets.fromLTRB(0, 0, 20, 0),
          //                 child: Text(
          //                   translateText('Face_authentication'),
          //                   style: appLanguage == 'ur'
          //                       ? GoogleFonts.notoNastaliqUrdu(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.w400,
          //                           color: Color(0xff808080),
          //                         )
          //                       : GoogleFonts.poppins(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w400,
          //                           color: Color(0xff808080)),
          //                 ),
          //               ),
          //             ),
          //             Expanded(
          //               child: Align(
          //                 alignment: Alignment.centerRight,
          //                 child: Transform.scale(
          //                   scale: 0.6,
          //                   child: CupertinoSwitch(
          //                     activeColor: Color(0xff00A2FF),
          //                     value: faceidValue,
          //                     onChanged: (value) {
          //                       context
          //                           .read<SettingsProvider>()
          //                           .setFaceIdSwitchValue(value);
          //                     },
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          CustomSizeBox(50),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff00A2FF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                context.read<SettingsProvider>().saveSwitchValues(context);
              },
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    translateText('Save'),
                    style: appLanguage == 'ur'
                        ? GoogleFonts.notoNastaliqUrdu(
                            fontSize: shortestSide > 600 ? 12.sp : 14,
                            fontWeight: FontWeight.w500,
                          )
                        : GoogleFonts.poppins(
                            fontSize: shortestSide > 600 ? 12.sp : 16,
                            fontWeight: FontWeight.w500),
                  )),
            ),
          ),
          CustomSizeBox(30),
        ],
      ),
    );
  }
}
