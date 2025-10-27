import 'package:ezwage/ui/privacy_policy/controller/privacy_policy_controller.dart';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/privacy_policy/view/privacy_policy_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  _privacypolicyscreenState createState() => _privacypolicyscreenState();
}

class _privacypolicyscreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: appLanguage == 'en'
                        ? EdgeInsets.fromLTRB(shortestSide < 600 ? 20 : 40,
                            shortestSide < 600 ? 20 : 34, 0, 0)
                        : EdgeInsets.fromLTRB(0, 25, 20, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: backicon.withOpacity(0.2), width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: appLanguage == 'en'
                              ? EdgeInsets.only(
                                  left: shortestSide < 600 ? 10.0 : 15,
                                  top: 3,
                                  bottom: 3)
                              : EdgeInsets.only(right: 10.0, top: 3, bottom: 3),
                          child: shortestSide > 600
                              ? Icon(
                                  Icons.arrow_back_ios,
                                  color: backicon,
                                  size: 15.sp,
                                )
                              : Icon(
                                  Icons.arrow_back_ios,
                                  color: backicon,
                                ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: Text(
                        translateText('Privacy_Policy'),
                        textScaleFactor: 1,
                        style: appLanguage == 'ur'
                            ? GoogleFonts.notoNastaliqUrdu(
                                color: newblueColor,
                                fontWeight: FontWeight.w500,
                                fontSize: shortestSide > 600 ? 16.sp : 18,
                              )
                            : GoogleFonts.poppins(
                                color: newblueColor,
                                fontWeight: FontWeight.w500,
                                fontSize: shortestSide > 600 ? 18.sp : 20),
                      ),
                    ),
                  ),
                ],
              ),
              CustomSizeBox(10),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Divider(
                  height: 2,
                ),
              ),
              CustomSizeBox(30),
              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SvgPicture.asset(
                        'assets/images/securtiy icon.svg',
                        width: shortestSide > 600 ? 50.sp : 60,
                        height: shortestSide > 600 ? 50.sp : 60,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          0, shortestSide > 600 ? 50.sp : 60, 0, 0),
                      child: Center(
                          child: ChangeNotifierProvider<PrivacyPolicyProvider>(
                              create: (_) => PrivacyPolicyProvider(),
                              child: PrivacyPolicyView())),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
