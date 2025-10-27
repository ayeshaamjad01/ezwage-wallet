// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_pin_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForgotPinResponseDto _$ForgotPinResponseDtoFromJson(
  Map<String, dynamic> json,
) => _ForgotPinResponseDto(
  verificationCode: json['verificationCode'] as String,
  mobile: json['mobile'] as String,
  otp: json['otp'] as String,
  newPin: json['newPin'] as String,
  version: json['version'] as String? ?? "v1",
);

Map<String, dynamic> _$ForgotPinResponseDtoToJson(
  _ForgotPinResponseDto instance,
) => <String, dynamic>{
  'verificationCode': instance.verificationCode,
  'mobile': instance.mobile,
  'otp': instance.otp,
  'newPin': instance.newPin,
  'version': instance.version,
};
