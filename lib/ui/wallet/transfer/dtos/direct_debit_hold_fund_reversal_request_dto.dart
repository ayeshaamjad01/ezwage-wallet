import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_debit_hold_fund_reversal_request_dto.freezed.dart';

part 'direct_debit_hold_fund_reversal_request_dto.g.dart';

@freezed
abstract class DirectDebitHoldFundReversalRequestDto
    with _$DirectDebitHoldFundReversalRequestDto {
  const factory DirectDebitHoldFundReversalRequestDto({
    required String accountNumber,
    required String terminalId,
    required String terminalNameLoc,
    required String referenceTxId,
    required String customerId,
    String? subType,
    @Default({}) Map<String, dynamic> extInfo,
  }) = _DirectDebitHoldFundReversalRequestDto;

  factory DirectDebitHoldFundReversalRequestDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DirectDebitHoldFundReversalRequestDtoFromJson(json);
}
