import 'package:freezed_annotation/freezed_annotation.dart';

part 'topup_payment_request_dto.freezed.dart';
part 'topup_payment_request_dto.g.dart';

/// Request DTO for Mobile TopUp Payment
@freezed
abstract class TopupPaymentRequestDto with _$TopupPaymentRequestDto {
  const factory TopupPaymentRequestDto({
    required String senderAccount,     // e.g. 03464365914
    required String customerId,        // Customer ID
    required String consumerName,      // Name returned in Inquiry
    required String amount,            // In Paisas
    required int telcoId,           // From Telco list
    @Default("v1") String version,           // v1
    required String feeAmount,         // Fee in Paisas

    // Optional fields for different auth methods
    String? template,                  // WSQ encoded fingerprint (BVS)
    String? index,                     // Finger Number (BVS)
    String? otp,                       // OTP sent to customer
    String? sessionId,                 // NADRA session ID (BVS)
    String? consumerNumber,            // Customer’s mobile number or ref
    String? verificationToken,         // Token from Inquiry
  }) = _TopupPaymentRequestDto;

  factory TopupPaymentRequestDto.fromJson(Map<String, dynamic> json) =>
      _$TopupPaymentRequestDtoFromJson(json);
}
