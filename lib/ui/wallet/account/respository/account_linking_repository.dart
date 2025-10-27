import 'package:ezwage/ui/wallet/account/dto/account_linking/account_linking_confirmation_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/account_linking/account_linking_confirmation_response_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/account_linking/account_linking_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/account_linking/account_linking_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';

abstract class AccountLinkingRepository {
  Future<Result<AccountLinkingInquiryResponseDto>> linkingInquiry(
    AccountLinkingInquiryRequestDto request,
  );

  Future<Result<AccountLinkingConfirmationResponseDto>> linkingConfirmation(
    AccountLinkingConfirmationRequestDto request,
  );
}
