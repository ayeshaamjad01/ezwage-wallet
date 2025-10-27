// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_linking_inquiry_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountLinkingInquiryResponseDto _$AccountLinkingInquiryResponseDtoFromJson(
  Map<String, dynamic> json,
) => _AccountLinkingInquiryResponseDto(
  mobileNo: json['mobileNo'] as String,
  cnic: json['cnic'] as String,
  accountStatus: json['accountStatus'] as String,
  otpRetryLimit: json['otpRetryLimit'] as String? ?? "0",
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$AccountLinkingInquiryResponseDtoToJson(
  _AccountLinkingInquiryResponseDto instance,
) => <String, dynamic>{
  'mobileNo': instance.mobileNo,
  'cnic': instance.cnic,
  'accountStatus': instance.accountStatus,
  'otpRetryLimit': instance.otpRetryLimit,
  'extInfo': instance.extInfo,
};
