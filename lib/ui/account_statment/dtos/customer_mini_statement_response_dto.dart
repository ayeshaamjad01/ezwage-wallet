import 'package:ezwage/ui/account_statment/dtos/customer_statement_response_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_mini_statement_response_dto.freezed.dart';

part 'customer_mini_statement_response_dto.g.dart';

@freezed
abstract class CustomerMiniStatementResponseDto
    with _$CustomerMiniStatementResponseDto {
  const factory CustomerMiniStatementResponseDto({
    required String statusCode,
    required String statusMessage,
    @JsonKey(name: "data") required List<MiniStatementItem> transactionList,
  }) = _CustomerMiniStatementResponseDto;

  factory CustomerMiniStatementResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CustomerMiniStatementResponseDtoFromJson(json);
}

@freezed
abstract class MiniStatementItem with _$MiniStatementItem {
  const factory MiniStatementItem({
    required String trxAmount,
    required String senderAccount,
    required String senderName,
    required String transactionFee,
    required String trxNarration,
    required String receiverName,
    @JsonKey(name: 'trxDataTime') required String transactionDateTime,
    required String companyName,
    @Default(TrxType.unknown) TrxType trxType,
    @JsonKey(name: 'trxID') required String transactionId,
    required String trxName,
    required String receiverAccount,
  }) = _MiniStatementItem;

  factory MiniStatementItem.fromJson(Map<String, dynamic> json) =>
      _$MiniStatementItemFromJson(json);
}

enum TrxType {
  @JsonValue('debit')
  debit,
  @JsonValue('credit')
  credit,
  unknown,
}
