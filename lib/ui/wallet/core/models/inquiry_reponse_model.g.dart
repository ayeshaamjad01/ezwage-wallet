// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inquiry_reponse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InquiryResponseModel _$InquiryResponseModelFromJson(
  Map<String, dynamic> json,
) => _InquiryResponseModel(
  verificationToken: json['verificationToken'] as String,
  verificationMethod:
      $enumDecodeNullable(
        _$VerificationMethodEnumMap,
        json['verificationMethod'],
      ) ??
      VerificationMethod.otp,
);

Map<String, dynamic> _$InquiryResponseModelToJson(
  _InquiryResponseModel instance,
) => <String, dynamic>{
  'verificationToken': instance.verificationToken,
  'verificationMethod':
      _$VerificationMethodEnumMap[instance.verificationMethod]!,
};

const _$VerificationMethodEnumMap = {
  VerificationMethod.otp: 'Otp',
  VerificationMethod.bvs: 'bvs',
  VerificationMethod.NONE: 'NONE',
};
