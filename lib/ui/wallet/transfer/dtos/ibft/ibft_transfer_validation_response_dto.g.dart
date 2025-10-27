// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ibft_transfer_validation_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IbftTransferValidationResponseDto _$IbftTransferValidationResponseDtoFromJson(
  Map<String, dynamic> json,
) => _IbftTransferValidationResponseDto(
  verificationMethod:
      $enumDecodeNullable(
        _$VerificationMethodEnumMap,
        json['verificationMethod'],
      ) ??
      VerificationMethod.otp,
  data: IbftTransferValidationResponseDtoData.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$IbftTransferValidationResponseDtoToJson(
  _IbftTransferValidationResponseDto instance,
) => <String, dynamic>{
  'verificationMethod':
      _$VerificationMethodEnumMap[instance.verificationMethod]!,
  'data': instance.data.toJson(),
};

const _$VerificationMethodEnumMap = {
  VerificationMethod.otp: 'Otp',
  VerificationMethod.bvs: 'bvs',
  VerificationMethod.NONE: 'NONE',
};

_IbftTransferValidationResponseDtoData
_$IbftTransferValidationResponseDtoDataFromJson(Map<String, dynamic> json) =>
    _IbftTransferValidationResponseDtoData(
      mobile: json['mobile'] as String,
      userId: (json['userId'] as num).toInt(),
      authMethod: $enumDecode(_$AuthMethodEnumMap, json['authMethod']),
      validationStatus: json['validationStatus'] as String,
      verificationToken: json['verificationToken'] as String,
      validationMessage: json['validationMessage'] as String?,
      kycQuestionType:
          $enumDecodeNullable(
            _$KYCQuestionTypeEnumMap,
            json['kycQuestionType'],
            unknownValue: KYCQuestionType.birthPlace,
          ) ??
          KYCQuestionType.birthPlace,
      kycAnswerList: (json['kycAnswerList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      validationRefNo: json['validationRefNo'] as String?,
    );

Map<String, dynamic> _$IbftTransferValidationResponseDtoDataToJson(
  _IbftTransferValidationResponseDtoData instance,
) => <String, dynamic>{
  'mobile': instance.mobile,
  'userId': instance.userId,
  'authMethod': _$AuthMethodEnumMap[instance.authMethod]!,
  'validationStatus': instance.validationStatus,
  'verificationToken': instance.verificationToken,
  'validationMessage': instance.validationMessage,
  'kycQuestionType': _$KYCQuestionTypeEnumMap[instance.kycQuestionType]!,
  'kycAnswerList': instance.kycAnswerList,
  'validationRefNo': instance.validationRefNo,
};

const _$AuthMethodEnumMap = {
  AuthMethod.otp: 'OTP',
  AuthMethod.otp_kyc: 'otp_kyc',
};

const _$KYCQuestionTypeEnumMap = {
  KYCQuestionType.motherName: 'motherName',
  KYCQuestionType.birthPlace: 'birthPlace',
};
