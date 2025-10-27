// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'ibft_payment_response_dto.freezed.dart';
//
// part 'ibft_payment_response_dto.g.dart';
//
// @freezed
// abstract class IbftPaymentResponseDto with _$IbftPaymentResponseDto {
//   const factory IbftPaymentResponseDto({
//     String? transactionDateTime,
//     String? transactionId,
//     String? rrn,
//     String? stan,
//     String? sessionId,
//   }) = _IbftPaymentResponseDto;
//
//   factory IbftPaymentResponseDto.fromJson(Map<String, dynamic> json) =>
//       _$IbftPaymentResponseDtoFromJson(json);
// }



import 'package:freezed_annotation/freezed_annotation.dart';

part 'ibft_payment_response_dto.freezed.dart';
part 'ibft_payment_response_dto.g.dart';

@freezed
abstract class IbftPaymentApiResponse with _$IbftPaymentApiResponse {
  const factory IbftPaymentApiResponse({
    String? statusCode,
    String? statusMessage,
    IbftPaymentResponseDto? data,
  }) = _IbftPaymentApiResponse;

  factory IbftPaymentApiResponse.fromJson(Map<String, dynamic> json) =>
      _$IbftPaymentApiResponseFromJson(json);
}

@freezed
abstract class IbftPaymentResponseDto with _$IbftPaymentResponseDto {
  const factory IbftPaymentResponseDto({
    String? transactionDateTime,
    String? stan,
    String? transactionId,
    String? rrn,
  }) = _IbftPaymentResponseDto;

  factory IbftPaymentResponseDto.fromJson(Map<String, dynamic> json) =>
      _$IbftPaymentResponseDtoFromJson(json);
}
