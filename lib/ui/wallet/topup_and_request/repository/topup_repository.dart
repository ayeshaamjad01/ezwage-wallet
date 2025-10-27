import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/telco_list_request_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/telco_list_response_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/topup_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/topup_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/topup_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/topup_payment_response_dto.dart';

abstract class TopupRepository {
  Future<Result<TelcoListResponseDto>> getTelcoList(
    TelcoListRequestDto request,
  );

  Future<Result<TopupInquiryResponseDto>> topupInquiry(
    TopupInquiryRequestDto request,
  );

  Future<Result<TopupPaymentResponseDto>> topupPayment(
    TopupPaymentRequestDto request,
  );
}
