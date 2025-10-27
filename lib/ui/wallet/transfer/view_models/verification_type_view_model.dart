sealed class VerificationTypeViewModel {
  final Function(String submission) onSubmit;

  const VerificationTypeViewModel({required this.onSubmit});
}

final class OTPVerificationViewModel extends VerificationTypeViewModel {
  final Duration? otpExpireIn;
  final Future<Duration?> Function() onResendTap;

  const OTPVerificationViewModel({
    required this.otpExpireIn,
    required this.onResendTap,
    required super.onSubmit,
  });
}

final class kycQuestionVerificationViewModel extends VerificationTypeViewModel {
  final List<String> options;
  final KYCQuestionType questionType;

  const kycQuestionVerificationViewModel({
    required super.onSubmit,
    required this.options,
    required this.questionType,
  });
}

enum KYCQuestionType { motherName, birthPlace }
