// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telco_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TelcoListResponseDto _$TelcoListResponseDtoFromJson(
  Map<String, dynamic> json,
) => _TelcoListResponseDto(
  statusCode: json['statusCode'] as String,
  statusMessage: json['statusMessage'] as String,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => TelcoDataDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TelcoListResponseDtoToJson(
  _TelcoListResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'data': instance.data?.map((e) => e.toJson()).toList(),
};

_TelcoDataDto _$TelcoDataDtoFromJson(Map<String, dynamic> json) =>
    _TelcoDataDto(
      telcoId: (json['telcoId'] as num?)?.toInt(),
      telcoName: json['telcoName'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$TelcoDataDtoToJson(_TelcoDataDto instance) =>
    <String, dynamic>{
      'telcoId': instance.telcoId,
      'telcoName': instance.telcoName,
      'image': instance.image,
    };
