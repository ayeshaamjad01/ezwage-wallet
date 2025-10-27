// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle_inquiry_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BundleInquiryRequestDto _$BundleInquiryRequestDtoFromJson(
  Map<String, dynamic> json,
) => _BundleInquiryRequestDto(
  bundleId: json['bundleId'] as String,
  accountNumber: json['accountNumber'] as String,
  consumerNumber: json['consumerNumber'] as String,
  customerId: json['customerId'] as String,
  version: json['version'] as String? ?? "v1",
);

Map<String, dynamic> _$BundleInquiryRequestDtoToJson(
  _BundleInquiryRequestDto instance,
) => <String, dynamic>{
  'bundleId': instance.bundleId,
  'accountNumber': instance.accountNumber,
  'consumerNumber': instance.consumerNumber,
  'customerId': instance.customerId,
  'version': instance.version,
};
