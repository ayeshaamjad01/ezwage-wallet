// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gl_balance_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetGlBalanceResponseDto _$GetGlBalanceResponseDtoFromJson(
  Map<String, dynamic> json,
) => _GetGlBalanceResponseDto(
  glAccountNumber: json['glAccountNumber'] as String,
  transactionDate: json['transactionDate'] as String,
  settlementDate: json['settlementDate'] as String,
  transactionId: json['transactionId'] as String,
  stan: json['stan'] as String,
  transactionType: json['transactionType'] as String,
  settleType: json['settleType'] as String,
  companyName: json['companyName'] as String,
  subType: json['subType'] as String,
  transactionDetail: json['transactionDetail'] as String,
  debitAmount: json['debitAmount'] as String,
  creditAmount: json['creditAmount'] as String,
  balance: json['balance'] as String,
  status: json['status'] as String,
  custDebitAcc: json['custDebitAcc'] as String,
  custCreditAcc: json['custCreditAcc'] as String,
  metaData: json['metaData'] as String,
  accountType: json['accountType'] as String,
);

Map<String, dynamic> _$GetGlBalanceResponseDtoToJson(
  _GetGlBalanceResponseDto instance,
) => <String, dynamic>{
  'glAccountNumber': instance.glAccountNumber,
  'transactionDate': instance.transactionDate,
  'settlementDate': instance.settlementDate,
  'transactionId': instance.transactionId,
  'stan': instance.stan,
  'transactionType': instance.transactionType,
  'settleType': instance.settleType,
  'companyName': instance.companyName,
  'subType': instance.subType,
  'transactionDetail': instance.transactionDetail,
  'debitAmount': instance.debitAmount,
  'creditAmount': instance.creditAmount,
  'balance': instance.balance,
  'status': instance.status,
  'custDebitAcc': instance.custDebitAcc,
  'custCreditAcc': instance.custCreditAcc,
  'metaData': instance.metaData,
  'accountType': instance.accountType,
};
