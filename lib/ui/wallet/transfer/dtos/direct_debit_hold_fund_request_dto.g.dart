// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_debit_hold_fund_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectDebitHoldFundRequestDto _$DirectDebitHoldFundRequestDtoFromJson(
  Map<String, dynamic> json,
) => _DirectDebitHoldFundRequestDto(
  accountNumber: json['accountNumber'] as String,
  amount: json['amount'] as String,
  terminalId: json['terminalId'] as String,
  terminalNameLoc: json['terminalNameLoc'] as String,
  customerId: json['customerId'] as String,
  subType: json['subType'] as String?,
  metaData: json['metaData'] as String,
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$DirectDebitHoldFundRequestDtoToJson(
  _DirectDebitHoldFundRequestDto instance,
) => <String, dynamic>{
  'accountNumber': instance.accountNumber,
  'amount': instance.amount,
  'terminalId': instance.terminalId,
  'terminalNameLoc': instance.terminalNameLoc,
  'customerId': instance.customerId,
  'subType': instance.subType,
  'metaData': instance.metaData,
  'extInfo': instance.extInfo,
};
