// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_credit_inquiry_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectCreditInquiryRequestDto _$DirectCreditInquiryRequestDtoFromJson(
  Map<String, dynamic> json,
) => _DirectCreditInquiryRequestDto(
  receiverAccount: json['receiverAccount'] as String,
  terminalId: json['terminalId'] as String,
  terminalNameLoc: json['terminalNameLoc'] as String,
  senderAccount: json['senderAccount'] as String,
  amount: json['amount'] as String,
  customerId: json['customerId'] as String,
  version: json['version'] as String? ?? "v1",
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$DirectCreditInquiryRequestDtoToJson(
  _DirectCreditInquiryRequestDto instance,
) => <String, dynamic>{
  'receiverAccount': instance.receiverAccount,
  'terminalId': instance.terminalId,
  'terminalNameLoc': instance.terminalNameLoc,
  'senderAccount': instance.senderAccount,
  'amount': instance.amount,
  'customerId': instance.customerId,
  'version': instance.version,
  'extInfo': instance.extInfo,
};
