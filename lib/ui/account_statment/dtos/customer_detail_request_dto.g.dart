// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_detail_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerDetailRequestDto _$CustomerDetailRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CustomerDetailRequestDto(
  mobileNo: json['mobileNo'] as String,
  version: json['version'] as String? ?? "v1",
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$CustomerDetailRequestDtoToJson(
  _CustomerDetailRequestDto instance,
) => <String, dynamic>{
  'mobileNo': instance.mobileNo,
  'version': instance.version,
  'extInfo': instance.extInfo,
};
