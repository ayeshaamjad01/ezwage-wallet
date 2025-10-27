// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ibft_title_fetch_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IbftTitleFetchResponseDto _$IbftTitleFetchResponseDtoFromJson(
  Map<String, dynamic> json,
) => _IbftTitleFetchResponseDto(
  verificationToken: json['verificationToken'] as String,
  verificationMethod: json['verificationMethod'] as String,
  data: IbftTitleFetchDataDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$IbftTitleFetchResponseDtoToJson(
  _IbftTitleFetchResponseDto instance,
) => <String, dynamic>{
  'verificationToken': instance.verificationToken,
  'verificationMethod': instance.verificationMethod,
  'data': instance.data.toJson(),
};

_IbftTitleFetchDataDto _$IbftTitleFetchDataDtoFromJson(
  Map<String, dynamic> json,
) => _IbftTitleFetchDataDto(
  totalAmount: json['totalAmount'] as String,
  amount: json['amount'] as String,
  beneficiaryAccTitle: json['beneficiaryAccTitle'] as String,
  beneficiaryIBAN: json['beneficiaryIBAN'] as String,
  branchName: json['branchName'] as String,
  otpExpiryIn: (json['otpExpiryIn'] as num?)?.toInt() ?? 0,
  bankName: json['bankName'] as String,
  otpResendTries: (json['otpResendTries'] as num?)?.toInt() ?? 0,
  verificationMethod: $enumDecode(
    _$IBFTVMethodEnumMap,
    json['verificationMethod'],
    unknownValue: IBFTVMethod.NONE,
  ),
  taxAndFee: json['taxAndFee'] as String,
  accountNumber: json['receiverAccount'] as String,
);

Map<String, dynamic> _$IbftTitleFetchDataDtoToJson(
  _IbftTitleFetchDataDto instance,
) => <String, dynamic>{
  'totalAmount': instance.totalAmount,
  'amount': instance.amount,
  'beneficiaryAccTitle': instance.beneficiaryAccTitle,
  'beneficiaryIBAN': instance.beneficiaryIBAN,
  'branchName': instance.branchName,
  'otpExpiryIn': instance.otpExpiryIn,
  'bankName': instance.bankName,
  'otpResendTries': instance.otpResendTries,
  'verificationMethod': _$IBFTVMethodEnumMap[instance.verificationMethod]!,
  'taxAndFee': instance.taxAndFee,
  'receiverAccount': instance.accountNumber,
};

const _$IBFTVMethodEnumMap = {
  IBFTVMethod.otp: 'OTP',
  IBFTVMethod.NONE: 'NONE',
  IBFTVMethod.otp_kyc: 'otp_kyc',
};
