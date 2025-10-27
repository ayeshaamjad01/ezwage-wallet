// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle_payment_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BundlePaymentResponseDto _$BundlePaymentResponseDtoFromJson(
  Map<String, dynamic> json,
) => _BundlePaymentResponseDto(
  statusCode: json['statusCode'] as String,
  statusMessage: json['statusMessage'] as String,
  data: json['data'] == null
      ? null
      : BundlePaymentData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BundlePaymentResponseDtoToJson(
  _BundlePaymentResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'data': instance.data?.toJson(),
};

_BundlePaymentData _$BundlePaymentDataFromJson(Map<String, dynamic> json) =>
    _BundlePaymentData(
      transactionDateTime: json['transactionDateTime'] as String?,
      transactionId: json['transactionId'] as String?,
      sessionId: json['sessionId'] as String?,
    );

Map<String, dynamic> _$BundlePaymentDataToJson(_BundlePaymentData instance) =>
    <String, dynamic>{
      'transactionDateTime': instance.transactionDateTime,
      'transactionId': instance.transactionId,
      'sessionId': instance.sessionId,
    };
