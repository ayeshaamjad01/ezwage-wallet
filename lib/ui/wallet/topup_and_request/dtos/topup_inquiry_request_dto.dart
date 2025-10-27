import 'package:freezed_annotation/freezed_annotation.dart';

part 'topup_inquiry_request_dto.freezed.dart';
part 'topup_inquiry_request_dto.g.dart';

/// Request DTO for Mobile TopUp Inquiry
@freezed
abstract class TopupInquiryRequestDto with _$TopupInquiryRequestDto {
  const factory TopupInquiryRequestDto({
    required String senderAccount,  // e.g. 03001234567
    required int telcoId,        // returned from Telco list
    required String customerId,
    required String consumerNumber, // mobile number or ref number
    @Default("v1") String version,        // v1
  }) = _TopupInquiryRequestDto;

  factory TopupInquiryRequestDto.fromJson(Map<String, dynamic> json) =>
      _$TopupInquiryRequestDtoFromJson(json);
}
