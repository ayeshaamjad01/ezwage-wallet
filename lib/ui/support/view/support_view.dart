import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/email_navigation.dart';
import 'package:ezwage/global/navigations/faq_navigation.dart';
import 'package:ezwage/global/utils/colors.dart';
// import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/utils/set_logout_time.dart';
import 'package:ezwage/global/views/buttons/support_button.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/support/controller/launch_whatsapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:zendesk_messaging/zendesk_messaging.dart';

class SupportView extends StatefulWidget {
  const SupportView({Key? key}) : super(key: key);

  @override
  _supportviewState createState() => _supportviewState();
}

class _supportviewState extends State<SupportView> {
  Color chatinnercolor = whiteColor;
  Color emailinnercolor = Colors.white;
  Color faqinnercolor = Colors.white;

  Color chatlinecolor = whiteColor;
  Color emaillinecolor = whiteColor;
  Color faqlinecolor = whiteColor;

  Color chattextcolor = newblueColor;
  Color emailtextcolor = newblueColor;
  Color faqtextcolor = newblueColor;
  @override
  void dispose() {
    super.dispose();
    chatActive = false;
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: (appLanguage == 'ur')
                ? EdgeInsets.only(top: shortestSide > 600 ? 3.sp : 18.0)
                : EdgeInsets.all(shortestSide > 600 ? 0.sp : 8.0),
            child: Image.asset(
              'assets/images/supportgirl.png',
              width: shortestSide > 600 ? 70.sp : 120,
              height: shortestSide > 600 ? 70.sp : 120,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 130, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSizeBox(shortestSide > 600 ? 35.sp : 10),
              Row(
                children: [
                  Spacer(),
                  Text(
                    translateText('Are_you_facing_difficulties?'),
                    textScaleFactor: 1,
                    style: appLanguage == 'ur'
                        ? GoogleFonts.notoNastaliqUrdu(
                            fontSize: shortestSide > 600 ? 12.sp : 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff00A2FF),
                          )
                        : GoogleFonts.poppins(
                            fontSize: shortestSide > 600 ? 12.sp : 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff00A2FF)),
                  ),
                  Spacer(),
                ],
              ),
              CustomSizeBox(10),
              Text(
                translateText(
                    'In_case_of_any_queries,_feel_free_to_connect_with_us_via_the_following_options'),
                textScaleFactor: 1,
                style: appLanguage == 'ur'
                    ? GoogleFonts.notoNastaliqUrdu(
                        fontSize: shortestSide > 600 ? 12.sp : 11,
                        fontWeight: FontWeight.w500,
                      )
                    : GoogleFonts.poppins(
                        fontSize: shortestSide > 600 ? 12.sp : 13,
                        fontWeight: FontWeight.w500,
                      ),
                textAlign: TextAlign.center,
              ),
              CustomSizeBox(25),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: SupportButton(() {}, () {
                  // if (preferences.get('zendesk_chat') != null)
                  //   ZendeskMessaging.logoutUser();
                  // ZendeskMessaging.show();
                  // preferences.put('zendesk_chat', 'true');
                  // chatActive = true;
                  LaunchWhatsapp.launchWhatsapp(context);
                },
                    whiteColor,
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 5, left: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: (appLanguage == 'ur')
                                      ? const EdgeInsets.only(right: 15.0)
                                      : const EdgeInsets.all(0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 8.0, top: 8),
                                    child: shortestSide > 600
                                        ? Image.asset(
                                            'assets/images/whatsapp_icon.png',
                                            height: 20.sp,
                                            fit: BoxFit.cover,
                                          )
                                        : Image.asset(
                                            'assets/images/whatsapp_icon.png',
                                            height: 20,
                                          ),
                                  ),
                                ),
                                Padding(
                                  padding: appLanguage == 'en'
                                      ? EdgeInsets.only(
                                          left:
                                              shortestSide > 600 ? 12.sp : 30.0)
                                      : EdgeInsets.only(right: 30.0),
                                  child: Text(
                                    translateText(
                                        'Live_Chat_with_Customer_Support'),
                                    style: appLanguage == 'ur'
                                        ? GoogleFonts.notoNastaliqUrdu(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 10,
                                            fontWeight: FontWeight.w400,
                                            color: supporttextclr)
                                        : GoogleFonts.poppins(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 12,
                                            fontWeight: FontWeight.w400,
                                            color: supporttextclr),
                                    textScaleFactor: 1,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              CustomSizeBox(shortestSide > 600 ? 12.sp : 20),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: SupportButton(() {}, () {
                  chatActive = false;
                  navigateToEmailScreen(context);
                },
                    emailinnercolor,
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 5, left: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: (appLanguage == 'ur')
                                      ? const EdgeInsets.only(right: 15.0)
                                      : const EdgeInsets.all(0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 8.0, top: 8),
                                    child: shortestSide > 600
                                        ? SvgPicture.asset(
                                            'assets/images/mail.svg',
                                            height: 20.sp,
                                            fit: BoxFit.cover,
                                          )
                                        : SvgPicture.asset(
                                            'assets/images/mail.svg'),
                                  ),
                                ),
                                Padding(
                                  padding: appLanguage == 'en'
                                      ? EdgeInsets.only(left: 30.0)
                                      : EdgeInsets.only(right: 30.0),
                                  child: Text(
                                    translateText('Contact_Us_By_Email'),
                                    style: appLanguage == 'ur'
                                        ? GoogleFonts.notoNastaliqUrdu(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 10,
                                            fontWeight: FontWeight.w400,
                                            color: supporttextclr,
                                          )
                                        : GoogleFonts.poppins(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 12,
                                            fontWeight: FontWeight.w400,
                                            color: supporttextclr),
                                    textScaleFactor: 1,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              CustomSizeBox(shortestSide > 600 ? 12.sp : 20),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: SupportButton(() {}, () {
                  chatActive = false;
                  navigateToFaqScreen(context);
                },
                    faqinnercolor,
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 5, left: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: (appLanguage == 'ur')
                                      ? const EdgeInsets.only(right: 15.0)
                                      : const EdgeInsets.all(0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 8.0, top: 8),
                                    child: shortestSide > 600
                                        ? SvgPicture.asset(
                                            'assets/images/faq_icon.svg',
                                            height: 20.sp,
                                            fit: BoxFit.cover,
                                          )
                                        : SvgPicture.asset(
                                            'assets/images/faq_icon.svg'),
                                  ),
                                ),
                                Padding(
                                  padding: appLanguage == 'en'
                                      ? EdgeInsets.only(
                                          left:
                                              shortestSide > 600 ? 20.sp : 30.0)
                                      : EdgeInsets.only(right: 30.0),
                                  child: Text(
                                    translateText('FAQs'),
                                    style: appLanguage == 'ur'
                                        ? GoogleFonts.notoNastaliqUrdu(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 10,
                                            fontWeight: FontWeight.w400,
                                            color: supporttextclr,
                                          )
                                        : GoogleFonts.poppins(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 12,
                                            fontWeight: FontWeight.w400,
                                            color: supporttextclr),
                                    textScaleFactor: 1,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
