// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_account_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FetchAccountResponseDto _$FetchAccountResponseDtoFromJson(
  Map<String, dynamic> json,
) => _FetchAccountResponseDto(
  statusCode: json['statusCode'] as String,
  statusMessage: json['statusMessage'] as String,
  accountStatus: json['accountStatus'] as String,
);

Map<String, dynamic> _$FetchAccountResponseDtoToJson(
  _FetchAccountResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'accountStatus': instance.accountStatus,
};
