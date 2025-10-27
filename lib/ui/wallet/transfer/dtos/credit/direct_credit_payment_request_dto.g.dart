// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_credit_payment_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectCreditPaymentRequestDto _$DirectCreditPaymentRequestDtoFromJson(
  Map<String, dynamic> json,
) => _DirectCreditPaymentRequestDto(
  receiverAccount: json['receiverAccount'] as String,
  terminalId: json['terminalId'] as String,
  amount: json['amount'] as String,
  terminalNameLoc: json['terminalNameLoc'] as String,
  version: json['version'] as String? ?? "v1",
  customerId: json['customerId'] as String,
  verificationToken: json['verificationToken'] as String,
  index: json['index'] as String?,
  otp: json['otp'] as String?,
  sessionId: json['sessionId'] as String?,
  template: json['template'] as String?,
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$DirectCreditPaymentRequestDtoToJson(
  _DirectCreditPaymentRequestDto instance,
) => <String, dynamic>{
  'receiverAccount': instance.receiverAccount,
  'terminalId': instance.terminalId,
  'amount': instance.amount,
  'terminalNameLoc': instance.terminalNameLoc,
  'version': instance.version,
  'customerId': instance.customerId,
  'verificationToken': instance.verificationToken,
  'index': instance.index,
  'otp': instance.otp,
  'sessionId': instance.sessionId,
  'template': instance.template,
  'extInfo': instance.extInfo,
};
