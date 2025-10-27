import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/direct_debit_deduct_fund_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/direct_debit_deduct_fund_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/direct_debit_hold_fund_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/direct_debit_hold_fund_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/direct_debit_hold_fund_reversal_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/direct_debit_hold_fund_reversal_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/remote_services/direct_debit_api_service.dart';
import 'package:ezwage/ui/wallet/transfer/repositories/direct_debit_repository.dart';

class DirectDebitRepositoryImpl extends BaseRepository
    implements DirectDebitRepository {
  final DirectDebitApiService _api;

  DirectDebitRepositoryImpl(this._api);

  @override
  Future<Result<DirectDebitHoldFundResponseDto>> holdFund(
    DirectDebitHoldFundRequestDto request,
  ) {
    return safeApiCall(
      () => _api.holdFund(body: request.toJson()),
      (json) => DirectDebitHoldFundResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<DirectDebitDeductFundResponseDto>> deductFund(
    DirectDebitDeductFundRequestDto request,
  ) {
    return safeApiCall(
      () => _api.deductFund(body: request.toJson()),
      (json) => DirectDebitDeductFundResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<DirectDebitHoldFundReversalResponseDto>> reverseHoldFund(
    DirectDebitHoldFundReversalRequestDto request,
  ) {
    return safeApiCall(
      () => _api.reverseHoldFund(body: request.toJson()),
      (json) => DirectDebitHoldFundReversalResponseDto.fromJson(json["data"]),
    );
  }
}
