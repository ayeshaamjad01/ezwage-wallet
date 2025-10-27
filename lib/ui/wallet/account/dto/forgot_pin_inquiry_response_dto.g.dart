// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_pin_inquiry_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForgotPinInquiryResponseDto _$ForgotPinInquiryResponseDtoFromJson(
  Map<String, dynamic> json,
) => _ForgotPinInquiryResponseDto(
  verificationToken: json['verificationToken'] as String,
  mobile: json['mobile'] as String,
  otp: json['otp'] as String,
  version: json['version'] as String? ?? "v1",
);

Map<String, dynamic> _$ForgotPinInquiryResponseDtoToJson(
  _ForgotPinInquiryResponseDto instance,
) => <String, dynamic>{
  'verificationToken': instance.verificationToken,
  'mobile': instance.mobile,
  'otp': instance.otp,
  'version': instance.version,
};
