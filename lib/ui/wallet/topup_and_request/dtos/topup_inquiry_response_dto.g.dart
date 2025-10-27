// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topup_inquiry_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopupInquiryResponseDto _$TopupInquiryResponseDtoFromJson(
  Map<String, dynamic> json,
) => _TopupInquiryResponseDto(
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
      : TopupInquiryDataDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TopupInquiryResponseDtoToJson(
  _TopupInquiryResponseDto instance,
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

_TopupInquiryDataDto _$TopupInquiryDataDtoFromJson(Map<String, dynamic> json) =>
    _TopupInquiryDataDto(
      telcoName: json['telcoName'] as String?,
      utilityCompanyId: json['utilityCompanyId'] as String?,
      consumerNumber: json['consumerNumber'] as String?,
      consumerName: json['consumerName'] as String?,
    );

Map<String, dynamic> _$TopupInquiryDataDtoToJson(
  _TopupInquiryDataDto instance,
) => <String, dynamic>{
  'telcoName': instance.telcoName,
  'utilityCompanyId': instance.utilityCompanyId,
  'consumerNumber': instance.consumerNumber,
  'consumerName': instance.consumerName,
};
