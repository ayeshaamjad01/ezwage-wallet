// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secret_kyc_question_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SecretKycQuestionRequestDto _$SecretKycQuestionRequestDtoFromJson(
  Map<String, dynamic> json,
) => _SecretKycQuestionRequestDto(
  mobile: json['mobile'] as String,
  version: json['version'] as String? ?? "v1",
);

Map<String, dynamic> _$SecretKycQuestionRequestDtoToJson(
  _SecretKycQuestionRequestDto instance,
) => <String, dynamic>{'mobile': instance.mobile, 'version': instance.version};
