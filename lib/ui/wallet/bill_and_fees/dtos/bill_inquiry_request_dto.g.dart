// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_inquiry_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillInquiryRequestDto _$BillInquiryRequestDtoFromJson(
  Map<String, dynamic> json,
) => _BillInquiryRequestDto(
  senderAccount: json['senderAccount'] as String,
  billerId: json['billerId'] as String,
  amount: json['amount'] as String,
  customerId: json['customerId'] as String,
  consumerNumber: json['consumerNumber'] as String,
  consumerName: json['consumerName'] as String,
  taxAmount: json['taxAmount'] as String,
  version: json['version'] as String? ?? "v1",
);

Map<String, dynamic> _$BillInquiryRequestDtoToJson(
  _BillInquiryRequestDto instance,
) => <String, dynamic>{
  'senderAccount': instance.senderAccount,
  'billerId': instance.billerId,
  'amount': instance.amount,
  'customerId': instance.customerId,
  'consumerNumber': instance.consumerNumber,
  'consumerName': instance.consumerName,
  'taxAmount': instance.taxAmount,
  'version': instance.version,
};
