import 'package:ezwage/ui/wallet/core/models/inquiry_reponse_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_inquiry_response_dto.freezed.dart';
part 'bill_inquiry_response_dto.g.dart';

/// Response DTO for Bill Inquiry (Title Fetch)
@freezed
abstract class BillInquiryResponseDto with _$BillInquiryResponseDto {
  const factory BillInquiryResponseDto({
    required String statusCode,
    required String statusMessage,

    /// Wraps verificationToken + verificationMethod
    required String verificationToken,
    @Default(VerificationMethod.otp) VerificationMethod verificationMethod,

    BillInquiryDataDto? data,
  }) = _BillInquiryResponseDto;

  factory BillInquiryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BillInquiryResponseDtoFromJson(json);
}

/// Detailed data returned in a successful Bill Inquiry
@freezed
abstract class BillInquiryDataDto with _$BillInquiryDataDto {
  const factory BillInquiryDataDto({
    String? totalAmount,
    String? billMonth,
    String? amountBeforeDueDate,
    String? billStatus,
    String? billIssueDate,
    String? consumerNumber,
    String? billerName,
    String? billDueDate,
    String? amountAfterDueDate,
    String? consumerName,
  }) = _BillInquiryDataDto;

  factory BillInquiryDataDto.fromJson(Map<String, dynamic> json) =>
      _$BillInquiryDataDtoFromJson(json);
}
