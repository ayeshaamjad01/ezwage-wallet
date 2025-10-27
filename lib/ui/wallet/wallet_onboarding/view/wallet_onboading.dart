import 'dart:io';

import 'package:ezwage/ui/wallet/core/extensions/onboarding_step_text.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/view/phone_input_screen/phone_input_screen.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/view/registration_screen/registration_screen.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/view/review_selfie_screen/review_selfie_screen.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/view/selfie_guide_screen/selfie-guide_screen.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/view/user_details_screen/user_details_screen.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../global/utils/colors.dart';
import '../../../authentication/controller/authscreen_tab_controller.dart';
import '../../../authentication/view/login_screen.dart';
import '../../../authentication/view/signup_screen.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_images.dart';
import '../controller/wallet_onboarding_provider.dart';
import 'congratulation_screen/congratulation_screen.dart';
import 'create_pin_screen/create_pin_screen.dart';
import 'details_confirmation_screen/details_confirmation_screen.dart';
import 'details_verification_screen/details_verification_screen.dart';
import 'otp_verification_screen/otp_verification_screen.dart';

class WalletOnboading extends StatelessWidget {
  const WalletOnboading({super.key});

  Widget _getStepWidget(OnboardingStep step) {
    switch (step) {
      case OnboardingStep.phoneInput:
        return PhoneInputScreen();
      case OnboardingStep.otpVerification:
        return OTPVerificationScreen();
      case OnboardingStep.userDetails:
        return UserDetailsScreen();
      case OnboardingStep.registration:
        return RegistrationScreen();
      case OnboardingStep.detailsVerification:
        return DetailsVerificationScreen();
      case OnboardingStep.selfieGuide:
        return SelfieGuideScreen();
      case OnboardingStep.reviewSelfie:
        return ReviewSelfieScreen();
      case OnboardingStep.detailsConfirmation:
        return DetailsConfirmationScreen();
      // case OnboardingStep.createPin:
      //   return CreatePinScreen();
      // case OnboardingStep.congratulation:
      //   return CongratulationScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return ChangeNotifierProvider(
      create: (context) => WalletOnboardingProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.blue,
            body: SafeArea(
              bottom: false,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.onboardingBg),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Consumer<WalletOnboardingProvider>(
                  builder: (context, provider, _) {
                    print(
                      "provider.currentStep.name ${provider.currentStep.name}",
                    );

                    return Column(
                      children: [
                        SizedBox(height: 25.h),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: IconButton(
                                onPressed: () {
                                  context
                                      .read<WalletOnboardingProvider>()
                                      .previousStep();
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/white_logo_ez_wage.png',
                                    height: shortestSide > 600 ? 70.sp : 70,
                                    width: shortestSide > 600 ? 150.sp : 150,
                                  ),
                                  // CustomText(text: "Sign Up to New \nAccount", size: 25.sp, color: Colors.white, maxLines: 2, fontWeight: FontWeight.w700, textAlign: TextAlign.center,),
                                  CustomText(
                                    text: provider.currentStep.titleText,
                                    size: 20.sp,
                                    color: Colors.white,
                                    maxLines: 2,
                                    fontWeight: FontWeight.w700,
                                    textAlign: TextAlign.center,
                                  ),
                                  7.verticalSpace,
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                shortestSide > 600 ? 8.sp : 0,
                                shortestSide > 600 ? 30.sp : 50,
                                shortestSide > 600 ? 8.sp : 0,
                                0,
                              ),
                              child: _getStepWidget(provider.currentStep),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
