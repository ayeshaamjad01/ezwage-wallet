// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_list_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillListRequestDto _$BillListRequestDtoFromJson(Map<String, dynamic> json) =>
    _BillListRequestDto(
      offset: json['offset'] as String,
      limit: json['limit'] as String,
      search: const SearchRequestConverter().fromJson(
        json['search'] as String?,
      ),
      version: json['version'] as String? ?? "v1",
    );

Map<String, dynamic> _$BillListRequestDtoToJson(_BillListRequestDto instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'search': const SearchRequestConverter().toJson(instance.search),
      'version': instance.version,
    };
