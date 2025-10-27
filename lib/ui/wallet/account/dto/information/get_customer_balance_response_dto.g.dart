// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customer_balance_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCustomerBalanceResponseDto _$GetCustomerBalanceResponseDtoFromJson(
  Map<String, dynamic> json,
) => _GetCustomerBalanceResponseDto(
  accountBalance: json['accountBalance'] as String,
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$GetCustomerBalanceResponseDtoToJson(
  _GetCustomerBalanceResponseDto instance,
) => <String, dynamic>{
  'accountBalance': instance.accountBalance,
  'extInfo': instance.extInfo,
};
