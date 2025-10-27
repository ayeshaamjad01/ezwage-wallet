// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_debit_hold_fund_reversal_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectDebitHoldFundReversalResponseDto
_$DirectDebitHoldFundReversalResponseDtoFromJson(Map<String, dynamic> json) =>
    _DirectDebitHoldFundReversalResponseDto(
      referenceTxId: json['referenceTxId'] as String,
      transactionLogId: json['transactionLogId'] as String,
    );

Map<String, dynamic> _$DirectDebitHoldFundReversalResponseDtoToJson(
  _DirectDebitHoldFundReversalResponseDto instance,
) => <String, dynamic>{
  'referenceTxId': instance.referenceTxId,
  'transactionLogId': instance.transactionLogId,
};
