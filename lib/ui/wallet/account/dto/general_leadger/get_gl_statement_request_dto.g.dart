// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gl_statement_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetGlStatementRequestDto _$GetGlStatementRequestDtoFromJson(
  Map<String, dynamic> json,
) => _GetGlStatementRequestDto(
  senderAccount: json['senderAccount'] as String,
  customerId: json['customerId'] as String,
  receiverAccount: json['receiverAccount'] as String,
  amount: json['amount'] as String,
  version: json['version'] as String? ?? "v1",
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$GetGlStatementRequestDtoToJson(
  _GetGlStatementRequestDto instance,
) => <String, dynamic>{
  'senderAccount': instance.senderAccount,
  'customerId': instance.customerId,
  'receiverAccount': instance.receiverAccount,
  'amount': instance.amount,
  'version': instance.version,
  'extInfo': instance.extInfo,
};
