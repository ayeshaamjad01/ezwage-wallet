import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';
import '../../../custom_widgets/custom_svg_image.dart';
import '../../controller/wallet_onboarding_provider.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/custom_text.dart';

class ReviewSelfieScreen extends StatelessWidget {
  const ReviewSelfieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WalletOnboardingProvider walletOnboardingPro =
    Provider.of<WalletOnboardingProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: "Review Selfie screen", fontWeight: FontWeight.w700, size: 18.sp,),
            CustomText(text: "Selfie Captured. Make sure the picture is clear & without glasses.", color: Colors.grey, textAlign: TextAlign.center,),
            walletOnboardingPro.selfieBase64 != null
                ? Image.memory(
              base64Decode(walletOnboardingPro.selfieBase64!),
              height: 220.h,
              width: double.infinity,
              fit: BoxFit.cover,
            )
                : CustomPngImage(assetPath: AppImages.selfie, height: 220.h, width: double.infinity,),
            CustomText(text: "Selfie Captured. Make sure the picture is clear & without glasses.", color: Colors.grey, textAlign: TextAlign.center,),

            Expanded(child: SizedBox()),
            CustomButtonWidget(
              title: "Continue",
              onPressed: () {
                print("TESt");
                // context.read<WalletOnboardingProvider>().getKycQuestions();
                context.read<WalletOnboardingProvider>().nextStep();
              },
              backgroundColor: AppColors.buttonBgColor,
            ),
            10.verticalSpace,
            CustomButtonWidget(
              title: "Capture Again",
              titleColor: Colors.black,
              onPressed: () {
                print("TESt");
                context.read<WalletOnboardingProvider>().previousStep();
              },
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
