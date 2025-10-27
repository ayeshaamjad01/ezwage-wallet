import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_payment_response_dto.freezed.dart';

part 'bill_payment_response_dto.g.dart';

/// Response DTO for Bill Payment
@freezed
abstract class BillPaymentResponseDto with _$BillPaymentResponseDto {
  const factory BillPaymentResponseDto({
    required String statusCode,
    required String statusMessage,
    BillPaymentDataDto? data,
  }) = _BillPaymentResponseDto;

  factory BillPaymentResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BillPaymentResponseDtoFromJson(json);
}

/// Detailed transaction info for a successful Bill Payment
@freezed
abstract class BillPaymentDataDto with _$BillPaymentDataDto {
  const factory BillPaymentDataDto({
    String? transactionDateTime, // e.g. 2023-10-26 12:36:48
    String? stan, // unique
    String? transactionId, // transaction reference
    String? rrn, // retrieval reference number
  }) = _BillPaymentDataDto;

  factory BillPaymentDataDto.fromJson(Map<String, dynamic> json) =>
      _$BillPaymentDataDtoFromJson(json);
}
