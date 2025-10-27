import 'dart:async';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/ui/authentication/view/authscreen_create.dart';
import 'package:ezwage/ui/onboard_screens/onboard_screen.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/views/bill_payment_page.dart';
import 'package:ezwage/ui/wallet/load_and_packages/controller/mobile_package_controller.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/view/wallet_onboading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../wallet/homepage/view/wallet_homepage.dart';
import '../../wallet/load_and_packages/view/mobile_package_page.dart';
import '../../wallet/topup_and_request/view/topup_options_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer(
    //     Duration(seconds: 3),
    //         () => Navigator.of(context).pushReplacement(MaterialPageRoute(
    //         builder: (BuildContext context) => TopUpOptionsPage())));


    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => WalletOnboading())));

    // Timer(
    //     Duration(seconds: 3),
    //         () => Navigator.of(context).pushReplacement(MaterialPageRoute(
    //         builder: (BuildContext context) => WalletOnboading())));
    //



    // if (preferences.get('startup_session') != null) {
    //   Timer(
    //       Duration(seconds: 3),
    //       () => Navigator.of(context).pushReplacement(MaterialPageRoute(
    //           builder: (BuildContext context) => AuthScreenCreate())));
    // } else {
    //   Timer(
    //       Duration(seconds: 3),
    //       () => Navigator.of(context).pushReplacement(MaterialPageRoute(
    //           builder: (BuildContext context) => OnBoardScreens())));
    // }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SvgPicture.asset(
                  "assets/images/ezwage_new_color_logo.svg",
                  height: shortestSide > 600 ? 60.sp : 60,
                  width: shortestSide > 600 ? 120.sp : 120,
                ),
              ),
              Spacer(),
              Text(
                'Everyday is Payday',
                style: GoogleFonts.poppins(
                  fontSize: shortestSide > 600 ? 18.sp : 18,
                  fontWeight: FontWeight.w600,
                  color: blueColor,
                ),
              ),
              CustomSizeBox(40)
            ],
          ),
        ),
      ),
    );
  }
}
