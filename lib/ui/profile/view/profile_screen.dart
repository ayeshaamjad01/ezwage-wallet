import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/add_photo_navigation.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/navigations/settings_navigation.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/custom_cliper.dart';
import 'package:ezwage/global/utils/url_profile_image.dart';
import 'package:ezwage/global/views/header.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/image_url_headers.dart';
import 'package:ezwage/ui/profile/model/profile_page_navigation.dart';
import 'package:ezwage/ui/profile/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _profilescreenState createState() => _profilescreenState();
}

class _profilescreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    // final homePro =
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Column(
            children: [

              Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: appLanguage == 'en'
                              ? EdgeInsets.fromLTRB(
                                  shortestSide < 600 ? 20 : 40,
                                  shortestSide < 600 ? 20 : 32,
                                  0,
                                  0)
                              : EdgeInsets.fromLTRB(0, 28, 20, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              if (profilePageToBeNavigate == 'Home') {
                                navigateToCustomNavigationBar(context, 2);
                              } else {
                                navigateToSettingsScreen(context);
                              }
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
                                        left: shortestSide < 600 ? 10.0 : 15,
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
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text(
                              translateText('Profile_Information'),
                              textScaleFactor: 1,
                              style: appLanguage == 'ur'
                                  ? GoogleFonts.notoNastaliqUrdu(
                                      color: blueColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: shortestSide > 600 ? 16.sp : 18,
                                    )
                                  : GoogleFonts.poppins(
                                      color: blueColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          shortestSide > 600 ? 18.sp : 20),
                            ),
                            // CustomTextWidget("Privacy Policy", whitecolor, 20),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(),
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 15,
                          ),
                          child: header(Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                  navigateToAddPhotoScreen(context, 'Profile');
                                },
                                child: urlProfileImage != 'Default'
                                    ? Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 10, 0, 0),
                                        child: Container(
                                          width: shortestSide > 600
                                              ? 70.sp
                                              : 100.0,
                                          height: shortestSide > 600
                                              ? 70.sp
                                              : 100.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                    shortestSide > 600
                                                        ? 50.sp
                                                        : 50.0)),
                                            border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 92, 173, 220),
                                              width: 4.0,
                                            ),
                                          ),
                                          child: CircleAvatar(
                                            radius:
                                                shortestSide > 600 ? 25.sp : 25,
                                            backgroundColor: Colors.white,
                                            child: ClipOval(
                                              child: Image.network(
                                                urlProfileImage,
                                                fit: BoxFit.cover,
                                                width: shortestSide > 600
                                                    ? 70.sp
                                                    : 100,
                                                height: shortestSide > 600
                                                    ? 70.sp
                                                    : 100,
                                                headers: IMAGE_HEADERS,
                                                errorBuilder: (context, error,
                                                    stackTrace) {
                                                  return Icon(
                                                    Icons.account_circle,
                                                    color: blueColor,
                                                    size: shortestSide > 600
                                                        ? 50.sp
                                                        : 60,
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 10, 0, 0),
                                        child: Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50.0)),
                                            border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 92, 173, 220),
                                              width: 4.0,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.account_circle,
                                            color: blueColor,
                                            size:
                                                shortestSide > 600 ? 60.sp : 80,
                                          ),
                                        ),
                                      ),
                              )
                            ],
                          )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: ClipPath(
                    clipper: CustomizedClipper('Profile'),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      // height: MediaQuery.of(context).size.height / 1.35,
                      // width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SingleChildScrollView(child: ProfileView()),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
