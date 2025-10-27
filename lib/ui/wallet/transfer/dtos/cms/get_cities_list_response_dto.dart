import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_cities_list_response_dto.freezed.dart';
part 'get_cities_list_response_dto.g.dart';

@freezed
abstract class GetCitiesListResponseDto with _$GetCitiesListResponseDto {
  const factory GetCitiesListResponseDto({

    required List<CityItemDto> data,
  }) = _GetCitiesListResponseDto;

  factory GetCitiesListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetCitiesListResponseDtoFromJson(json);
}

@freezed
abstract class CityItemDto with _$CityItemDto {
  const factory CityItemDto({
    required int cityId,
    required String cityName,
  }) = _CityItemDto;

  factory CityItemDto.fromJson(Map<String, dynamic> json) =>
      _$CityItemDtoFromJson(json);
}
