import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/dtos/secret_kyc_question_request_dto.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/dtos/secret_kyc_question_response_dto.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/dtos/wallet_rejection_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/dtos/wallet_rejection_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/dtos/wallet_rejection_update_request_dto.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/remote_services/wallet_rejection_api_service.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/repository/wallet_rejection_repository.dart';

class WalletRejectionRepositoryImpl extends BaseRepository
    implements WalletRejectionRepository {
  final WalletRejectionApiService _api;

  WalletRejectionRepositoryImpl(this._api);

  @override
  Future<Result<WalletRejectionInquiryResponseDto>> rejectionInquiry(
    WalletRejectionInquiryRequestDto request,
  ) {
    return safeApiCall(
      () => _api.rejectionInquiry(body: request.toJson()),
      (json) => WalletRejectionInquiryResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result> rejectionUpdate(WalletRejectionUpdateRequestDto request) {
    return safeApiCall(
      () => _api.rejectionUpdate(body: request.toJson()),
      (json) => Result.success(json),
    );
  }

  @override
  Future<Result<SecretKycQuestionResponseDto>> getKycQuestions(
    SecretKycQuestionRequestDto request,
  ) {
    return safeApiCall(
      () => _api.getKycQuestions(),
      (json) => SecretKycQuestionResponseDto.fromJson(json),
    );
  }
}
