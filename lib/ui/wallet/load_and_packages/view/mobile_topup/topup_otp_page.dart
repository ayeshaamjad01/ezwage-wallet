import 'package:ezwage/ui/wallet/load_and_packages/view/mobile_topup/topup_appbar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';
import '../../../custom_widgets/custom_app_bar.dart';
import '../../../wallet_onboarding/widgets/custom_button_widget.dart';
import '../../../wallet_onboarding/widgets/custom_text.dart';
import '../../controller/mobile_topup_controller.dart';

class TopUpOtpPage extends StatefulWidget {
  const TopUpOtpPage({super.key});

  @override
  State<TopUpOtpPage> createState() => _TopUpOtpPageState();
}

class _TopUpOtpPageState extends State<TopUpOtpPage> {
  @override
  Widget build(BuildContext context) {
    final mainProvider = context.watch<MobileTopUpController>();

    return
      Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.onboardingBg),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                children: [
                  50.verticalSpace,
                  const CustomAppBar(title: "Load & Packages"),
                ],
              ),
            ),

            // White card area
            Positioned(
              top: MediaQuery.of(context).size.height * 0.15,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(top: 50.h, left: 16.w, right: 16.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomText(text: "Amount Load", color: Colors.black),
                      10.verticalSpace,
                      CustomText(
                        text: 'PKR 500.00',
                        size: 25.sp,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                      20.verticalSpace,

                      // OTP Field
                      Pinput(
                        length: 5,
                        defaultPinTheme: PinTheme(
                          width: 50,
                          height: 60,
                          textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                        ),
                        focusedPinTheme: PinTheme(
                          width: 50,
                          height: 60,
                          textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                        onChanged: (value) {
                          mainProvider.updateOTP(value);
                        },
                        onCompleted: (pin) {
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Continue Button
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: CustomButtonWidget(
                  radius: 80,
                  title: "Continue",
                  onPressed: () {

                    if (mainProvider.isOtpValid) {
                      mainProvider.navToNextPage();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Invalid OTP. Please try again.'),
                        ),
                      );
                    }


                    if (mainProvider.otp.length == 5) {
                      Navigator.pop(context, mainProvider.otp);
                      context.read<MobileTopUpController>().performMobileTopUp(context);

                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Please enter valid OTP")),
                      );
                    }
                  },
                  backgroundColor: AppColors.buttonBgColor,
                ),
              ),
            ),
          ],
        ),
      );
    //   Scaffold(
    //   body: Stack(
    //     children: [
    //           //       TopUpAppBarView(),
    //
    //           //     ],
    //   ),
    // );
  }
}
