import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/dtos/secret_kyc_question_request_dto.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/dtos/secret_kyc_question_response_dto.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/dtos/wallet_rejection_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/dtos/wallet_rejection_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/dtos/wallet_rejection_update_request_dto.dart';

abstract class WalletRejectionRepository {
  Future<Result<WalletRejectionInquiryResponseDto>> rejectionInquiry(
    WalletRejectionInquiryRequestDto request,
  );

  Future<Result> rejectionUpdate(WalletRejectionUpdateRequestDto request);

  Future<Result<SecretKycQuestionResponseDto>> getKycQuestions(
    SecretKycQuestionRequestDto request,
  );
}
