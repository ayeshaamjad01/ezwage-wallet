// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topup_inquiry_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopupInquiryRequestDto _$TopupInquiryRequestDtoFromJson(
  Map<String, dynamic> json,
) => _TopupInquiryRequestDto(
  senderAccount: json['senderAccount'] as String,
  telcoId: (json['telcoId'] as num).toInt(),
  customerId: json['customerId'] as String,
  consumerNumber: json['consumerNumber'] as String,
  version: json['version'] as String? ?? "v1",
);

Map<String, dynamic> _$TopupInquiryRequestDtoToJson(
  _TopupInquiryRequestDto instance,
) => <String, dynamic>{
  'senderAccount': instance.senderAccount,
  'telcoId': instance.telcoId,
  'customerId': instance.customerId,
  'consumerNumber': instance.consumerNumber,
  'version': instance.version,
};
