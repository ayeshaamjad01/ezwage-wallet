// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_to_wallet_inquiry_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletToWalletInquiryResponseDto _$WalletToWalletInquiryResponseDtoFromJson(
  Map<String, dynamic> json,
) => _WalletToWalletInquiryResponseDto(
  verificationToken: json['verificationToken'] as String,
  verificationMethod:
      $enumDecodeNullable(
        _$VerificationMethodEnumMap,
        json['verificationMethod'],
      ) ??
      VerificationMethod.otp,
  data: WalletToWalletInquiryResponseDtoData.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$WalletToWalletInquiryResponseDtoToJson(
  _WalletToWalletInquiryResponseDto instance,
) => <String, dynamic>{
  'verificationToken': instance.verificationToken,
  'verificationMethod':
      _$VerificationMethodEnumMap[instance.verificationMethod]!,
  'data': instance.data.toJson(),
};

const _$VerificationMethodEnumMap = {
  VerificationMethod.otp: 'Otp',
  VerificationMethod.bvs: 'bvs',
  VerificationMethod.NONE: 'NONE',
};

_WalletToWalletInquiryResponseDtoData
_$WalletToWalletInquiryResponseDtoDataFromJson(Map<String, dynamic> json) =>
    _WalletToWalletInquiryResponseDtoData(
      taxAndFee: (json['taxAndFee'] as num).toInt(),
      mobileNo: json['mobileNo'] as String,
      customerId: (json['customerId'] as num).toInt(),
      accountTitle: json['accounttitle'] as String,
      extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$WalletToWalletInquiryResponseDtoDataToJson(
  _WalletToWalletInquiryResponseDtoData instance,
) => <String, dynamic>{
  'taxAndFee': instance.taxAndFee,
  'mobileNo': instance.mobileNo,
  'customerId': instance.customerId,
  'accounttitle': instance.accountTitle,
  'extInfo': instance.extInfo,
};
