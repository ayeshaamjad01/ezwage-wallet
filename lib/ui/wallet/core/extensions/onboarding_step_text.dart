import '../../wallet_onboarding/controller/wallet_onboarding_provider.dart';

extension OnboardingStepText on OnboardingStep {
  String get titleText {
    switch (this) {
      case OnboardingStep.phoneInput:
        return "Sign Up to New \nAccount";
      case OnboardingStep.otpVerification:
        return "OTP Verification\n ";
      case OnboardingStep.userDetails:
        return "Introduction \n ";
      case OnboardingStep.registration:
        return "Registration \n ";
      case OnboardingStep.detailsVerification:
        return "Details Verification \n ";
      case OnboardingStep.selfieGuide:
        return "Selfie Guide\n ";
      case OnboardingStep.reviewSelfie:
        return "Review Selfie\n ";
      case OnboardingStep.detailsConfirmation:
        return "Details Confirmation\n ";
      // case OnboardingStep.createPin:
      //   return "Create PIN\n ";
      // case OnboardingStep.congratulation:
      //   return "Congratulations\n ";
    }
  }
}
