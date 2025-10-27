import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_debit_deduct_fund_request_dto.freezed.dart';
part 'direct_debit_deduct_fund_request_dto.g.dart';

@freezed
abstract class DirectDebitDeductFundRequestDto with _$DirectDebitDeductFundRequestDto {
  const factory DirectDebitDeductFundRequestDto({
    required String accountNumber,
    required String amount,
    required String terminalId,
    required String terminalNameLoc,
    required String referenceTxId,
    required String customerId,
    required String totalAmount,
    required String metaData,
    required Map<String, dynamic> extInfo,
  }) = _DirectDebitDeductFundRequestDto;

  factory DirectDebitDeductFundRequestDto.fromJson(Map<String, dynamic> json) =>
      _$DirectDebitDeductFundRequestDtoFromJson(json);
}
