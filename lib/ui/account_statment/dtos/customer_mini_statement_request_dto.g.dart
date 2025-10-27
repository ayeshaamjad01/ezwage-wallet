// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_mini_statement_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerMiniStatementRequestDto _$CustomerMiniStatementRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CustomerMiniStatementRequestDto(
  mobileNo: json['mobileNo'] as String,
  version: json['version'] as String? ?? "v1",
  customerId: json['customerId'] as String,
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$CustomerMiniStatementRequestDtoToJson(
  _CustomerMiniStatementRequestDto instance,
) => <String, dynamic>{
  'mobileNo': instance.mobileNo,
  'version': instance.version,
  'customerId': instance.customerId,
  'extInfo': instance.extInfo,
};
