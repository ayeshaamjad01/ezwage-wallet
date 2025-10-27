// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_debit_hold_fund_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectDebitHoldFundResponseDto _$DirectDebitHoldFundResponseDtoFromJson(
  Map<String, dynamic> json,
) => _DirectDebitHoldFundResponseDto(
  actualBalance: json['actualBalance'] as String,
  availableBalance: json['availableBalance'] as String,
  referenceTxId: json['referenceTxId'] as String,
);

Map<String, dynamic> _$DirectDebitHoldFundResponseDtoToJson(
  _DirectDebitHoldFundResponseDto instance,
) => <String, dynamic>{
  'actualBalance': instance.actualBalance,
  'availableBalance': instance.availableBalance,
  'referenceTxId': instance.referenceTxId,
};
