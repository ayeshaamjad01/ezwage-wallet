// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_wallet_limits_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetWalletLimitsRequestDto _$GetWalletLimitsRequestDtoFromJson(
  Map<String, dynamic> json,
) => _GetWalletLimitsRequestDto(
  mobile: json['mobile'] as String,
  useCase: json['useCase'] as String,
  version: json['version'] as String? ?? "version",
);

Map<String, dynamic> _$GetWalletLimitsRequestDtoToJson(
  _GetWalletLimitsRequestDto instance,
) => <String, dynamic>{
  'mobile': instance.mobile,
  'useCase': instance.useCase,
  'version': instance.version,
};
