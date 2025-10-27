import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_linking_confirmation_request_dto.freezed.dart';

part 'account_linking_confirmation_request_dto.g.dart';

@freezed
abstract class AccountLinkingConfirmationRequestDto
    with _$AccountLinkingConfirmationRequestDto {
  const factory AccountLinkingConfirmationRequestDto({
    required String mobileNo,
    required String cnic,
    required String otp,
    required String verificationToken,
    @Default({}) Map extInfo,
  }) = _AccountLinkingConfirmationRequestDto;

  factory AccountLinkingConfirmationRequestDto.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountLinkingConfirmationRequestDtoFromJson(json);
}
