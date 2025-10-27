// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bank_list_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetBankListRequestDto _$GetBankListRequestDtoFromJson(
  Map<String, dynamic> json,
) => _GetBankListRequestDto(
  offset: json['offset'] as String,
  limit: json['limit'] as String,
  search: const SearchRequestConverter().fromJson(json['search'] as String?),
  version: json['version'] as String? ?? "v1",
);

Map<String, dynamic> _$GetBankListRequestDtoToJson(
  _GetBankListRequestDto instance,
) => <String, dynamic>{
  'offset': instance.offset,
  'limit': instance.limit,
  'search': const SearchRequestConverter().toJson(instance.search),
  'version': instance.version,
};
