import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/notifications/view/notification_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  _notificationscreenState createState() => _notificationscreenState();
}

class _notificationscreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: appLanguage == 'en'
                      ? EdgeInsets.fromLTRB(shortestSide < 600 ? 20 : 40,
                          shortestSide < 600 ? 20 : 34, 0, 0)
                      : EdgeInsets.fromLTRB(0, 30, 20, 0),
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
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      translateText('Notification'),
                      textScaleFactor: 1,
                      style: appLanguage == 'ur'
                          ? GoogleFonts.notoNastaliqUrdu(
                              fontSize: shortestSide > 600 ? 16.sp : 18,
                              fontWeight: FontWeight.w500,
                              color: blueColor,
                            )
                          : GoogleFonts.poppins(
                              fontSize: shortestSide > 600 ? 18.sp : 20,
                              fontWeight: FontWeight.w500,
                              color: blueColor),
                    ),
                  ),
                ),
                // Align(
                //   alignment: Alignment.centerRight,
                //   child: Padding(
                //       padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                //       child: TextButton(
                //           onPressed: () {},
                //           child: Text(
                //             'Clear All',
                //             style: GoogleFonts.poppins(
                //                 fontSize: 10,
                //                 fontWeight: FontWeight.w500,
                //                 color: Color(0xff00A2FF)),
                //           ))),
                // ),
                // Align(
                //   alignment: appLanguage == 'en'
                //       ? Alignment.centerRight
                //       : Alignment.centerLeft,
                //   child: Padding(
                //     padding: appLanguage == 'en'
                //         ? EdgeInsets.fromLTRB(0, 10, 20, 0)
                //         : EdgeInsets.fromLTRB(20, 20, 0, 0),
                //     child: TextButton.icon(
                //         onPressed: () {
                //           removeAllNotifications(context);
                //         },
                //         icon: FaIcon(
                //           FontAwesomeIcons.trashCan,
                //           size: 15,
                //           color: backicon,
                //         ),
                //         label: Text(
                //           translateText('Clear_All'),
                //           style: GoogleFonts.poppins(
                //               fontSize: 10,
                //               fontWeight: FontWeight.w400,
                //               color: backicon),
                //         )),
                //   ),
                // ),
              ],
            ),
            CustomSizeBox(10),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Divider(),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/images/notification icon.svg',
                  width: shortestSide > 600 ? 50.sp : 60,
                  height: shortestSide > 600 ? 50.sp : 60,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: NotificationsView(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
