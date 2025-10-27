// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_account_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckAccountResponseDto _$CheckAccountResponseDtoFromJson(
  Map<String, dynamic> json,
) => _CheckAccountResponseDto(
  statusCode: json['statusCode'] as String,
  statusMessage: json['statusMessage'] as String,
  data: CheckAccountData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CheckAccountResponseDtoToJson(
  _CheckAccountResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'data': instance.data.toJson(),
};

_CheckAccountData _$CheckAccountDataFromJson(Map<String, dynamic> json) =>
    _CheckAccountData(
      accountStatus: json['accountStatus'] as String,
      verificationToken: json['verificationToken'] as String,
      motherNameList:
          (json['motherNameList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      birthPlaceList:
          (json['birthPlaceList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      remainingLovs: (json['remainingLovs'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CheckAccountDataToJson(_CheckAccountData instance) =>
    <String, dynamic>{
      'accountStatus': instance.accountStatus,
      'verificationToken': instance.verificationToken,
      'motherNameList': instance.motherNameList,
      'birthPlaceList': instance.birthPlaceList,
      'remainingLovs': instance.remainingLovs,
    };
