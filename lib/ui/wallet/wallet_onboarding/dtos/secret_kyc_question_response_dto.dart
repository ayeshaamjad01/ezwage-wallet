import 'package:freezed_annotation/freezed_annotation.dart';

part 'secret_kyc_question_response_dto.freezed.dart';
part 'secret_kyc_question_response_dto.g.dart';

@freezed
abstract class SecretKycQuestionResponseDto with _$SecretKycQuestionResponseDto {
  const factory SecretKycQuestionResponseDto({
    @Default([]) List<String> motherNameList,
    @Default([]) List<String> birthPlaceList,
    required String triesLeft,
  }) = _SecretKycQuestionResponseDto;

  factory SecretKycQuestionResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SecretKycQuestionResponseDtoFromJson(json);
}
