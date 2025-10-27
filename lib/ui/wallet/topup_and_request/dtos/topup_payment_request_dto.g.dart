// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topup_payment_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopupPaymentRequestDto _$TopupPaymentRequestDtoFromJson(
  Map<String, dynamic> json,
) => _TopupPaymentRequestDto(
  senderAccount: json['senderAccount'] as String,
  customerId: json['customerId'] as String,
  consumerName: json['consumerName'] as String,
  amount: json['amount'] as String,
  telcoId: (json['telcoId'] as num).toInt(),
  version: json['version'] as String? ?? "v1",
  feeAmount: json['feeAmount'] as String,
  template: json['template'] as String?,
  index: json['index'] as String?,
  otp: json['otp'] as String?,
  sessionId: json['sessionId'] as String?,
  consumerNumber: json['consumerNumber'] as String?,
  verificationToken: json['verificationToken'] as String?,
);

Map<String, dynamic> _$TopupPaymentRequestDtoToJson(
  _TopupPaymentRequestDto instance,
) => <String, dynamic>{
  'senderAccount': instance.senderAccount,
  'customerId': instance.customerId,
  'consumerName': instance.consumerName,
  'amount': instance.amount,
  'telcoId': instance.telcoId,
  'version': instance.version,
  'feeAmount': instance.feeAmount,
  'template': instance.template,
  'index': instance.index,
  'otp': instance.otp,
  'sessionId': instance.sessionId,
  'consumerNumber': instance.consumerNumber,
  'verificationToken': instance.verificationToken,
};
