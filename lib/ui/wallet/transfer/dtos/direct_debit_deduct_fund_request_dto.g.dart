// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_debit_deduct_fund_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectDebitDeductFundRequestDto _$DirectDebitDeductFundRequestDtoFromJson(
  Map<String, dynamic> json,
) => _DirectDebitDeductFundRequestDto(
  accountNumber: json['accountNumber'] as String,
  amount: json['amount'] as String,
  terminalId: json['terminalId'] as String,
  terminalNameLoc: json['terminalNameLoc'] as String,
  referenceTxId: json['referenceTxId'] as String,
  customerId: json['customerId'] as String,
  totalAmount: json['totalAmount'] as String,
  metaData: json['metaData'] as String,
  extInfo: json['extInfo'] as Map<String, dynamic>,
);

Map<String, dynamic> _$DirectDebitDeductFundRequestDtoToJson(
  _DirectDebitDeductFundRequestDto instance,
) => <String, dynamic>{
  'accountNumber': instance.accountNumber,
  'amount': instance.amount,
  'terminalId': instance.terminalId,
  'terminalNameLoc': instance.terminalNameLoc,
  'referenceTxId': instance.referenceTxId,
  'customerId': instance.customerId,
  'totalAmount': instance.totalAmount,
  'metaData': instance.metaData,
  'extInfo': instance.extInfo,
};
