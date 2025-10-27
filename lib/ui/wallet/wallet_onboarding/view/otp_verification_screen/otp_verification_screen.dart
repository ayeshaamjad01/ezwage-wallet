import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/dismiss_on_captured_taps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/app_colors.dart';
import '../../controller/wallet_onboarding_provider.dart';

import '../../controller/wallet_onboarding_provider.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/digit_widget.dart';
import '../../widgets/textfield_with_title.dart';
import 'package:pinput/pinput.dart';

class OTPVerificationScreen extends StatelessWidget {
  OTPVerificationScreen({super.key});

  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WalletOnboardingProvider walletOnboardingPro =
        Provider.of<WalletOnboardingProvider>(context);

    return
    //   ChangeNotifierProvider(
    //     create: (context) => WalletOnboardingProvider()
    //   ..accountLinkInquiry(),
    // lazy: false,
    // child:
    Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Verify the sent OTP",
              fontWeight: FontWeight.w700,
              size: 18.sp,
            ),
            SizedBox(height: 10.h),
            Builder(
              builder: (context) {
                final number = walletOnboardingPro.phoneController.text
                    .replaceFirst("0", "");
                return RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16),
                    children: [
                      TextSpan(
                        text: "We have sent a verification code at ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextSpan(
                        text: "+92-${number}",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: double.infinity,
              child: Pinput(
                length: 5,
                defaultPinTheme: PinTheme(
                  // width: 50,
                  height: 60,
                  textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  // width: 50,
                  height: 60,
                  textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black),
                  ),
                ),
                onChanged: (value) {
                  walletOnboardingPro.updateOtp(value);
                },
                onCompleted: (pin) {},
              ),
            ),
            Expanded(child: SizedBox()),
            DismissOnCapturedTaps(
              child: Column(
                children: [
                  CustomButtonWidget(
                    title: "Verify OTP",
                    onPressed: () {
                      if (walletOnboardingPro.isOtpValid) {
                        context.read<WalletOnboardingProvider>().nextStep();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Invalid OTP. Please try again.'),
                          ),
                        );
                      }
                    },
                    backgroundColor: AppColors.buttonBgColor,
                  ),
                  10.verticalSpace,
                  DigitWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
