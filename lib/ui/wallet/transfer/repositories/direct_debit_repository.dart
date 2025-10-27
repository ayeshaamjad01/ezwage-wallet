import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/direct_debit_deduct_fund_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/direct_debit_deduct_fund_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/direct_debit_hold_fund_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/direct_debit_hold_fund_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/direct_debit_hold_fund_reversal_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/direct_debit_hold_fund_reversal_response_dto.dart';

abstract class DirectDebitRepository {
  Future<Result<DirectDebitHoldFundResponseDto>> holdFund(
    DirectDebitHoldFundRequestDto request,
  );

  Future<Result<DirectDebitDeductFundResponseDto>> deductFund(
    DirectDebitDeductFundRequestDto request,
  );

  Future<Result<DirectDebitHoldFundReversalResponseDto>> reverseHoldFund(
    DirectDebitHoldFundReversalRequestDto request,
  );
}
