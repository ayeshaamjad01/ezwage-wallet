// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telco_list_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TelcoListRequestDto _$TelcoListRequestDtoFromJson(Map<String, dynamic> json) =>
    _TelcoListRequestDto(
      offset: json['offset'] as String,
      limit: json['limit'] as String,
      search: const SearchRequestConverter().fromJson(
        json['search'] as String?,
      ),
      version: json['version'] as String? ?? "v1",
      type: $enumDecode(_$TeleCosBillTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$TelcoListRequestDtoToJson(
  _TelcoListRequestDto instance,
) => <String, dynamic>{
  'offset': instance.offset,
  'limit': instance.limit,
  'search': const SearchRequestConverter().toJson(instance.search),
  'version': instance.version,
  'type': _$TeleCosBillTypeEnumMap[instance.type]!,
};

const _$TeleCosBillTypeEnumMap = {
  TeleCosBillType.prepaid: '1',
  TeleCosBillType.postpaid: '2',
  TeleCosBillType.bundle: '3',
};
