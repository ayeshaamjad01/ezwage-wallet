// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_mini_statement_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerMiniStatementResponseDto _$CustomerMiniStatementResponseDtoFromJson(
  Map<String, dynamic> json,
) => _CustomerMiniStatementResponseDto(
  statusCode: json['statusCode'] as String,
  statusMessage: json['statusMessage'] as String,
  transactionList: (json['data'] as List<dynamic>)
      .map((e) => MiniStatementItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CustomerMiniStatementResponseDtoToJson(
  _CustomerMiniStatementResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'data': instance.transactionList.map((e) => e.toJson()).toList(),
};

_MiniStatementItem _$MiniStatementItemFromJson(Map<String, dynamic> json) =>
    _MiniStatementItem(
      trxAmount: json['trxAmount'] as String,
      senderAccount: json['senderAccount'] as String,
      senderName: json['senderName'] as String,
      transactionFee: json['transactionFee'] as String,
      trxNarration: json['trxNarration'] as String,
      receiverName: json['receiverName'] as String,
      transactionDateTime: json['trxDataTime'] as String,
      companyName: json['companyName'] as String,
      trxType:
          $enumDecodeNullable(_$TrxTypeEnumMap, json['trxType']) ??
          TrxType.unknown,
      transactionId: json['trxID'] as String,
      trxName: json['trxName'] as String,
      receiverAccount: json['receiverAccount'] as String,
    );

Map<String, dynamic> _$MiniStatementItemToJson(_MiniStatementItem instance) =>
    <String, dynamic>{
      'trxAmount': instance.trxAmount,
      'senderAccount': instance.senderAccount,
      'senderName': instance.senderName,
      'transactionFee': instance.transactionFee,
      'trxNarration': instance.trxNarration,
      'receiverName': instance.receiverName,
      'trxDataTime': instance.transactionDateTime,
      'companyName': instance.companyName,
      'trxType': _$TrxTypeEnumMap[instance.trxType]!,
      'trxID': instance.transactionId,
      'trxName': instance.trxName,
      'receiverAccount': instance.receiverAccount,
    };

const _$TrxTypeEnumMap = {
  TrxType.debit: 'debit',
  TrxType.credit: 'credit',
  TrxType.unknown: 'unknown',
};
