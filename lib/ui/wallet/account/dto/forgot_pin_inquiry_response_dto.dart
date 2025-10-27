import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_pin_inquiry_response_dto.freezed.dart';
part 'forgot_pin_inquiry_response_dto.g.dart';

@freezed
abstract class ForgotPinInquiryResponseDto with _$ForgotPinInquiryResponseDto {
  const factory ForgotPinInquiryResponseDto({
    required String verificationToken,
    required String mobile,
    required String otp,
    @Default("v1") String version,
  }) = _ForgotPinInquiryResponseDto;

  factory ForgotPinInquiryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ForgotPinInquiryResponseDtoFromJson(json);
}
