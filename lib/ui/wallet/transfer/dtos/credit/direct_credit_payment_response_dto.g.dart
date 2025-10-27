// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_credit_payment_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectCreditPaymentResponseDto _$DirectCreditPaymentResponseDtoFromJson(
  Map<String, dynamic> json,
) => _DirectCreditPaymentResponseDto(
  statusCode: json['statusCode'] as String?,
  statusMessage: json['statusMessage'] as String?,
  data: json['data'] == null
      ? null
      : DirectCreditPaymentDataDto.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$DirectCreditPaymentResponseDtoToJson(
  _DirectCreditPaymentResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'data': instance.data?.toJson(),
};

_DirectCreditPaymentDataDto _$DirectCreditPaymentDataDtoFromJson(
  Map<String, dynamic> json,
) => _DirectCreditPaymentDataDto(
  transactionId: json['transactionId'] as String?,
  transactionDateTime: json['transactionDateTime'] as String?,
  rrn: json['rrn'] as String?,
  stan: json['stan'] as String?,
);

Map<String, dynamic> _$DirectCreditPaymentDataDtoToJson(
  _DirectCreditPaymentDataDto instance,
) => <String, dynamic>{
  'transactionId': instance.transactionId,
  'transactionDateTime': instance.transactionDateTime,
  'rrn': instance.rrn,
  'stan': instance.stan,
};
