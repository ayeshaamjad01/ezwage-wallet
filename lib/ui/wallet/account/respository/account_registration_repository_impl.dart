import 'package:dio/dio.dart';
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
import 'package:ezwage/ui/wallet/account/remote_services/account_registration_api_service.dart';
import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/exceptions/onboarding_exceptions.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';

import 'account_registration_repository.dart';

class AccountRegistrationRepositoryImpl extends BaseRepository
    implements AccountRegistrationRepository {
  final AccountRegistrationApiService _api;

  AccountRegistrationRepositoryImpl(this._api);

  @override
  Future<Result<CheckAccountResponseDto>> checkAccount(
    CheckAccountRequestDto request,
  ) {
    return safeOnBoardingApiCall(
      () => _api.checkAccount(body: request.toJson()),
      (json) {
        Map data = json["data"] ?? {};
        if (data.isEmpty) {
          throw Result.failure(
            DioException(
              requestOptions: RequestOptions(path: ''),
              type: DioExceptionType.unknown,
            ),
            resultFailureData: ResultFailureData.fromJson(json),
          );
        }
        return CheckAccountResponseDto.fromJson(json);
      },
    );
  }

  @override
  Future<Result<FetchAccountResponseDto>> fetchAccount(
    FetchAccountRequestDto request,
  ) {
    return safeOnBoardingApiCall(
      () => _api.fetchAccount(body: request.toJson()),
      (json) {
        return FetchAccountResponseDto(
          accountStatus: json["data"]["accountStatus"],
          statusCode: json["statusCode"],
          statusMessage: json["statusMessage"],
        );
      },
    );
  }

  @override
  Future<Result<ForgotPinInquiryResponseDto>> forgotPinInquiry(
    ForgotPinInquiryRequestDto request,
  ) {
    return safeOnBoardingApiCall(
      () => _api.forgotPinInquiry(body: request.toJson()),
      (json) => ForgotPinInquiryResponseDto.fromJson(json["data"]),
    );
  }

  @override
  Future<Result<ForgotPinResponseDto>> forgotPinExecute(
    ForgotPinRequestDto request,
  ) {
    return safeOnBoardingApiCall(
      () => _api.forgotPinExecute(body: request.toJson()),
      (json) => ForgotPinResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result> changePin(ChangePinRequestDto request) {
    return safeApiCall(
      () => _api.changePin(body: request.toJson()),
      (json) => json,
    );
  }

  @override
  Future<Result<RegisterAccountResponseDto>> registerAccount(
    RegisterAccountRequestDto request,
  ) {
    return safeApiCall(
      () => _api.registerAccount(body: request.toJson()),
      (json) => RegisterAccountResponseDto.fromJson(json),
    );
  }
}
