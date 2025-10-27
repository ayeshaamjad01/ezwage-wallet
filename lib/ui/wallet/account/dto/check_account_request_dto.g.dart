// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_account_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckAccountRequestDto _$CheckAccountRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CheckAccountRequestDto(
  cnicIssuanceDate: json['cnicIssuanceDate'] as String,
  walletType: json['walletType'] as String?,
  cnicNo: json['cnicNo'] as String,
  mobileNo: json['mobileNo'] as String,
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$CheckAccountRequestDtoToJson(
  _CheckAccountRequestDto instance,
) => <String, dynamic>{
  'cnicIssuanceDate': instance.cnicIssuanceDate,
  'walletType': instance.walletType,
  'cnicNo': instance.cnicNo,
  'mobileNo': instance.mobileNo,
  'extInfo': instance.extInfo,
};
