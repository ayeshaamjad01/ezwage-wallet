import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_pin_request_dto.freezed.dart';

part 'forgot_pin_request_dto.g.dart';

@freezed
abstract class ForgotPinRequestDto with _$ForgotPinRequestDto {
  const factory ForgotPinRequestDto({
    required String verificationCode,
    required String mobile,
    required String otp,
    required String newPin,
    @Default("v1") String version,
  }) = _ForgotPinRequestDto;

  factory ForgotPinRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ForgotPinRequestDtoFromJson(json);
}
