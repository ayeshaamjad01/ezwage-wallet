// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cities_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCitiesListResponseDto _$GetCitiesListResponseDtoFromJson(
  Map<String, dynamic> json,
) => _GetCitiesListResponseDto(
  data: (json['data'] as List<dynamic>)
      .map((e) => CityItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetCitiesListResponseDtoToJson(
  _GetCitiesListResponseDto instance,
) => <String, dynamic>{'data': instance.data.map((e) => e.toJson()).toList()};

_CityItemDto _$CityItemDtoFromJson(Map<String, dynamic> json) => _CityItemDto(
  cityId: (json['cityId'] as num).toInt(),
  cityName: json['cityName'] as String,
);

Map<String, dynamic> _$CityItemDtoToJson(_CityItemDto instance) =>
    <String, dynamic>{'cityId': instance.cityId, 'cityName': instance.cityName};
