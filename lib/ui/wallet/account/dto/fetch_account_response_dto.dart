import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_account_response_dto.freezed.dart';

part 'fetch_account_response_dto.g.dart';

@freezed
abstract class FetchAccountResponseDto with _$FetchAccountResponseDto {
  const factory FetchAccountResponseDto({
    required String statusCode,
    required String statusMessage,
    required String accountStatus,
  }) = _FetchAccountResponseDto;

  factory FetchAccountResponseDto.fromJson(Map<String, dynamic> json) =>
      _$FetchAccountResponseDtoFromJson(json);
}
