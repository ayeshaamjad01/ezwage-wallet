// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gl_balance_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetGlBalanceRequestDto _$GetGlBalanceRequestDtoFromJson(
  Map<String, dynamic> json,
) => _GetGlBalanceRequestDto(
  glAccount: json['glAccount'] as String,
  fromDate: json['fromDate'] as String,
  toDate: json['toDate'] as String,
);

Map<String, dynamic> _$GetGlBalanceRequestDtoToJson(
  _GetGlBalanceRequestDto instance,
) => <String, dynamic>{
  'glAccount': instance.glAccount,
  'fromDate': instance.fromDate,
  'toDate': instance.toDate,
};
