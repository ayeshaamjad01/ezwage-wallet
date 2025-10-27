// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_linking_confirmation_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountLinkingConfirmationRequestDto
_$AccountLinkingConfirmationRequestDtoFromJson(Map<String, dynamic> json) =>
    _AccountLinkingConfirmationRequestDto(
      mobileNo: json['mobileNo'] as String,
      cnic: json['cnic'] as String,
      otp: json['otp'] as String,
      verificationToken: json['verificationToken'] as String,
      extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$AccountLinkingConfirmationRequestDtoToJson(
  _AccountLinkingConfirmationRequestDto instance,
) => <String, dynamic>{
  'mobileNo': instance.mobileNo,
  'cnic': instance.cnic,
  'otp': instance.otp,
  'verificationToken': instance.verificationToken,
  'extInfo': instance.extInfo,
};
