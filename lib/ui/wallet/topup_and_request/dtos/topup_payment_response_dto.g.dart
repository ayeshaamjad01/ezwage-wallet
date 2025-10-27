// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topup_payment_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopupPaymentResponseDto _$TopupPaymentResponseDtoFromJson(
  Map<String, dynamic> json,
) => _TopupPaymentResponseDto(
  statusCode: json['statusCode'] as String,
  statusMessage: json['statusMessage'] as String,
  data: json['data'] == null
      ? null
      : TopupPaymentDataDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TopupPaymentResponseDtoToJson(
  _TopupPaymentResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'data': instance.data?.toJson(),
};

_TopupPaymentDataDto _$TopupPaymentDataDtoFromJson(Map<String, dynamic> json) =>
    _TopupPaymentDataDto(
      transactionDateTime: json['transactionDateTime'] as String?,
      transactionId: json['transactionId'] as String?,
      sessionId: json['sessionId'] as String?,
    );

Map<String, dynamic> _$TopupPaymentDataDtoToJson(
  _TopupPaymentDataDto instance,
) => <String, dynamic>{
  'transactionDateTime': instance.transactionDateTime,
  'transactionId': instance.transactionId,
  'sessionId': instance.sessionId,
};
