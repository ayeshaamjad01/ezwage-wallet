// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_debit_hold_fund_reversal_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectDebitHoldFundReversalRequestDto
_$DirectDebitHoldFundReversalRequestDtoFromJson(Map<String, dynamic> json) =>
    _DirectDebitHoldFundReversalRequestDto(
      accountNumber: json['accountNumber'] as String,
      terminalId: json['terminalId'] as String,
      terminalNameLoc: json['terminalNameLoc'] as String,
      referenceTxId: json['referenceTxId'] as String,
      customerId: json['customerId'] as String,
      subType: json['subType'] as String?,
      extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$DirectDebitHoldFundReversalRequestDtoToJson(
  _DirectDebitHoldFundReversalRequestDto instance,
) => <String, dynamic>{
  'accountNumber': instance.accountNumber,
  'terminalId': instance.terminalId,
  'terminalNameLoc': instance.terminalNameLoc,
  'referenceTxId': instance.referenceTxId,
  'customerId': instance.customerId,
  'subType': instance.subType,
  'extInfo': instance.extInfo,
};
