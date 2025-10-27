// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_to_wallet_payment_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletToWalletPaymentResponseDto _$WalletToWalletPaymentResponseDtoFromJson(
  Map<String, dynamic> json,
) => _WalletToWalletPaymentResponseDto(
  transactionId: json['transactionId'] as String,
  transactionDateTime: json['transactionDateTime'] as String,
  rrn: json['rrn'] as String,
);

Map<String, dynamic> _$WalletToWalletPaymentResponseDtoToJson(
  _WalletToWalletPaymentResponseDto instance,
) => <String, dynamic>{
  'transactionId': instance.transactionId,
  'transactionDateTime': instance.transactionDateTime,
  'rrn': instance.rrn,
};
