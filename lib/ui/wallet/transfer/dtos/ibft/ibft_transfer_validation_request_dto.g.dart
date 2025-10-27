// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ibft_transfer_validation_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IbftTransferValidationRequestDto _$IbftTransferValidationRequestDtoFromJson(
  Map<String, dynamic> json,
) => _IbftTransferValidationRequestDto(
  userId: json['userId'] as String,
  otp: json['otp'] as String,
  answer: json['answer'] as String,
  version: json['version'] ?? "v1",
);

Map<String, dynamic> _$IbftTransferValidationRequestDtoToJson(
  _IbftTransferValidationRequestDto instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'otp': instance.otp,
  'answer': instance.answer,
  'version': instance.version,
};
