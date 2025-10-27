import 'package:freezed_annotation/freezed_annotation.dart';

part 'secret_kyc_question_request_dto.freezed.dart';

part 'secret_kyc_question_request_dto.g.dart';

@freezed
abstract class SecretKycQuestionRequestDto with _$SecretKycQuestionRequestDto {
  const factory SecretKycQuestionRequestDto({
    required String mobile,
    @Default("v1") String version,
  }) = _SecretKycQuestionRequestDto;

  factory SecretKycQuestionRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SecretKycQuestionRequestDtoFromJson(json);
}
