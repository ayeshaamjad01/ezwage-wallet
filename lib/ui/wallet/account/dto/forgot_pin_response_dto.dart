import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_pin_response_dto.freezed.dart';

part 'forgot_pin_response_dto.g.dart';


@freezed
abstract class ForgotPinResponseDto with _$ForgotPinResponseDto {
  const factory ForgotPinResponseDto({
    required String verificationCode,
    required String mobile,
    required String otp,
    required String newPin,
    @Default("v1") String version,
  }) = _ForgotPinResponseDto;

  factory ForgotPinResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ForgotPinResponseDtoFromJson(json);
}
