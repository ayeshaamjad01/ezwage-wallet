import 'package:ezwage/ui/wallet/core/enums/load_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../core/enums/reciept_type.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../../custom_widgets/custom_svg_image.dart';
import '../../transfer/view/transfer_status_page.dart';
import '../../wallet_onboarding/widgets/custom_button_widget.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import '../../wallet_onboarding/widgets/textfield_with_title.dart';
import '../controller/load_and_package_provider.dart';

class LoadOtpPage extends StatefulWidget {
  final ReceiptType receiptType;
  const LoadOtpPage({super.key, required this.receiptType});

  @override
  State<LoadOtpPage> createState() => _LoadOtpPageState();
}

class _LoadOtpPageState extends State<LoadOtpPage> {
  String _otp = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      length: 6,
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
                        setState(() => _otp = value);
                      },
                      onCompleted: (pin) {
                        setState(() => _otp = pin);
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
                  if (_otp.length == 6) {
                    Navigator.pop(context, _otp); // ✅ return OTP here
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
  }
}
