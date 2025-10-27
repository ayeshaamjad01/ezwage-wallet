// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_payment_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillPaymentRequestDto _$BillPaymentRequestDtoFromJson(
  Map<String, dynamic> json,
) => _BillPaymentRequestDto(
  template: json['template'] as String?,
  senderAccount: json['senderAccount'] as String,
  billerId: (json['billerId'] as num).toInt(),
  amount: json['amount'] as String,
  verificationToken: json['verificationToken'] as String?,
  index: json['index'] as String?,
  otp: json['otp'] as String?,
  consumerNumber: json['consumerNumber'] as String?,
  sessionId: json['sessionId'] as String?,
  version: json['version'] as String? ?? "v1",
  transactionId: json['transactionId'] as String?,
  feeAmount: json['feeAmount'] as String,
  billMonth: json['billMonth'] as String,
  customerId: json['customerId'] as String,
  taxAmount: json['taxAmount'] as String,
  consumerName: json['consumerName'] as String,
);

Map<String, dynamic> _$BillPaymentRequestDtoToJson(
  _BillPaymentRequestDto instance,
) => <String, dynamic>{
  'template': instance.template,
  'senderAccount': instance.senderAccount,
  'billerId': instance.billerId,
  'amount': instance.amount,
  'verificationToken': instance.verificationToken,
  'index': instance.index,
  'otp': instance.otp,
  'consumerNumber': instance.consumerNumber,
  'sessionId': instance.sessionId,
  'version': instance.version,
  'transactionId': instance.transactionId,
  'feeAmount': instance.feeAmount,
  'billMonth': instance.billMonth,
  'customerId': instance.customerId,
  'taxAmount': instance.taxAmount,
  'consumerName': instance.consumerName,
};
