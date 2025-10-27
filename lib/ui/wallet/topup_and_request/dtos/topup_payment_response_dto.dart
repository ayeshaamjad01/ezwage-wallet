import 'package:freezed_annotation/freezed_annotation.dart';

part 'topup_payment_response_dto.freezed.dart';

part 'topup_payment_response_dto.g.dart';

/// Response DTO for Mobile TopUp Payment
@freezed
abstract class TopupPaymentResponseDto with _$TopupPaymentResponseDto {
  const factory TopupPaymentResponseDto({
    required String statusCode,
    required String statusMessage,
    TopupPaymentDataDto? data,
  }) = _TopupPaymentResponseDto;

  factory TopupPaymentResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TopupPaymentResponseDtoFromJson(json);
}

@freezed
abstract class TopupPaymentDataDto with _$TopupPaymentDataDto {
  const factory TopupPaymentDataDto({
    String? transactionDateTime, // YYYY-MM-DD HH:MM:SS
    String? transactionId,
    String? sessionId, // Returned from NADRA (if BVS)
  }) = _TopupPaymentDataDto;

  factory TopupPaymentDataDto.fromJson(Map<String, dynamic> json) =>
      _$TopupPaymentDataDtoFromJson(json);
}
