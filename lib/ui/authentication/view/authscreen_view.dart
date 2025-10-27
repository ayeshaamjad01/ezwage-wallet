import 'dart:io';

import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/locale_provider.dart';
import 'package:ezwage/ui/authentication/controller/authscreen_tab_controller.dart';
import 'package:ezwage/ui/authentication/controller/login_provider.dart';
import 'package:ezwage/ui/authentication/view/login_screen.dart';
import 'package:ezwage/ui/authentication/view/signup_screen.dart';
import 'package:ezwage/ui/update_dialouge/controller/update_dialouge_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../global/navigations/wallet_onboarding.dart';
import '../../wallet/wallet_onboarding/controller/wallet_onboarding_provider.dart';
import '../../wallet/wallet_onboarding/view/wallet_onboading.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with TickerProviderStateMixin {
  bool _signupPage = false;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      if (tabController.index == 1) {
        _signupPage = true;
        context.read<LoginProvider>().changeScreenType('Create An Account');
        context.read<LoginProvider>().setSignUpScreen('Next');
      } else {
        _signupPage = false;
        context.read<LoginProvider>().changeScreenType('');
        context.read<LoginProvider>().setSignUpScreen('Next');
        context.read<LoginProvider>().setAgreementStatus(false);
        context.read<LoginProvider>().setSignUpButtonStatus(false);
        context.read<LoginProvider>().setSignUpNext(false);
      }
    });
    Future.delayed(Duration.zero, () {
      if (Platform.isAndroid == true)
        UpdateDialougeController.getAppVersion(context);
    });
  }

  _setAppLanguageStatus() {
    preferences.put('language', appLanguage).toString();
  }

  Future<bool> willPopCalled() {
    return exit(0);
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    String currentAuthScreenTab = context.watch<LoginProvider>().screenType;
    return WillPopScope(
      onWillPop: willPopCalled,
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          bottom: false,
          child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/splash.png',
                      ),
                      fit: BoxFit.cover)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Container(
                              width: 110,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: blueColor,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(children: [
                                GestureDetector(
                                  onTap: () {
                                    appLanguage = 'en';
                                    context
                                        .read<LocaleProvider>()
                                        .setAppLocale(appLanguage);
                                    _setAppLanguageStatus();
                                  },
                                  child: Container(
                                    width: 55,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: appLanguage == 'en'
                                            ? Colors.white
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: appLanguage == 'en'
                                          ? EdgeInsets.fromLTRB(12, 7, 0, 0)
                                          : EdgeInsets.fromLTRB(0, 5, 12, 0),
                                      child: Text(
                                        'Eng',
                                        style: TextStyle(
                                            color: appLanguage == 'en'
                                                ? blueColor
                                                : Colors.white),
                                        textScaleFactor: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    appLanguage = 'ur';
                                    context
                                        .read<LocaleProvider>()
                                        .setAppLocale(appLanguage);
                                    _setAppLanguageStatus();
                                  },
                                  child: Container(
                                    width: 55,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: appLanguage == 'ur'
                                            ? Colors.white
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
                                      child: Center(
                                        child: Text(
                                          'اردو',
                                          style: GoogleFonts.notoNastaliqUrdu(
                                              fontSize: 10,
                                              color: appLanguage == 'ur'
                                                  ? blueColor
                                                  : Colors.white),
                                          textScaleFactor: 1,
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
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          // navigateToWalletOnboading(context);
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => WalletOnboading(),));
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChangeNotifierProvider(
                                create: (_) => WalletOnboardingProvider(),
                                child: WalletOnboading(),
                              ),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/images/white_logo_ez_wage.png',
                          height: shortestSide > 600 ? 70.sp : 70,
                          width: shortestSide > 600 ? 150.sp : 150,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: appLanguage == 'en'
                          ? shortestSide > 600
                              ? 25.sp
                              : 25
                          : shortestSide > 600
                              ? 35.sp
                              : 40,
                      child: Column(
                        children: [
                          if (_signupPage == true)
                            Text(
                              currentAuthScreenTab == 'Create An Account'
                                  ? translateText('Create_An_Account')
                                  : currentAuthScreenTab ==
                                          'Enter your password'
                                      ? translateText('Enter_your_password')
                                      : '',
                              style: appLanguage == 'en'
                                  ? GoogleFonts.poppins(
                                      fontSize: shortestSide > 600 ? 12.sp : 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)
                                  : GoogleFonts.notoNastaliqUrdu(
                                      fontSize: shortestSide > 600 ? 10.sp : 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                              textScaleFactor: 1,
                            ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            )),
                        child: DefaultTabController(
                          length: 2,
                          initialIndex: 0,
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
                                child: TabBar(
                                  controller: tabController,
                                  indicatorColor: Color(0xffDB1695),
                                  indicator: UnderlineTabIndicator(
                                      borderSide: BorderSide(
                                          color: Color(0xffDB1695),
                                          width:
                                              shortestSide > 600 ? 1.sp : 2.0),
                                      insets: EdgeInsets.symmetric(
                                          horizontal: shortestSide < 600
                                              ? MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2
                                              : MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.25)),
                                  unselectedLabelColor: Colors.grey,
                                  labelColor: Color(0xffDB1695),
                                  labelStyle: appLanguage == 'en'
                                      ? GoogleFonts.poppins(
                                          fontSize:
                                              shortestSide > 600 ? 12.sp : 14,
                                          fontWeight: FontWeight.w500)
                                      : GoogleFonts.notoNastaliqUrdu(
                                          fontSize:
                                              shortestSide > 600 ? 10.sp : 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  padding: EdgeInsets.zero,
                                  indicatorPadding: appLanguage == 'en'
                                      ? EdgeInsets.all(11)
                                      : EdgeInsets.all(6),
                                  labelPadding: EdgeInsets.fromLTRB(
                                      0, 0, 0, shortestSide > 600 ? 2.sp : 0),
                                  tabs: [
                                    shortestSide > 600
                                        ? Tab(
                                            height: 25.sp,
                                            child: Text(
                                              translateText('Login'),
                                              textScaleFactor: 1,
                                            ),
                                          )
                                        : Tab(
                                            child: Text(
                                              translateText('Login'),
                                              textScaleFactor: 1,
                                            ),
                                          ),
                                    shortestSide > 600
                                        ? Tab(
                                            height: 25.sp,
                                            child: Text(
                                              translateText('Sign_Up'),
                                              textScaleFactor: 1,
                                            ),
                                          )
                                        : Tab(
                                            child: Text(
                                              translateText('Sign_Up'),
                                              textScaleFactor: 1,
                                            ),
                                          ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    shortestSide > 600 ? 8.sp : 0,
                                    shortestSide > 600 ? 30.sp : 50,
                                    shortestSide > 600 ? 8.sp : 0,
                                    0),
                                child: TabBarView(
                                  controller: tabController,
                                  children: [
                                    LoginScreen(),
                                    SignUpScreen(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
