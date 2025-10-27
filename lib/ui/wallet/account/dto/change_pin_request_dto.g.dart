// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_pin_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePinRequestDto _$ChangePinRequestDtoFromJson(Map<String, dynamic> json) =>
    _ChangePinRequestDto(
      mobileNo: json['mobileNo'] as String,
      oldPin: json['oldPin'] as String,
      newPin: json['newPin'] as String,
    );

Map<String, dynamic> _$ChangePinRequestDtoToJson(
  _ChangePinRequestDto instance,
) => <String, dynamic>{
  'mobileNo': instance.mobileNo,
  'oldPin': instance.oldPin,
  'newPin': instance.newPin,
};
