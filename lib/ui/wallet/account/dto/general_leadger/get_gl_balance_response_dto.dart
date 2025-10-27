import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_gl_balance_response_dto.freezed.dart';

part 'get_gl_balance_response_dto.g.dart';

@freezed
abstract class GetGlBalanceResponseDto with _$GetGlBalanceResponseDto {
  const factory GetGlBalanceResponseDto({
    required String glAccountNumber,
    required String transactionDate,
    required String settlementDate,
    required String transactionId,
    required String stan,
    required String transactionType,
    required String settleType,
    required String companyName,
    required String subType,
    required String transactionDetail,
    required String debitAmount,
    required String creditAmount,
    required String balance,
    required String status,
    required String custDebitAcc,
    required String custCreditAcc,
    required String metaData,
    required String accountType,
  }) = _GetGlBalanceResponseDto;

  factory GetGlBalanceResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetGlBalanceResponseDtoFromJson(json);
}
