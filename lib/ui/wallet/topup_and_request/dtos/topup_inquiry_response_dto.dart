import 'package:ezwage/ui/wallet/core/models/inquiry_reponse_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'topup_inquiry_response_dto.freezed.dart';

part 'topup_inquiry_response_dto.g.dart';

/// Response DTO for Mobile TopUp Inquiry
@freezed
abstract class TopupInquiryResponseDto with _$TopupInquiryResponseDto {
  const factory TopupInquiryResponseDto({
    required String statusCode,
    required String statusMessage,
    required String verificationToken,
    @Default(VerificationMethod.otp) VerificationMethod verificationMethod,// mapped from verification fields
    TopupInquiryDataDto? data,
  }) = _TopupInquiryResponseDto;

  factory TopupInquiryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TopupInquiryResponseDtoFromJson(json);
}

/// Additional inquiry data returned by the API
@freezed
abstract class TopupInquiryDataDto with _$TopupInquiryDataDto {
  const factory TopupInquiryDataDto({
    String? telcoName,
    String? utilityCompanyId,
    String? consumerNumber,
    String? consumerName,
  }) = _TopupInquiryDataDto;

  factory TopupInquiryDataDto.fromJson(Map<String, dynamic> json) =>
      _$TopupInquiryDataDtoFromJson(json);
}
