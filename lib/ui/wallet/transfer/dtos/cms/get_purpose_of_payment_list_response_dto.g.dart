// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_purpose_of_payment_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetPurposeOfPaymentListResponseDto
_$GetPurposeOfPaymentListResponseDtoFromJson(Map<String, dynamic> json) =>
    _GetPurposeOfPaymentListResponseDto(
      data: (json['data'] as List<dynamic>)
          .map(
            (e) => PurposeOfPaymentItemDto.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$GetPurposeOfPaymentListResponseDtoToJson(
  _GetPurposeOfPaymentListResponseDto instance,
) => <String, dynamic>{'data': instance.data.map((e) => e.toJson()).toList()};

_PurposeOfPaymentItemDto _$PurposeOfPaymentItemDtoFromJson(
  Map<String, dynamic> json,
) => _PurposeOfPaymentItemDto(
  purposeId: (json['purposeId'] as num).toInt(),
  purposeName: json['purposeName'] as String,
);

Map<String, dynamic> _$PurposeOfPaymentItemDtoToJson(
  _PurposeOfPaymentItemDto instance,
) => <String, dynamic>{
  'purposeId': instance.purposeId,
  'purposeName': instance.purposeName,
};
