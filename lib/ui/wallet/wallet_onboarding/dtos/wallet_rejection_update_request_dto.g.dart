// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_rejection_update_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletRejectionUpdateRequestDto _$WalletRejectionUpdateRequestDtoFromJson(
  Map<String, dynamic> json,
) => _WalletRejectionUpdateRequestDto(
  cnicNumber: json['cnicNumber'] as String,
  mobileNumber: json['mobileNumber'] as String,
  version: json['version'] as String? ?? "v1",
  verificationToken: json['verificationToken'] as String,
  birthPlace: json['birthPlace'] as String,
  name: json['name'] as String,
  livePicture: json['livePicture'] as String,
);

Map<String, dynamic> _$WalletRejectionUpdateRequestDtoToJson(
  _WalletRejectionUpdateRequestDto instance,
) => <String, dynamic>{
  'cnicNumber': instance.cnicNumber,
  'mobileNumber': instance.mobileNumber,
  'version': instance.version,
  'verificationToken': instance.verificationToken,
  'birthPlace': instance.birthPlace,
  'name': instance.name,
  'livePicture': instance.livePicture,
};
