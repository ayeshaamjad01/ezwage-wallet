// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telco_bundle_list_detail_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TelcoBundleListDetailRequestDto _$TelcoBundleListDetailRequestDtoFromJson(
  Map<String, dynamic> json,
) => _TelcoBundleListDetailRequestDto(
  version: json['version'] as String? ?? "v1",
  offset: json['offset'] as String,
  limit: json['limit'] as String,
  telcoId: json['telcoId'] as String,
  search: const SearchRequestConverter().fromJson(json['search'] as String?),
);

Map<String, dynamic> _$TelcoBundleListDetailRequestDtoToJson(
  _TelcoBundleListDetailRequestDto instance,
) => <String, dynamic>{
  'version': instance.version,
  'offset': instance.offset,
  'limit': instance.limit,
  'telcoId': instance.telcoId,
  'search': const SearchRequestConverter().toJson(instance.search),
};
