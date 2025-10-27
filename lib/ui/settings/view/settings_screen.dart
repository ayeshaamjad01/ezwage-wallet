import 'package:ezwage/ui/settings/controller/settings_provider.dart';
import 'package:ezwage/ui/settings/view/settings_view.dart';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/header.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _settingsscreenState createState() => _settingsscreenState();
}

class _settingsscreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: header(Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
                        child: Stack(
                          children: [
                            Padding(
                              padding: appLanguage == 'en'
                                  ? EdgeInsets.fromLTRB(
                                      shortestSide < 600 ? 10 : 40,
                                      shortestSide < 600 ? 0 : 15,
                                      0,
                                      0)
                                  : EdgeInsets.fromLTRB(0, 2, 10, 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                  navigateToCustomNavigationBar(context, 2);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: backicon.withOpacity(0.2),
                                          width: 1),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                    padding: appLanguage == 'en'
                                        ? EdgeInsets.only(
                                            left:
                                                shortestSide < 600 ? 10.0 : 15,
                                            top: 3,
                                            bottom: 3)
                                        : EdgeInsets.only(
                                            right: 10.0, top: 3, bottom: 3),
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
                            Center(
                              child: Text(
                                translateText('Settings'),
                                textScaleFactor: 1,
                                style: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        color: blueColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                            shortestSide > 600 ? 16.sp : 18)
                                    : GoogleFonts.poppins(
                                        color: blueColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                            shortestSide > 600 ? 18.sp : 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Divider(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      height: double.infinity,
                      // height: MediaQuery.of(context).size.height / 1.35,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ListView(
                          children: [
                            ChangeNotifierProvider<SettingsProvider>(
                                create: (_) => SettingsProvider(),
                                child: SettingsView()),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
