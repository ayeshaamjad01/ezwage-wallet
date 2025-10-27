// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_account_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterAccountResponseDto _$RegisterAccountResponseDtoFromJson(
  Map<String, dynamic> json,
) => _RegisterAccountResponseDto(
  statusCode: json['statusCode'] as String,
  statusMessage: json['statusMessage'] as String,
  data: RegisterAccountResponseData.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$RegisterAccountResponseDtoToJson(
  _RegisterAccountResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'data': instance.data.toJson(),
};

_RegisterAccountResponseData _$RegisterAccountResponseDataFromJson(
  Map<String, dynamic> json,
) => _RegisterAccountResponseData(
  registrationStatus: json['registrationStatus'] as String,
  customerId: json['customerId'] as String,
  accountNumber: json['accountNumber'] as String,
);

Map<String, dynamic> _$RegisterAccountResponseDataToJson(
  _RegisterAccountResponseData instance,
) => <String, dynamic>{
  'registrationStatus': instance.registrationStatus,
  'customerId': instance.customerId,
  'accountNumber': instance.accountNumber,
};
