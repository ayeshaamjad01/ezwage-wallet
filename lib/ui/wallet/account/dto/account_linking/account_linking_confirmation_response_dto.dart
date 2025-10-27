import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_linking_confirmation_response_dto.freezed.dart';
part 'account_linking_confirmation_response_dto.g.dart';

@freezed
abstract class AccountLinkingConfirmationResponseDto with _$AccountLinkingConfirmationResponseDto {
  const factory AccountLinkingConfirmationResponseDto({
    required String status,
  }) = _AccountLinkingConfirmationResponseDto;

  factory AccountLinkingConfirmationResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AccountLinkingConfirmationResponseDtoFromJson(json);
}
