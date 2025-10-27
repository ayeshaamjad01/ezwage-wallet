import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_pin_inquiry_request_dto.freezed.dart';
part 'forgot_pin_inquiry_request_dto.g.dart';

@freezed
abstract class ForgotPinInquiryRequestDto with _$ForgotPinInquiryRequestDto {
  const factory ForgotPinInquiryRequestDto({
    required String mobile,
  }) = _ForgotPinInquiryRequestDto;

  factory ForgotPinInquiryRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ForgotPinInquiryRequestDtoFromJson(json);
}
