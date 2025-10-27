import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_inquiry_request_dto.freezed.dart';
part 'bill_inquiry_request_dto.g.dart';

/// Request DTO for Bill Inquiry (Title Fetch)
@freezed
abstract class BillInquiryRequestDto with _$BillInquiryRequestDto {
  const factory BillInquiryRequestDto({
    required String senderAccount,
    required String billerId,
    required String amount,
    required String customerId,
    required String consumerNumber,
    required String consumerName,
    required String taxAmount,
    @Default("v1") String version,
  }) = _BillInquiryRequestDto;

  factory BillInquiryRequestDto.fromJson(Map<String, dynamic> json) =>
      _$BillInquiryRequestDtoFromJson(json);
}
