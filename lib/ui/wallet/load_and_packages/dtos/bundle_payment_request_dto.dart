import 'package:freezed_annotation/freezed_annotation.dart';

part 'bundle_payment_request_dto.freezed.dart';
part 'bundle_payment_request_dto.g.dart';

@freezed
abstract class BundlePaymentRequestDto with _$BundlePaymentRequestDto {
  const factory BundlePaymentRequestDto({
    required String accountNumber,
    required String customerId,
    String? consumerNumber,
    required String bundleId,
    @Default("v1") String version,
    // String? template, // For BVS authentication
    // String? index, // For BVS authentication
    // String? otp, // For OTP authentication
    // String? sessionId, // For BVS authentication
    String? verificationToken,
  }) = _BundlePaymentRequestDto;

  factory BundlePaymentRequestDto.fromJson(Map<String, dynamic> json) =>
      _$BundlePaymentRequestDtoFromJson(json);
}
