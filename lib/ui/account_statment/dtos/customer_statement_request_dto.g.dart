// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_statement_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerStatementRequestDto _$CustomerStatementRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CustomerStatementRequestDto(
  mobile: json['mobile'] as String,
  version: json['version'] as String? ?? "v1",
  startDate: json['startDate'] as String,
  endDate: json['endDate'] as String,
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$CustomerStatementRequestDtoToJson(
  _CustomerStatementRequestDto instance,
) => <String, dynamic>{
  'mobile': instance.mobile,
  'version': instance.version,
  'startDate': instance.startDate,
  'endDate': instance.endDate,
  'extInfo': instance.extInfo,
};
