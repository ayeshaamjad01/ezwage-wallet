import 'dart:convert';
import 'dart:io';

import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/authentication_navigation.dart';
import 'package:ezwage/global/navigations/email_navigation.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/navigations/privacy_policy_navigation.dart';
import 'package:ezwage/global/navigations/profile_navigation.dart';
import 'package:ezwage/global/navigations/settings_navigation.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/utils/logo_loader.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/global/utils/url_profile_image.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/global/views/drawer/biometric_settings.dart';
import 'package:ezwage/global/views/drawer/biometric_settings_provider.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/company_logo.dart';
import 'package:ezwage/helper/image_url_headers.dart';
import 'package:ezwage/helper/push_notification_service_check.dart';
import 'package:ezwage/helper/url.dart';
import 'package:ezwage/ui/accounts/models/accounts_model.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';
import 'package:ezwage/ui/home/model/notification_timer.dart';
import 'package:ezwage/ui/profile/model/profile_page_navigation.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../../../ui/account_statment/view/account_statment_scereen.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  logOut(BuildContext context) {
    if (notificationTimer != null) notificationTimer!.cancel();
    if (checkPushNotificationServiceEnablity() == true)
      FirebaseMessaging.instance.unsubscribeFromTopic(
          preferences.get('notificationSubscription').toString());
    navigateToAuthenticationScreen(context);

    // if (LoginModel.remember == false) {
    //   preferences.delete('userEmail');
    //   preferences.delete('userPassword');
    //   preferences.delete('user_img');
    //   LoginModel.email = null;
    //   LoginModel.password = null;
    //   urlProfileImage = 'Default';
    // }
  }

  String _pathOfImage = '';
  XFile? _fileImagPicker;
  _pickImageFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    try {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return LogoLoader();
          });
      _fileImagPicker = await _picker.pickImage(
          source: ImageSource.gallery, imageQuality: Platform.isIOS ? 1 : 100);
      if (_fileImagPicker != null) {
        final File file = File(_fileImagPicker!.path);
        final result = await FlutterImageCompress.compressAndGetFile(
          file.path,
          '${file.path}/compressed_${file.uri.pathSegments.last}',
          quality: Platform.isIOS ? 5 : 50,
        );

        File compressedFile = File(result!.path);
        _pathOfImage = compressedFile.path.toString();
        _uploadImageOnServer();
      } else {
        Navigator.pop(context);
      }
    } on Exception catch (_) {
      CustomSnackBar(false)
          .showInSnackBar(translateText('Photos_Library_Not_Access'), context);
      Navigator.pop(context);
    }
  }

  _uploadImageOnServer() async {
    var request = http.MultipartRequest(
        'PATCH',
        Uri.parse(BASE_URL +
            'users/updateprofilepicture/' +
            preferences.get('id').toString()));

    String? userToken = preferences.get('token');
    Map<String, String> headers;
    headers = {
      "Accept": "*/*",
      'Content-Type': 'multipart/form-data',
      "Authorization": "Bearer $userToken",
      'traceid': ApiFunctions().traceid,
    };
    request.files.add(await http.MultipartFile.fromPath(
      'file',
      _pathOfImage,
    ));
    request.headers.addAll(headers);
    try {
      var newResponse = await request.send();
      if (newResponse.statusCode == 200) {
        // ignore: unused_local_variable
        final respStr = await newResponse.stream.bytesToString();
        sleep(const Duration(seconds: 2));
        http.Response response = await ApiFunctions().getRequest(
            'users/getuserprofile/' + preferences.get('id').toString(),
            context);
        if (response.statusCode == 200) {
          var jsonDecoded = jsonDecode(response.body);
          urlProfileImage =
              GET_FILE_URL + jsonDecoded['results']['data']['user_img'];
          navigateToCustomNavigationBar(context, 2);
        }
      } else {
        Navigator.pop(context);
        CustomSnackBar(false).showInSnackBar(
            translateText('Picture_format_not_supported'), context);
      }
    } catch (e) {
      Navigator.pop(context);
      CustomSnackBar(false).showInSnackBar(
          translateText('Picture_format_not_supported'), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      //  extendBody: true,
      body: Container(
        color: Colors.white,
        // height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
                child: Column(
              children: [
                CustomSizeBox(60),
                userComapnyLogo != ''
                    ? Image.network(
                        userComapnyLogo,
                        headers: IMAGE_HEADERS,
                        errorBuilder: (context, error, stackTrace) {
                          return SvgPicture.asset(
                            'assets/images/ezwage_new_color_logo.svg',
                            width: shortestSide > 600 ? 50.sp : 50,
                            height: shortestSide > 600 ? 50.sp : 50,
                            fit: BoxFit.fill,
                          );
                        },
                        width: shortestSide > 600 ? 120.sp : 150,
                        height: shortestSide > 600 ? 50.sp : 70,
                      )
                    : SvgPicture.asset(
                        'assets/images/ezwage_new_color_logo.svg ',
                        width: shortestSide > 600 ? 50.sp : 50,
                        height: shortestSide > 600 ? 50.sp : 50,
                        fit: BoxFit.fill,
                      ),
                CustomSizeBox(40),

                Row(
                  children: [
                    Align(
                      alignment: appLanguage == 'en'
                          ? Alignment.topLeft
                          : Alignment.topRight,
                      child: Padding(
                        padding: appLanguage == 'en'
                            ? EdgeInsets.only(left: 20.0, right: 15, bottom: 20)
                            : EdgeInsets.only(
                                left: 15.0, right: 25, bottom: 20),
                        child: GestureDetector(
                          onTap: () {
                            _pickImageFromGallery();
                          },
                          child: Stack(
                            children: [
                              if (urlProfileImage != 'Default')
                                Container(
                                  width: shortestSide < 600 ? 62.0 : 62.0.sp,
                                  height: shortestSide < 600 ? 62.0 : 62.0.sp,
                                  child: Container(
                                    width: shortestSide < 600 ? 62.0 : 62.0.sp,
                                    height: shortestSide < 600 ? 62.0 : 62.0.sp,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50.0)),
                                    ),
                                    child: ClipOval(
                                      child: Image.network(
                                        urlProfileImage,
                                        fit: BoxFit.cover,
                                        width:
                                            shortestSide < 600 ? 62.0 : 62.0.sp,
                                        height:
                                            shortestSide < 600 ? 62.0 : 62.0.sp,
                                        headers: IMAGE_HEADERS,
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return Icon(
                                            Icons.account_circle,
                                            color: blueColor,
                                            size: shortestSide < 600
                                                ? 62.0
                                                : 62.0.sp,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              if (urlProfileImage == 'Default')
                                Container(
                                  width: shortestSide < 600 ? 62.0 : 62.0.sp,
                                  height: shortestSide < 600 ? 62.0 : 62.0.sp,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                  ),
                                  child: Icon(
                                    Icons.account_circle,
                                    color: blueColor,
                                    size: shortestSide < 600 ? 62.0 : 62.0.sp,
                                  ),
                                ),
                              Padding(
                                padding: shortestSide < 600
                                    ? EdgeInsets.fromLTRB(40, 40, 0, 0)
                                    : EdgeInsets.fromLTRB(40.sp, 40.sp, 0, 0),
                                child: SvgPicture.asset(
                                  "assets/images/camera_icon.svg",
                                  width: shortestSide > 599 ? 20.sp : 25,
                                  height: shortestSide > 599 ? 20.sp : 25,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: shortestSide < 600 ? 200 : 120.sp,
                      child: Column(
                        children: [
                          RichText(
                              textScaleFactor: 1,
                              textAlign: appLanguage == 'en'
                                  ? TextAlign.left
                                  : TextAlign.right,
                              text: TextSpan(
                                  text: '${LoginModel.userName} \n',
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: shortestSide < 600 ? 20 : 14.sp,
                                      color: Color(0xff00A2FF)),
                                  children: [
                                    TextSpan(
                                      text: LoginModel.employeeType.toString() +
                                          '\n',
                                      style: appLanguage == 'en'
                                          ? GoogleFonts.inter(
                                              fontWeight: FontWeight.w400,
                                              fontSize: shortestSide < 600
                                                  ? 12
                                                  : 8.sp,
                                              height: 2,
                                              color: Color(0xff00A2FF))
                                          : GoogleFonts.notoNastaliqUrdu(
                                              fontWeight: FontWeight.w400,
                                              fontSize: shortestSide < 600
                                                  ? 12
                                                  : 8.sp,
                                              height: 2,
                                              color: Color(0xff00A2FF)),
                                    ),
                                    TextSpan(
                                      text:
                                          // 'Account: ' +
                                          AccountsModel.bankIban.toString(),
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize:
                                              shortestSide < 600 ? 12 : 8.sp,
                                          height: 1.5,
                                          color: Color(0xff00A2FF)),
                                    ),
                                  ])),

                          // Text(
                          //   '${LoginModel.userFirstName} ${LoginModel.userLastName}',
                          //   textAlign: TextAlign.left,
                          //   style: GoogleFonts.inter(
                          //       fontWeight: FontWeight.w600,
                          //       fontSize: 20,
                          //       color: Color(0xff00A2FF)),
                          // ),
                          // Text(
                          //   LoginModel.employeeType.toString(),
                          //   textAlign: TextAlign.left,
                          //   style: GoogleFonts.inter(
                          //       fontWeight: FontWeight.w400,
                          //       fontSize: 12,
                          //       color: Color(0xff00A2FF)),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
                // CustomSizeBox(5),
              ],
            )),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Divider(),
            ),
            // CustomSizeBox(10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15, top: 4),
                      child: Column(
                        children: [
                          CustomSizeBox(shortestSide > 600 ? 12.sp : 15),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Personal Info',
                                textScaleFactor: 1,
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: shortestSide < 600 ? 13 : 13.sp),
                              ),
                            ),
                          ),
                          CustomSizeBox(20),
                          GestureDetector(
                            onTap: () {
                              profilePageToBeNavigate = 'Home';
                              navigateToProfileScreen(context);
                            },
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: appLanguage == 'en'
                                          ? EdgeInsets.all(0.0)
                                          : EdgeInsets.only(top: 5),
                                      child: shortestSide > 600
                                          ? SvgPicture.asset(
                                              'assets/images/profile icon.svg',
                                              height: 15.sp,
                                              fit: BoxFit.fitHeight)
                                          : SvgPicture.asset(
                                              'assets/images/profile icon.svg'),
                                    )),
                                Expanded(
                                  flex: 8,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      translateText('Profile'),
                                      textScaleFactor: 1,
                                      style: appLanguage == 'ur'
                                          ? GoogleFonts.notoNastaliqUrdu(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 12,
                                              fontWeight: FontWeight.w400,
                                              color: drawertextclr,
                                            )
                                          : GoogleFonts.poppins(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 14,
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
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Color(0xff00A2FF),
                                        size: shortestSide < 600 ? 25 : 25.sp,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          CustomSizeBox(20),
                          GestureDetector(
                            onTap: () {
                              navigateToCustomNavigationBar(context, 3);
                            },
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: appLanguage == 'en'
                                          ? EdgeInsets.all(0.0)
                                          : EdgeInsets.only(top: 5),
                                      child: shortestSide > 600
                                          ? SvgPicture.asset(
                                              'assets/images/transaction_history_icon.svg',
                                              height: 15.sp,
                                              fit: BoxFit.fitHeight)
                                          : SvgPicture.asset(
                                              'assets/images/transaction_history_icon.svg'),
                                    )),
                                Expanded(
                                  flex: 8,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      translateText('Transactions_History'),
                                      textScaleFactor: 1,
                                      style: appLanguage == 'ur'
                                          ? GoogleFonts.notoNastaliqUrdu(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 12,
                                              fontWeight: FontWeight.w400,
                                              color: drawertextclr,
                                            )
                                          : GoogleFonts.poppins(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 14,
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
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Color(0xff00A2FF),
                                        size: shortestSide < 600 ? 25 : 25.sp,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          CustomSizeBox(20),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AccountStatementScreen()));
                            },
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: appLanguage == 'en'
                                          ? EdgeInsets.all(0.0)
                                          : EdgeInsets.only(top: 5),
                                      child: shortestSide > 600
                                          ? SvgPicture.asset(
                                              'assets/images/account_statement.svg',
                                              height: 15.sp,
                                              fit: BoxFit.fitHeight)
                                          : SvgPicture.asset(
                                              'assets/images/account_statement.svg'),
                                    )),
                                Expanded(
                                  flex: 8,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      translateText('Account_Statment'),
                                      textScaleFactor: 1,
                                      style: appLanguage == 'ur'
                                          ? GoogleFonts.notoNastaliqUrdu(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 12,
                                              fontWeight: FontWeight.w400,
                                              color: drawertextclr,
                                            )
                                          : GoogleFonts.poppins(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 14,
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
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Color(0xff00A2FF),
                                        size: shortestSide < 600 ? 25 : 25.sp,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          CustomSizeBox(20),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Security',
                                textScaleFactor: 1,
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: shortestSide < 600 ? 13 : 13.sp),
                              ),
                            ),
                          ),
                          CustomSizeBox(20),
                          GestureDetector(
                            onTap: () {
                              navigateToSettingsScreen(context);
                            },
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: shortestSide > 600
                                        ? SvgPicture.asset(
                                            'assets/images/settings.svg',
                                            height: 15.sp,
                                            fit: BoxFit.fitHeight)
                                        : SvgPicture.asset(
                                            'assets/images/settings.svg')),
                                Expanded(
                                  flex: 8,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      translateText('Settings'),
                                      textScaleFactor: 1,
                                      style: appLanguage == 'ur'
                                          ? GoogleFonts.notoNastaliqUrdu(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 12,
                                              fontWeight: FontWeight.w400,
                                              color: drawertextclr,
                                            )
                                          : GoogleFonts.poppins(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 14,
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
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Color(0xff00A2FF),
                                        size: shortestSide < 600 ? 25 : 25.sp,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          ChangeNotifierProvider<BiometricSettingsProivder>(
                              create: (_) => BiometricSettingsProivder(),
                              child: BiometicSettings()),
                          CustomSizeBox(20),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Support and Legal',
                                textScaleFactor: 1,
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: shortestSide < 600 ? 13 : 13.sp),
                              ),
                            ),
                          ),
                          CustomSizeBox(20),
                          GestureDetector(
                            onTap: () {
                              navigateToPrivacyPolicyScreen(context);
                            },
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: appLanguage == 'en'
                                          ? EdgeInsets.all(0.0)
                                          : EdgeInsets.only(top: 5),
                                      child: shortestSide > 600
                                          ? SvgPicture.asset(
                                              'assets/images/privacy poicy.svg',
                                              height: 15.sp,
                                              fit: BoxFit.fitHeight)
                                          : SvgPicture.asset(
                                              'assets/images/privacy poicy.svg'),
                                    )),
                                Expanded(
                                  flex: 8,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      translateText('Privacy_Policy'),
                                      textScaleFactor: 1,
                                      style: appLanguage == 'ur'
                                          ? GoogleFonts.notoNastaliqUrdu(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 12,
                                              fontWeight: FontWeight.w400,
                                              color: drawertextclr,
                                            )
                                          : GoogleFonts.poppins(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 14,
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
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Color(0xff00A2FF),
                                        size: shortestSide < 600 ? 25 : 25.sp,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          CustomSizeBox(20),
                          GestureDetector(
                            onTap: () {
                              navigateToEmailScreen(context);
                            },
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: appLanguage == 'en'
                                          ? EdgeInsets.all(0.0)
                                          : EdgeInsets.only(top: 5),
                                      child: shortestSide > 600
                                          ? SvgPicture.asset(
                                              'assets/images/contact_us_icon.svg',
                                              height: 15.sp,
                                              fit: BoxFit.fitHeight)
                                          : SvgPicture.asset(
                                              'assets/images/contact_us_icon.svg'),
                                    )),
                                Expanded(
                                  flex: 8,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      translateText('Contact_Us'),
                                      textScaleFactor: 1,
                                      style: appLanguage == 'ur'
                                          ? GoogleFonts.notoNastaliqUrdu(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 12,
                                              fontWeight: FontWeight.w400,
                                              color: drawertextclr,
                                            )
                                          : GoogleFonts.poppins(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 14,
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
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Color(0xff00A2FF),
                                        size: shortestSide < 600 ? 25 : 25.sp,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          CustomSizeBox(shortestSide > 600 ? 12.sp : 15),

                          // CustomSizeBox(15),
                          // GestureDetector(
                          //   onTap: () {
                          //     navigateToCustomNavigationBar(context, 4);
                          //   },
                          //   child: Row(
                          //     children: [
                          //       Expanded(
                          //           flex: 1,
                          //           child: Image.asset(
                          //               'assets/images/contact us.png')),
                          //       Expanded(
                          //         flex: 9,
                          //         child: Padding(
                          //           padding: const EdgeInsets.only(left: 8.0),
                          //           child: Text(
                          //             translateText('Contact_Us'),
                          //             style: appLanguage == 'ur'
                          //                 ? GoogleFonts.notoNastaliqUrdu(
                          //                     fontSize: 11,
                          //                     fontWeight: FontWeight.w400,
                          //                     color: drawertextclr,
                          //                   )
                          //                 : GoogleFonts.poppins(
                          //                     fontSize: 14,
                          //                     fontWeight: FontWeight.w400,
                          //                     color: drawertextclr),
                          //           ),
                          //         ),
                          //       )
                          //     ],
                          //   ),
                          // ),
                          // CustomSizeBox(15),

                          CustomSizeBox(15),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 5.0, right: 5),
                          //   child: Divider(
                          //     height: 2,
                          //   ),
                          // ),
                          // CustomSizeBox(shortestSide > 600 ? 12.sp : 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Theme(
                                data: ThemeData(
                                  elevatedButtonTheme: ElevatedButtonThemeData(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff00A2FF)),
                                  ),
                                ),
                                child: SizedBox(
                                  height: shortestSide < 600 ? 30 : 30.sp,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      logOut(context);
                                    },
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          // Change your radius here
                                          borderRadius: BorderRadius.circular(
                                              shortestSide < 600 ? 5 : 5.sp),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      translateText('Logout'),
                                      textScaleFactor: 1,
                                      style: appLanguage == 'en'
                                          ? GoogleFonts.inter(
                                              fontWeight: FontWeight.w500,
                                              fontSize: shortestSide < 600
                                                  ? 10
                                                  : 10.sp)
                                          : GoogleFonts.notoNastaliqUrdu(
                                              fontWeight: FontWeight.w500,
                                              fontSize: shortestSide < 600
                                                  ? 10
                                                  : 10.sp),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // CustomSizeBox(60),
                          // Divider(),
                          // CustomSizeBox(100),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
