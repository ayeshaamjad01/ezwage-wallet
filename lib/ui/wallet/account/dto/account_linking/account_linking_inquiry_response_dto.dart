import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_linking_inquiry_response_dto.freezed.dart';

part 'account_linking_inquiry_response_dto.g.dart';

@freezed
abstract class AccountLinkingInquiryResponseDto
    with _$AccountLinkingInquiryResponseDto {
  const factory AccountLinkingInquiryResponseDto({
    required String mobileNo,
    required String cnic,
    required String accountStatus,
    @Default("0") String otpRetryLimit,
    @Default({}) Map extInfo,
  }) = _AccountLinkingInquiryResponseDto;

  factory AccountLinkingInquiryResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountLinkingInquiryResponseDtoFromJson(json);
}
