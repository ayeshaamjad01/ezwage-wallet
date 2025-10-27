import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_statement_response_dto.freezed.dart';

part 'customer_statement_response_dto.g.dart';

enum TransactionType {
  @JsonValue('DEBIT')
  debit,
  @JsonValue('CREDIT')
  credit,
}

@freezed
abstract class CustomerStatementResponseDto
    with _$CustomerStatementResponseDto {
  const factory CustomerStatementResponseDto({
    required String statusCode,
    required String statusMessage,
    required AccountData data,
    String? uuid,
    String? verificationToken,
  }) = _CustomerStatementResponseDto;

  factory CustomerStatementResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerStatementResponseDtoFromJson(json);
}

@freezed
abstract class AccountData with _$AccountData {
  const factory AccountData({
    required String accountTitle,
    required String accountNumber,
    String? ibanNumber,
    required String closingBalance,
    required List<TransactionItem> transactionList,
  }) = _AccountData;

  factory AccountData.fromJson(Map<String, dynamic> json) =>
      _$AccountDataFromJson(json);
}

@freezed
abstract class TransactionItem with _$TransactionItem {
  const factory TransactionItem({
    required String date,
    required String transactionId,
    required TransactionType type,
    required String category,
    required String narration,
    String? metaData,
    required String amount,
    required int fee,
    required int tax,
    required String senderName,
    required String senderAccount,
    required String receiverName,
    required String receiverAccount,
    required int transactionFee,
    required String companyName,
  }) = _TransactionItem;

  factory TransactionItem.fromJson(Map<String, dynamic> json) =>
      _$TransactionItemFromJson(json);
}
