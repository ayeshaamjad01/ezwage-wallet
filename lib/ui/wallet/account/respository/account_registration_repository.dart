import 'package:ezwage/ui/wallet/account/dto/change_pin_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/check_account_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/check_account_response_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/fetch_account_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/fetch_account_response_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/forgot_pin_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/forgot_pin_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/forgot_pin_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/forgot_pin_response_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/register_account_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/register_account_response_dto.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';

abstract class AccountRegistrationRepository {
  Future<Result<CheckAccountResponseDto>> checkAccount(
    CheckAccountRequestDto request,
  );

  Future<Result<FetchAccountResponseDto>> fetchAccount(
    FetchAccountRequestDto request,
  );

  Future<Result<ForgotPinInquiryResponseDto>> forgotPinInquiry(
    ForgotPinInquiryRequestDto request,
  );

  Future<Result<ForgotPinResponseDto>> forgotPinExecute(
    ForgotPinRequestDto request,
  ); // No DTO found
  Future<Result> changePin(ChangePinRequestDto request); // No DTO found
  Future<Result<RegisterAccountResponseDto>> registerAccount(
    RegisterAccountRequestDto request,
  );
}
