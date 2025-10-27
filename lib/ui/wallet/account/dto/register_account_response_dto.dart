import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_account_response_dto.freezed.dart';

part 'register_account_response_dto.g.dart';

@freezed
abstract class RegisterAccountResponseDto with _$RegisterAccountResponseDto {
  const factory RegisterAccountResponseDto({
    required String statusCode,
    required String statusMessage,
    required RegisterAccountResponseData data,
  }) = _RegisterAccountResponseDto;

  factory RegisterAccountResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterAccountResponseDtoFromJson(json);
}

@freezed
abstract class RegisterAccountResponseData with _$RegisterAccountResponseData {
  const factory RegisterAccountResponseData({
    required String registrationStatus,
    required String customerId,
    required String accountNumber,
  }) = _RegisterAccountResponseData;

  factory RegisterAccountResponseData.fromJson(Map<String, dynamic> json) =>
      _$RegisterAccountResponseDataFromJson(json);
}
