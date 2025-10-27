import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_list_response_dto.freezed.dart';

part 'bill_list_response_dto.g.dart';

/// Response DTO for fetching list of billers
@freezed
abstract class BillListResponseDto with _$BillListResponseDto {
  const factory BillListResponseDto({
    required String statusCode,
    required String statusMessage,
    @Default([]) List<BillerDto> data,
  }) = _BillListResponseDto;

  factory BillListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BillListResponseDtoFromJson(json);
}

/// Represents a single Biller entry
@freezed
abstract class BillerDto with _$BillerDto {
  const factory BillerDto({
    int? billerId,
    String? billerName,
    String? billerLogo,
    int? isPartialAllowed,
  }) = _BillerDto;

  factory BillerDto.fromJson(Map<String, dynamic> json) =>
      _$BillerDtoFromJson(json);
}
