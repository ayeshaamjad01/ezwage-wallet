import 'package:ezwage/ui/wallet/bill_and_fees/dtos/bill_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/dtos/bill_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/dtos/bill_list_request_dto.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/dtos/bill_list_response_dto.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/dtos/bill_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/dtos/bill_payment_response_dto.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';

abstract class BillPaymentRepository {
  Future<Result<BillListResponseDto>> getBillList(BillListRequestDto request);

  Future<Result<BillInquiryResponseDto>> billInquiry(
    BillInquiryRequestDto request,
  );

  Future<Result<BillPaymentResponseDto>> payBill(BillPaymentRequestDto request);
}
