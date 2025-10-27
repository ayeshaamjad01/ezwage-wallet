// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ibft_title_fetch_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IbftTitleFetchRequestDto _$IbftTitleFetchRequestDtoFromJson(
  Map<String, dynamic> json,
) => _IbftTitleFetchRequestDto(
  receiverAccount: json['receiverAccount'] as String,
  senderAccount: json['senderAccount'] as String,
  customerId: json['customerId'] as String,
  purposeId: json['purposeId'] as String,
  bankId: json['bankId'] as String,
  amount: json['amount'] as String,
  version: json['version'] as String? ?? "v1",
  extInfo: json['extInfo'] as Map<String, dynamic>,
);

Map<String, dynamic> _$IbftTitleFetchRequestDtoToJson(
  _IbftTitleFetchRequestDto instance,
) => <String, dynamic>{
  'receiverAccount': instance.receiverAccount,
  'senderAccount': instance.senderAccount,
  'customerId': instance.customerId,
  'purposeId': instance.purposeId,
  'bankId': instance.bankId,
  'amount': instance.amount,
  'version': instance.version,
  'extInfo': instance.extInfo,
};
