// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secret_kyc_question_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SecretKycQuestionResponseDto _$SecretKycQuestionResponseDtoFromJson(
  Map<String, dynamic> json,
) => _SecretKycQuestionResponseDto(
  motherNameList:
      (json['motherNameList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  birthPlaceList:
      (json['birthPlaceList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  triesLeft: json['triesLeft'] as String,
);

Map<String, dynamic> _$SecretKycQuestionResponseDtoToJson(
  _SecretKycQuestionResponseDto instance,
) => <String, dynamic>{
  'motherNameList': instance.motherNameList,
  'birthPlaceList': instance.birthPlaceList,
  'triesLeft': instance.triesLeft,
};
