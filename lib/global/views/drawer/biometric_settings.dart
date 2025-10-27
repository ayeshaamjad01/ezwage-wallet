import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/global/views/drawer/biometric_settings_dialouge.dart';
import 'package:ezwage/global/views/drawer/biometric_settings_provider.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/authentication/controller/biometric_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BiometicSettings extends StatefulWidget {
  @override
  State<BiometicSettings> createState() => _BiometicSettingsState();
}

class _BiometicSettingsState extends State<BiometicSettings> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      context.read<BiometricSettingsProivder>().getSwitchValues();
    });
  }

  settingsDiaglouge(bool value) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              insetPadding: appLanguage == 'en'
                  ? EdgeInsets.fromLTRB(10, 50, 10, 0)
                  : EdgeInsets.fromLTRB(0, 30, 0, 0),
              contentPadding: EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              content: Container(
                  color: Colors.white,
                  child: ChangeNotifierProvider<BiometricSettingsProivder>(
                    create: (_) => BiometricSettingsProivder(),
                    child: BiometricSettingsDialouge(
                      value,
                    ),
                  )),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    bool faceidValue = context.watch<BiometricSettingsProivder>().faceIdSwitch;
    bool touchidValue =
        context.watch<BiometricSettingsProivder>().fingerPrintSwitch;
    return Column(
      children: [
        if (fingerPrintAvailable == true) CustomSizeBox(20),
        if (fingerPrintAvailable == true)
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: shortestSide > 600
                        ? SvgPicture.asset('assets/images/touch_id_icon.svg',
                            height: 15.sp, fit: BoxFit.fitHeight)
                        : SvgPicture.asset(
                            'assets/images/touch_id_icon.svg',
                            height: 15,
                          )),
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      translateText('Touch_authentication'),
                      textScaleFactor: 1,
                      style: appLanguage == 'ur'
                          ? GoogleFonts.notoNastaliqUrdu(
                              fontSize: shortestSide > 600 ? 12.sp : 12,
                              fontWeight: FontWeight.w400,
                              color: drawertextclr,
                            )
                          : GoogleFonts.poppins(
                              fontSize: shortestSide > 600 ? 12.sp : 14,
                              fontWeight: FontWeight.w400,
                              color: drawertextclr),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: appLanguage == 'en'
                          ? EdgeInsets.all(0.0)
                          : EdgeInsets.only(top: 5),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Transform.scale(
                          scale: shortestSide < 600 ? 0.5 : 0.7,
                          child: CupertinoSwitch(
                            activeColor: Color(0xff00A2FF),
                            value: touchidValue,
                            onChanged: (value) {
                              if (value == true)
                                settingsDiaglouge(true);
                              else
                                context
                                    .read<BiometricSettingsProivder>()
                                    .setFingerPrintSwitchValue(false);
                            },
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        if (faceIdAvailable == true) CustomSizeBox(20),
        if (faceIdAvailable == true)
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: shortestSide > 600
                        ? SvgPicture.asset('assets/images/face_id_icon.svg',
                            height: 15.sp, fit: BoxFit.fitHeight)
                        : SvgPicture.asset(
                            'assets/images/face_id_icon.svg',
                            height: 15,
                          )),
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      translateText('Face_authentication'),
                      textScaleFactor: 1,
                      style: appLanguage == 'ur'
                          ? GoogleFonts.notoNastaliqUrdu(
                              fontSize: shortestSide > 600 ? 12.sp : 12,
                              fontWeight: FontWeight.w400,
                              color: drawertextclr,
                            )
                          : GoogleFonts.poppins(
                              fontSize: shortestSide > 600 ? 12.sp : 14,
                              fontWeight: FontWeight.w400,
                              color: drawertextclr),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: appLanguage == 'en'
                          ? EdgeInsets.all(0.0)
                          : EdgeInsets.only(top: 5),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Transform.scale(
                          scale: shortestSide < 600 ? 0.5 : 0.7,
                          child: CupertinoSwitch(
                            activeColor: Color(0xff00A2FF),
                            value: faceidValue,
                            onChanged: (value) {
                              if (value == true)
                                settingsDiaglouge(false);
                              else
                                context
                                    .read<BiometricSettingsProivder>()
                                    .setFaceIdSwitchValue(false);
                            },
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
      ],
    );
  }
}
