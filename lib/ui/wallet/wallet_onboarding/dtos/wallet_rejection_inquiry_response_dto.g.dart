// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_rejection_inquiry_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletRejectionInquiryResponseDto _$WalletRejectionInquiryResponseDtoFromJson(
  Map<String, dynamic> json,
) => _WalletRejectionInquiryResponseDto(
  livePicture: json['livePicture'] as String,
  cnicBack: json['cnicBack'] as String,
  cnicFront: json['cnicFront'] as String,
  verificationToken: json['verificationToken'] as String,
  verificationMethod: json['verificationMethod'] as String,
);

Map<String, dynamic> _$WalletRejectionInquiryResponseDtoToJson(
  _WalletRejectionInquiryResponseDto instance,
) => <String, dynamic>{
  'livePicture': instance.livePicture,
  'cnicBack': instance.cnicBack,
  'cnicFront': instance.cnicFront,
  'verificationToken': instance.verificationToken,
  'verificationMethod': instance.verificationMethod,
};
