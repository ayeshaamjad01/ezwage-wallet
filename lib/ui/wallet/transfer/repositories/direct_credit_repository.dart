import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/credit/direct_credit_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/credit/direct_credit_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/credit/direct_credit_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/credit/direct_credit_payment_response_dto.dart';

abstract class DirectCreditRepository {
  Future<Result<DirectCreditInquiryResponseDto>> inquiry(
    DirectCreditInquiryRequestDto request,
  );

  Future<Result<DirectCreditPaymentResponseDto>> payment(
    DirectCreditPaymentRequestDto request,
  );
}
