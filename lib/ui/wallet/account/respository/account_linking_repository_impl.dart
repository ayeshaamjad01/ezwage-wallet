

import 'package:ezwage/ui/wallet/account/dto/account_linking/account_linking_confirmation_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/account_linking/account_linking_confirmation_response_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/account_linking/account_linking_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/account_linking/account_linking_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/account/remote_services/account_linking_api_service.dart';
import 'package:ezwage/ui/wallet/account/respository/account_linking_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';

class AccountLinkingRepositoryImpl extends BaseRepository implements AccountLinkingRepository {
  final AccountLinkingApiService _api;

  AccountLinkingRepositoryImpl(this._api);

  @override
  Future<Result<AccountLinkingInquiryResponseDto>> linkingInquiry(
      AccountLinkingInquiryRequestDto request,
      ) {
    return safeApiCall(
          () => _api.linkingInquiry(body: request.toJson()),
          (json) => AccountLinkingInquiryResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<AccountLinkingConfirmationResponseDto>> linkingConfirmation(
      AccountLinkingConfirmationRequestDto request,
      ) {
    return safeApiCall(
          () => _api.linkingConfirmation(body: request.toJson()),
          (json) => AccountLinkingConfirmationResponseDto.fromJson(json),
    );
  }
}
