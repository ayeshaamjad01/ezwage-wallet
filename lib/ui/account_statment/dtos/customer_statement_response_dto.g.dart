// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_statement_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerStatementResponseDto _$CustomerStatementResponseDtoFromJson(
  Map<String, dynamic> json,
) => _CustomerStatementResponseDto(
  statusCode: json['statusCode'] as String,
  statusMessage: json['statusMessage'] as String,
  data: AccountData.fromJson(json['data'] as Map<String, dynamic>),
  uuid: json['uuid'] as String?,
  verificationToken: json['verificationToken'] as String?,
);

Map<String, dynamic> _$CustomerStatementResponseDtoToJson(
  _CustomerStatementResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'data': instance.data.toJson(),
  'uuid': instance.uuid,
  'verificationToken': instance.verificationToken,
};

_AccountData _$AccountDataFromJson(Map<String, dynamic> json) => _AccountData(
  accountTitle: json['accountTitle'] as String,
  accountNumber: json['accountNumber'] as String,
  ibanNumber: json['ibanNumber'] as String?,
  closingBalance: json['closingBalance'] as String,
  transactionList: (json['transactionList'] as List<dynamic>)
      .map((e) => TransactionItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AccountDataToJson(
  _AccountData instance,
) => <String, dynamic>{
  'accountTitle': instance.accountTitle,
  'accountNumber': instance.accountNumber,
  'ibanNumber': instance.ibanNumber,
  'closingBalance': instance.closingBalance,
  'transactionList': instance.transactionList.map((e) => e.toJson()).toList(),
};

_TransactionItem _$TransactionItemFromJson(Map<String, dynamic> json) =>
    _TransactionItem(
      date: json['date'] as String,
      transactionId: json['transactionId'] as String,
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      category: json['category'] as String,
      narration: json['narration'] as String,
      metaData: json['metaData'] as String?,
      amount: json['amount'] as String,
      fee: (json['fee'] as num).toInt(),
      tax: (json['tax'] as num).toInt(),
      senderName: json['senderName'] as String,
      senderAccount: json['senderAccount'] as String,
      receiverName: json['receiverName'] as String,
      receiverAccount: json['receiverAccount'] as String,
      transactionFee: (json['transactionFee'] as num).toInt(),
      companyName: json['companyName'] as String,
    );

Map<String, dynamic> _$TransactionItemToJson(_TransactionItem instance) =>
    <String, dynamic>{
      'date': instance.date,
      'transactionId': instance.transactionId,
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'category': instance.category,
      'narration': instance.narration,
      'metaData': instance.metaData,
      'amount': instance.amount,
      'fee': instance.fee,
      'tax': instance.tax,
      'senderName': instance.senderName,
      'senderAccount': instance.senderAccount,
      'receiverName': instance.receiverName,
      'receiverAccount': instance.receiverAccount,
      'transactionFee': instance.transactionFee,
      'companyName': instance.companyName,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.debit: 'DEBIT',
  TransactionType.credit: 'CREDIT',
};
