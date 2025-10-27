// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_credit_inquiry_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectCreditInquiryResponseDto _$DirectCreditInquiryResponseDtoFromJson(
  Map<String, dynamic> json,
) => _DirectCreditInquiryResponseDto(
  statusCode: json['statusCode'] as String?,
  statusMessage: json['statusMessage'] as String?,
  data: json['data'] == null
      ? null
      : DirectCreditInquiryDataDto.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  verificationToken: json['verificationToken'] as String?,
  verificationMethod: json['verificationMethod'] as String?,
);

Map<String, dynamic> _$DirectCreditInquiryResponseDtoToJson(
  _DirectCreditInquiryResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'data': instance.data?.toJson(),
  'verificationToken': instance.verificationToken,
  'verificationMethod': instance.verificationMethod,
};

_DirectCreditInquiryDataDto _$DirectCreditInquiryDataDtoFromJson(
  Map<String, dynamic> json,
) => _DirectCreditInquiryDataDto(
  accountStatus: json['accountStatus'] as String?,
  accountTitle: json['accountTitle'] as String?,
  remainingLimit: json['remainingLimit'] as String?,
  accountType: json['accountType'] as String?,
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$DirectCreditInquiryDataDtoToJson(
  _DirectCreditInquiryDataDto instance,
) => <String, dynamic>{
  'accountStatus': instance.accountStatus,
  'accountTitle': instance.accountTitle,
  'remainingLimit': instance.remainingLimit,
  'accountType': instance.accountType,
  'extInfo': instance.extInfo,
};
