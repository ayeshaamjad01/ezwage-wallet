// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customer_balance_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCustomerBalanceRequestDto _$GetCustomerBalanceRequestDtoFromJson(
  Map<String, dynamic> json,
) => _GetCustomerBalanceRequestDto(
  mobileNo: json['mobileNo'] as String,
  customerId: json['customerId'] as String,
  version: json['version'] as String? ?? "v1",
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$GetCustomerBalanceRequestDtoToJson(
  _GetCustomerBalanceRequestDto instance,
) => <String, dynamic>{
  'mobileNo': instance.mobileNo,
  'customerId': instance.customerId,
  'version': instance.version,
  'extInfo': instance.extInfo,
};
