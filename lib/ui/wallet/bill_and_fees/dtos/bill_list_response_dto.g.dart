// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillListResponseDto _$BillListResponseDtoFromJson(Map<String, dynamic> json) =>
    _BillListResponseDto(
      statusCode: json['statusCode'] as String,
      statusMessage: json['statusMessage'] as String,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => BillerDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$BillListResponseDtoToJson(
  _BillListResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'data': instance.data.map((e) => e.toJson()).toList(),
};

_BillerDto _$BillerDtoFromJson(Map<String, dynamic> json) => _BillerDto(
  billerId: (json['billerId'] as num?)?.toInt(),
  billerName: json['billerName'] as String?,
  billerLogo: json['billerLogo'] as String?,
  isPartialAllowed: (json['isPartialAllowed'] as num?)?.toInt(),
);

Map<String, dynamic> _$BillerDtoToJson(_BillerDto instance) =>
    <String, dynamic>{
      'billerId': instance.billerId,
      'billerName': instance.billerName,
      'billerLogo': instance.billerLogo,
      'isPartialAllowed': instance.isPartialAllowed,
    };
