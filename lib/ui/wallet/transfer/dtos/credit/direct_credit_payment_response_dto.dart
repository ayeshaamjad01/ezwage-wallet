// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'direct_credit_payment_response_dto.freezed.dart';
//
// part 'direct_credit_payment_response_dto.g.dart';
//
// @freezed
// abstract class DirectCreditPaymentResponseDto
//     with _$DirectCreditPaymentResponseDto {
//   const factory DirectCreditPaymentResponseDto({
//     required String? transactionDateTime,
//     required String? transactionId,
//   }) = _DirectCreditPaymentResponseDto;
//
//   factory DirectCreditPaymentResponseDto.fromJson(Map<String, dynamic> json) =>
//       _$DirectCreditPaymentResponseDtoFromJson(json);
// }


import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_credit_payment_response_dto.freezed.dart';
part 'direct_credit_payment_response_dto.g.dart';

/// Response DTO for Direct Credit Payment
@freezed
abstract class DirectCreditPaymentResponseDto
    with _$DirectCreditPaymentResponseDto {
  const factory DirectCreditPaymentResponseDto({
    required String? statusCode,
    required String? statusMessage,
    required DirectCreditPaymentDataDto? data,
  }) = _DirectCreditPaymentResponseDto;

  factory DirectCreditPaymentResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DirectCreditPaymentResponseDtoFromJson(json);
}

/// Represents the nested `data` object
@freezed
abstract class DirectCreditPaymentDataDto with _$DirectCreditPaymentDataDto {
  const factory DirectCreditPaymentDataDto({
    required String? transactionId,
    required String? transactionDateTime,
    required String? rrn,
    required String? stan,
  }) = _DirectCreditPaymentDataDto;

  factory DirectCreditPaymentDataDto.fromJson(Map<String, dynamic> json) =>
      _$DirectCreditPaymentDataDtoFromJson(json);
}
