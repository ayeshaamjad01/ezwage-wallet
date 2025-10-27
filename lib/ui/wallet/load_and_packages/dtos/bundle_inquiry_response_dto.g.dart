// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle_inquiry_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BundleInquiryResponseDto _$BundleInquiryResponseDtoFromJson(
  Map<String, dynamic> json,
) => _BundleInquiryResponseDto(
  statusCode: json['statusCode'] as String,
  statusMessage: json['statusMessage'] as String,
  verificationToken: json['verificationToken'] as String,
  verificationMethod:
      $enumDecodeNullable(
        _$VerificationMethodEnumMap,
        json['verificationMethod'],
      ) ??
      VerificationMethod.otp,
  data: json['data'] == null
      ? null
      : BundleInquiryData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BundleInquiryResponseDtoToJson(
  _BundleInquiryResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'verificationToken': instance.verificationToken,
  'verificationMethod':
      _$VerificationMethodEnumMap[instance.verificationMethod]!,
  'data': instance.data?.toJson(),
};

const _$VerificationMethodEnumMap = {
  VerificationMethod.otp: 'Otp',
  VerificationMethod.bvs: 'bvs',
  VerificationMethod.NONE: 'NONE',
};

_BundleInquiryData _$BundleInquiryDataFromJson(Map<String, dynamic> json) =>
    _BundleInquiryData(
      bundleId: json['bundleId'] as String?,
      customerId: json['customerId'] as String?,
      price: json['price'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$BundleInquiryDataToJson(_BundleInquiryData instance) =>
    <String, dynamic>{
      'bundleId': instance.bundleId,
      'customerId': instance.customerId,
      'price': instance.price,
      'description': instance.description,
    };
