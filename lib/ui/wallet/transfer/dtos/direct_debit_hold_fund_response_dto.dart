import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_debit_hold_fund_response_dto.freezed.dart';

part 'direct_debit_hold_fund_response_dto.g.dart';

@freezed
abstract class DirectDebitHoldFundResponseDto
    with _$DirectDebitHoldFundResponseDto {
  const factory DirectDebitHoldFundResponseDto({
    required String actualBalance,
    required String availableBalance,
    required String referenceTxId,
  }) = _DirectDebitHoldFundResponseDto;

  factory DirectDebitHoldFundResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DirectDebitHoldFundResponseDtoFromJson(json);
}
