import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_debit_hold_fund_request_dto.freezed.dart';

part 'direct_debit_hold_fund_request_dto.g.dart';

@freezed
abstract class DirectDebitHoldFundRequestDto
    with _$DirectDebitHoldFundRequestDto {
  const factory DirectDebitHoldFundRequestDto({
    required String accountNumber,
    required String amount,
    required String terminalId,
    required String terminalNameLoc,
    required String customerId,
    String? subType,
    required String metaData,
    @Default({}) Map<String, dynamic> extInfo,
  }) = _DirectDebitHoldFundRequestDto;

  factory DirectDebitHoldFundRequestDto.fromJson(Map<String, dynamic> json) =>
      _$DirectDebitHoldFundRequestDtoFromJson(json);
}
