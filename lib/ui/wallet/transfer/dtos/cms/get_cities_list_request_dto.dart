import 'package:ezwage/ui/wallet/core/utils/json_converters/search_request_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_cities_list_request_dto.freezed.dart';
part 'get_cities_list_request_dto.g.dart';

@freezed
abstract class GetCitiesListRequestDto with _$GetCitiesListRequestDto {
  const factory GetCitiesListRequestDto({
    required String offset,
    required String limit,
    @SearchRequestConverter()  String? search,
    @Default("v1") String version,
  }) = _GetCitiesListRequestDto;

  factory GetCitiesListRequestDto.fromJson(Map<String, dynamic> json) =>
      _$GetCitiesListRequestDtoFromJson(json);
}
