// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bank_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetBankListResponseDto _$GetBankListResponseDtoFromJson(
  Map<String, dynamic> json,
) => _GetBankListResponseDto(
  statusCode: json['statusCode'] as String,
  statusMessage: json['statusMessage'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => BankItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetBankListResponseDtoToJson(
  _GetBankListResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'data': instance.data.map((e) => e.toJson()).toList(),
};

_BankItemDto _$BankItemDtoFromJson(Map<String, dynamic> json) => _BankItemDto(
  bankId: (json['bankId'] as num).toInt(),
  bankName: json['bankName'] as String,
  bankLogo: json['bankLogo'] as String,
);

Map<String, dynamic> _$BankItemDtoToJson(_BankItemDto instance) =>
    <String, dynamic>{
      'bankId': instance.bankId,
      'bankName': instance.bankName,
      'bankLogo': instance.bankLogo,
    };
