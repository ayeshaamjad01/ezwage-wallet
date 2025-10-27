import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_dto.freezed.dart';

part 'auth_response_dto.g.dart';

@freezed
abstract class AuthResponseDto with _$AuthResponseDto {
  const factory AuthResponseDto({
    required String statusCode,
    required String statusMessage,
    required String token,
    required String expiresIn,
  }) = _AuthResponseDto;

  factory AuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDtoFromJson(json);
}
