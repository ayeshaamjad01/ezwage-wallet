import 'package:ezwage/ui/wallet/core/models/inquiry_reponse_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bundle_inquiry_response_dto.freezed.dart';

part 'bundle_inquiry_response_dto.g.dart';

@freezed
abstract class BundleInquiryResponseDto with _$BundleInquiryResponseDto {
  const factory BundleInquiryResponseDto({
    required String statusCode,
    required String statusMessage,
    required String verificationToken,
    @Default(VerificationMethod.otp) VerificationMethod verificationMethod,
    BundleInquiryData? data,
  }) = _BundleInquiryResponseDto;

  factory BundleInquiryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BundleInquiryResponseDtoFromJson(json);
}

@freezed
abstract class BundleInquiryData with _$BundleInquiryData {
  const factory BundleInquiryData({
    String? bundleId,
    String? customerId,
    String? price,
    String? description,
  }) = _BundleInquiryData;

  factory BundleInquiryData.fromJson(Map<String, dynamic> json) =>
      _$BundleInquiryDataFromJson(json);
}
