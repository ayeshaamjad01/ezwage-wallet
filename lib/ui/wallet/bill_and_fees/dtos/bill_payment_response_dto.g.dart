// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_payment_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillPaymentResponseDto _$BillPaymentResponseDtoFromJson(
  Map<String, dynamic> json,
) => _BillPaymentResponseDto(
  statusCode: json['statusCode'] as String,
  statusMessage: json['statusMessage'] as String,
  data: json['data'] == null
      ? null
      : BillPaymentDataDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BillPaymentResponseDtoToJson(
  _BillPaymentResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'data': instance.data?.toJson(),
};

_BillPaymentDataDto _$BillPaymentDataDtoFromJson(Map<String, dynamic> json) =>
    _BillPaymentDataDto(
      transactionDateTime: json['transactionDateTime'] as String?,
      stan: json['stan'] as String?,
      transactionId: json['transactionId'] as String?,
      rrn: json['rrn'] as String?,
    );

Map<String, dynamic> _$BillPaymentDataDtoToJson(_BillPaymentDataDto instance) =>
    <String, dynamic>{
      'transactionDateTime': instance.transactionDateTime,
      'stan': instance.stan,
      'transactionId': instance.transactionId,
      'rrn': instance.rrn,
    };
