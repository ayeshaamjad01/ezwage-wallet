import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_payment_request_dto.freezed.dart';
part 'bill_payment_request_dto.g.dart';

/// Request DTO for performing Bill Payment
@freezed
abstract class BillPaymentRequestDto with _$BillPaymentRequestDto {
  const factory BillPaymentRequestDto({
    String? template, // optional
    required String senderAccount,
    required int billerId,
    required String amount,
    String? verificationToken,
    String? index, // for BVS finger index
    String? otp, // for OTP verification
    String? consumerNumber,
    String? sessionId, // for BVS NADRA TRA Session ID
    @Default("v1") String version,
    String? transactionId, // returned by inquiry sometimes
    required String feeAmount,
    required String billMonth,
    required String customerId,
    required String taxAmount,
    required String consumerName,
  }) = _BillPaymentRequestDto;

  factory BillPaymentRequestDto.fromJson(Map<String, dynamic> json) =>
      _$BillPaymentRequestDtoFromJson(json);
}
