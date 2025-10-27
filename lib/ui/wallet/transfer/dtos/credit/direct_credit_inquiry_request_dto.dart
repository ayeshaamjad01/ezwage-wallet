import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_credit_inquiry_request_dto.freezed.dart';

part 'direct_credit_inquiry_request_dto.g.dart';

@freezed
abstract class DirectCreditInquiryRequestDto
    with _$DirectCreditInquiryRequestDto {
  const factory DirectCreditInquiryRequestDto({
    required String receiverAccount,
    required String terminalId,
    required String terminalNameLoc,
    required String senderAccount,
    required String amount,
    required String customerId,
    @Default("v1") String version,
    @Default({}) Map<String, dynamic> extInfo,
  }) = _DirectCreditInquiryRequestDto;

  factory DirectCreditInquiryRequestDto.fromJson(Map<String, dynamic> json) =>
      _$DirectCreditInquiryRequestDtoFromJson(json);
}
