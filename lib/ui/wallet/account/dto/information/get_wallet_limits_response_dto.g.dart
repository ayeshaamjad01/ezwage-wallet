// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_wallet_limits_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetWalletLimitsResponseDto _$GetWalletLimitsResponseDtoFromJson(
  Map<String, dynamic> json,
) => _GetWalletLimitsResponseDto(
  dailyLimit: json['dailyLimit'] as String,
  monthlyLimit: json['monthlyLimit'] as String,
  yearlyLimit: json['yearlyLimit'] as String,
  remainingDailyLimit: json['remainingDailyLimit'] as String,
  remainingMonthlyLimit: json['remainingMonthlyLimit'] as String,
  remainingYearlyLimit: json['remainingYearlyLimit'] as String,
);

Map<String, dynamic> _$GetWalletLimitsResponseDtoToJson(
  _GetWalletLimitsResponseDto instance,
) => <String, dynamic>{
  'dailyLimit': instance.dailyLimit,
  'monthlyLimit': instance.monthlyLimit,
  'yearlyLimit': instance.yearlyLimit,
  'remainingDailyLimit': instance.remainingDailyLimit,
  'remainingMonthlyLimit': instance.remainingMonthlyLimit,
  'remainingYearlyLimit': instance.remainingYearlyLimit,
};
