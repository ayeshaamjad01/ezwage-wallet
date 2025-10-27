import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/telco_list_request_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/telco_list_response_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/topup_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/topup_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/topup_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/topup_payment_response_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/repository/topup_repository.dart';
import 'package:ezwage/ui/wallet/topup_and_request/services/topup_api_service.dart';

class TopupRepositoryImpl extends BaseRepository implements TopupRepository {
  final TopupApiService _api;

  TopupRepositoryImpl(this._api);

  @override
  Future<Result<TelcoListResponseDto>> getTelcoList(
    TelcoListRequestDto request,
  ) {
    return safeApiCall(
      () => _api.getTelcoList(body: request.toJson()),
      (json) => TelcoListResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<TopupInquiryResponseDto>> topupInquiry(
    TopupInquiryRequestDto request,
  ) {
    return safeApiCall(
      () => _api.topupInquiry(body: request.toJson()),
      (json) => TopupInquiryResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<TopupPaymentResponseDto>> topupPayment(
    TopupPaymentRequestDto request,
  ) {
    return safeApiCall(
      () => _api.topupPayment(body: request.toJson()),
      (json) => TopupPaymentResponseDto.fromJson(json),
    );
  }
}
