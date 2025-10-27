import 'package:freezed_annotation/freezed_annotation.dart';

part 'telco_list_response_dto.freezed.dart';
part 'telco_list_response_dto.g.dart';

/// Response DTO for fetching Telco list
@freezed
abstract class TelcoListResponseDto with _$TelcoListResponseDto {
  const factory TelcoListResponseDto({
    required String statusCode,
    required String statusMessage,
    List<TelcoDataDto>? data,
  }) = _TelcoListResponseDto;

  factory TelcoListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TelcoListResponseDtoFromJson(json);
}

/// Telco details
@freezed
abstract class TelcoDataDto with _$TelcoDataDto {
  const factory TelcoDataDto({
    int? telcoId,
    String? telcoName,
    String? image,
  }) = _TelcoDataDto;

  factory TelcoDataDto.fromJson(Map<String, dynamic> json) =>
      _$TelcoDataDtoFromJson(json);
}
