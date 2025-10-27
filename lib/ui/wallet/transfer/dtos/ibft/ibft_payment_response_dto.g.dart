// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ibft_payment_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IbftPaymentApiResponse _$IbftPaymentApiResponseFromJson(
  Map<String, dynamic> json,
) => _IbftPaymentApiResponse(
  statusCode: json['statusCode'] as String?,
  statusMessage: json['statusMessage'] as String?,
  data: json['data'] == null
      ? null
      : IbftPaymentResponseDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$IbftPaymentApiResponseToJson(
  _IbftPaymentApiResponse instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'data': instance.data?.toJson(),
};

_IbftPaymentResponseDto _$IbftPaymentResponseDtoFromJson(
  Map<String, dynamic> json,
) => _IbftPaymentResponseDto(
  transactionDateTime: json['transactionDateTime'] as String?,
  stan: json['stan'] as String?,
  transactionId: json['transactionId'] as String?,
  rrn: json['rrn'] as String?,
);

Map<String, dynamic> _$IbftPaymentResponseDtoToJson(
  _IbftPaymentResponseDto instance,
) => <String, dynamic>{
  'transactionDateTime': instance.transactionDateTime,
  'stan': instance.stan,
  'transactionId': instance.transactionId,
  'rrn': instance.rrn,
};
