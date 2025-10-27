import 'package:ezwage/ui/wallet/core/utils/json_converters/search_request_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/enums/telecos_bill_type.dart';

part 'telco_list_request_dto.freezed.dart';
part 'telco_list_request_dto.g.dart';

/// Request DTO for fetching list of Telcos for Mobile Top-Ups
@freezed
abstract class TelcoListRequestDto with _$TelcoListRequestDto {
  const factory TelcoListRequestDto({
    required String offset,
    required String limit,
    @SearchRequestConverter() required String? search,
    @Default("v1") String version,
    required TeleCosBillType type, // 1 - Prepaid, 2 - Postpaid, 3 - Bundles
  }) = _TelcoListRequestDto;

  factory TelcoListRequestDto.fromJson(Map<String, dynamic> json) =>
      _$TelcoListRequestDtoFromJson(json);
}
