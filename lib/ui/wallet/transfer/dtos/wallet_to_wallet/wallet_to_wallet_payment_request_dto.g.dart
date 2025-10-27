// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_to_wallet_payment_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletToWalletPaymentRequestDto _$WalletToWalletPaymentRequestDtoFromJson(
  Map<String, dynamic> json,
) => _WalletToWalletPaymentRequestDto(
  senderAccount: json['senderAccount'] as String,
  customerId: json['customerId'] as String,
  receiverAccount: json['receiverAccount'] as String,
  amount: json['amount'] as String,
  verificationToken: json['verificationToken'] as String,
  index: json['index'] as String?,
  otp: json['otp'] as String?,
  template: json['template'] as String?,
  sessionId: json['sessionId'] as String?,
  version: json['version'] as String? ?? "v1",
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$WalletToWalletPaymentRequestDtoToJson(
  _WalletToWalletPaymentRequestDto instance,
) => <String, dynamic>{
  'senderAccount': instance.senderAccount,
  'customerId': instance.customerId,
  'receiverAccount': instance.receiverAccount,
  'amount': instance.amount,
  'verificationToken': instance.verificationToken,
  'index': instance.index,
  'otp': instance.otp,
  'template': instance.template,
  'sessionId': instance.sessionId,
  'version': instance.version,
  'extInfo': instance.extInfo,
};
