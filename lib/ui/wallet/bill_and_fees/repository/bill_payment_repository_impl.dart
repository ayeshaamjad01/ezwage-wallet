import 'package:ezwage/ui/wallet/bill_and_fees/repository/bill_payment_repository.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/dtos/bill_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/dtos/bill_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/dtos/bill_list_request_dto.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/dtos/bill_list_response_dto.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/dtos/bill_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/dtos/bill_payment_response_dto.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/services/bill_payment_api_service.dart';
import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';

class BillPaymentRepositoryImpl extends BaseRepository
    implements BillPaymentRepository {
  final BillPaymentApiService _api;

  BillPaymentRepositoryImpl(this._api);

  @override
  Future<Result<BillListResponseDto>> getBillList(BillListRequestDto request) {
    return safeApiCall(
      () => _api.getBillList(body: request.toJson()),
      (json) => BillListResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<BillInquiryResponseDto>> billInquiry(
    BillInquiryRequestDto request,
  ) {
    return safeApiCall(
      () => _api.billInquiry(body: request.toJson()),
      (json) => BillInquiryResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<BillPaymentResponseDto>> payBill(
    BillPaymentRequestDto request,
  ) {
    return safeApiCall(
      () => _api.payBill(body: request.toJson()),
      (json) => BillPaymentResponseDto.fromJson(json),
    );
  }
}
