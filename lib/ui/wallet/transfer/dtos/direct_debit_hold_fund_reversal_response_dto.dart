import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_debit_hold_fund_reversal_response_dto.freezed.dart';

part 'direct_debit_hold_fund_reversal_response_dto.g.dart';

@freezed
abstract class DirectDebitHoldFundReversalResponseDto
    with _$DirectDebitHoldFundReversalResponseDto {
  const factory DirectDebitHoldFundReversalResponseDto({
    required String referenceTxId,
    required String transactionLogId,
  }) = _DirectDebitHoldFundReversalResponseDto;

  factory DirectDebitHoldFundReversalResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DirectDebitHoldFundReversalResponseDtoFromJson(json);
}
