// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'direct_credit_inquiry_response_dto.freezed.dart';
//
// part 'direct_credit_inquiry_response_dto.g.dart';
//
// @freezed
// abstract class DirectCreditInquiryResponseDto
//     with _$DirectCreditInquiryResponseDto {
//   const factory DirectCreditInquiryResponseDto({
//     required String verificationToken,
//     required String accountTitle,
//   }) = _DirectCreditInquiryResponseDto;
//
//   factory DirectCreditInquiryResponseDto.fromJson(Map<String, dynamic> json) =>
//       _$DirectCreditInquiryResponseDtoFromJson(json);
// }



import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_credit_inquiry_response_dto.freezed.dart';
part 'direct_credit_inquiry_response_dto.g.dart';

/// Response DTO for Direct Credit Inquiry
@freezed
abstract class DirectCreditInquiryResponseDto
    with _$DirectCreditInquiryResponseDto {
  const factory DirectCreditInquiryResponseDto({
    required String? statusCode,
    required String? statusMessage,
    required DirectCreditInquiryDataDto? data,
    required String? verificationToken,
    required String? verificationMethod,
  }) = _DirectCreditInquiryResponseDto;

  factory DirectCreditInquiryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DirectCreditInquiryResponseDtoFromJson(json);
}

/// Represents the nested `data` object
@freezed
abstract class DirectCreditInquiryDataDto with _$DirectCreditInquiryDataDto {
  const factory DirectCreditInquiryDataDto({
    required String? accountStatus,
    required String? accountTitle,
    required String? remainingLimit,
    required String? accountType,
    @Default({}) Map<String, dynamic> extInfo,
  }) = _DirectCreditInquiryDataDto;

  factory DirectCreditInquiryDataDto.fromJson(Map<String, dynamic> json) =>
      _$DirectCreditInquiryDataDtoFromJson(json);
}
