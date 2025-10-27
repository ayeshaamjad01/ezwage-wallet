// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_pin_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForgotPinRequestDto _$ForgotPinRequestDtoFromJson(Map<String, dynamic> json) =>
    _ForgotPinRequestDto(
      verificationCode: json['verificationCode'] as String,
      mobile: json['mobile'] as String,
      otp: json['otp'] as String,
      newPin: json['newPin'] as String,
      version: json['version'] as String? ?? "v1",
    );

Map<String, dynamic> _$ForgotPinRequestDtoToJson(
  _ForgotPinRequestDto instance,
) => <String, dynamic>{
  'verificationCode': instance.verificationCode,
  'mobile': instance.mobile,
  'otp': instance.otp,
  'newPin': instance.newPin,
  'version': instance.version,
};
