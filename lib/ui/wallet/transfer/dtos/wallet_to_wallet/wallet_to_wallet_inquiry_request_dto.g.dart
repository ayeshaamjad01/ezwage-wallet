// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_to_wallet_inquiry_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletToWalletInquiryRequestDto _$WalletToWalletInquiryRequestDtoFromJson(
  Map<String, dynamic> json,
) => _WalletToWalletInquiryRequestDto(
  senderAccount: json['senderAccount'] as String,
  customerId: json['customerId'] as String,
  receiverAccount: json['receiverAccount'] as String,
  amount: json['amount'] as String,
  version: json['version'] as String? ?? "v1",
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$WalletToWalletInquiryRequestDtoToJson(
  _WalletToWalletInquiryRequestDto instance,
) => <String, dynamic>{
  'senderAccount': instance.senderAccount,
  'customerId': instance.customerId,
  'receiverAccount': instance.receiverAccount,
  'amount': instance.amount,
  'version': instance.version,
  'extInfo': instance.extInfo,
};
