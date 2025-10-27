import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_debit_deduct_fund_response_dto.freezed.dart';
part 'direct_debit_deduct_fund_response_dto.g.dart';

@freezed
abstract class DirectDebitDeductFundResponseDto with _$DirectDebitDeductFundResponseDto {
  const factory DirectDebitDeductFundResponseDto({
    required String actualBalance,
    required String availableBalance,
    required String referenceTxId,
  }) = _DirectDebitDeductFundResponseDto;

  factory DirectDebitDeductFundResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DirectDebitDeductFundResponseDtoFromJson(json);
}
