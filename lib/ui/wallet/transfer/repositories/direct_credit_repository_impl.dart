import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/credit/direct_credit_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/credit/direct_credit_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/credit/direct_credit_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/credit/direct_credit_payment_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/remote_services/direct_credit_api_service.dart';
import 'package:ezwage/ui/wallet/transfer/repositories/direct_credit_repository.dart';

class DirectCreditRepositoryImpl extends BaseRepository
    implements DirectCreditRepository {
  final DirectCreditApiService _api;

  DirectCreditRepositoryImpl(this._api);

  @override
  Future<Result<DirectCreditInquiryResponseDto>> inquiry(
    DirectCreditInquiryRequestDto request,
  ) {
    return safeApiCall(
      () => _api.inquiry(body: request.toJson()),
      (json) => DirectCreditInquiryResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<DirectCreditPaymentResponseDto>> payment(
    DirectCreditPaymentRequestDto request,
  ) {
    return safeApiCall(
      () => _api.payment(body: request.toJson()),
      (json) => DirectCreditPaymentResponseDto.fromJson(json),
    );
  }
}
