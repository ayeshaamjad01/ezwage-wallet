// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_debit_deduct_fund_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectDebitDeductFundResponseDto _$DirectDebitDeductFundResponseDtoFromJson(
  Map<String, dynamic> json,
) => _DirectDebitDeductFundResponseDto(
  actualBalance: json['actualBalance'] as String,
  availableBalance: json['availableBalance'] as String,
  referenceTxId: json['referenceTxId'] as String,
);

Map<String, dynamic> _$DirectDebitDeductFundResponseDtoToJson(
  _DirectDebitDeductFundResponseDto instance,
) => <String, dynamic>{
  'actualBalance': instance.actualBalance,
  'availableBalance': instance.availableBalance,
  'referenceTxId': instance.referenceTxId,
};
