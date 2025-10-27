// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telco_bundle_list_detail_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TelcoBundleListDetailResponseDto _$TelcoBundleListDetailResponseDtoFromJson(
  Map<String, dynamic> json,
) => _TelcoBundleListDetailResponseDto(
  statusCode: json['statusCode'] as String,
  statusMessage: json['statusMessage'] as String,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => BundleDetailDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$TelcoBundleListDetailResponseDtoToJson(
  _TelcoBundleListDetailResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'data': instance.data.map((e) => e.toJson()).toList(),
};

_BundleDetailDto _$BundleDetailDtoFromJson(Map<String, dynamic> json) =>
    _BundleDetailDto(
      id: (json['id'] as num).toInt(),
      validity: json['validity'] as String?,
      discount: json['discount'] as String?,
      price: json['price'] as String?,
      description: json['description'] as String?,
      data: json['data'] as String?,
      sms: (json['sms'] as num?)?.toInt(),
      displayName: json['displayName'] as String?,
      bundleType: json['bundleType'] as String?,
      oldPrice: json['oldPrice'] as String?,
      onMin: (json['onMin'] as num?)?.toInt(),
      offMin: (json['offMin'] as num?)?.toInt(),
      allMin: (json['allMin'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BundleDetailDtoToJson(_BundleDetailDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'validity': instance.validity,
      'discount': instance.discount,
      'price': instance.price,
      'description': instance.description,
      'data': instance.data,
      'sms': instance.sms,
      'displayName': instance.displayName,
      'bundleType': instance.bundleType,
      'oldPrice': instance.oldPrice,
      'onMin': instance.onMin,
      'offMin': instance.offMin,
      'allMin': instance.allMin,
    };
