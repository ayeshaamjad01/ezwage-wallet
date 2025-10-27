import 'package:ezwage/ui/wallet/core/utils/json_converters/search_request_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_list_request_dto.freezed.dart';
part 'bill_list_request_dto.g.dart';

/// Request DTO for fetching list of billers
@freezed
abstract class BillListRequestDto with _$BillListRequestDto {


  const factory BillListRequestDto({
    required String offset,
    required String limit,
   @SearchRequestConverter()  String? search,
    @Default("v1") String version,
  }) = _BillListRequestDto;

  factory BillListRequestDto.fromJson(Map<String, dynamic> json) =>
      _$BillListRequestDtoFromJson(json);
}
