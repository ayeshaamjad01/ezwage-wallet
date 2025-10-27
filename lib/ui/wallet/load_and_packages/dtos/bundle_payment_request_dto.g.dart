// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle_payment_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BundlePaymentRequestDto _$BundlePaymentRequestDtoFromJson(
  Map<String, dynamic> json,
) => _BundlePaymentRequestDto(
  accountNumber: json['accountNumber'] as String,
  customerId: json['customerId'] as String,
  consumerNumber: json['consumerNumber'] as String?,
  bundleId: json['bundleId'] as String,
  version: json['version'] as String? ?? "v1",
  verificationToken: json['verificationToken'] as String?,
);

Map<String, dynamic> _$BundlePaymentRequestDtoToJson(
  _BundlePaymentRequestDto instance,
) => <String, dynamic>{
  'accountNumber': instance.accountNumber,
  'customerId': instance.customerId,
  'consumerNumber': instance.consumerNumber,
  'bundleId': instance.bundleId,
  'version': instance.version,
  'verificationToken': instance.verificationToken,
};
