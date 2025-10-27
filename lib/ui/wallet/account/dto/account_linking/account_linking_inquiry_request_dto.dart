import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_linking_inquiry_request_dto.freezed.dart';

part 'account_linking_inquiry_request_dto.g.dart';

@freezed
abstract class AccountLinkingInquiryRequestDto
    with _$AccountLinkingInquiryRequestDto {
  const factory AccountLinkingInquiryRequestDto({
    required String cnic,
    @Default({}) Map<String, dynamic> extInfo,
  }) = _AccountLinkingInquiryRequestDto;

  factory AccountLinkingInquiryRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AccountLinkingInquiryRequestDtoFromJson(json);
}
