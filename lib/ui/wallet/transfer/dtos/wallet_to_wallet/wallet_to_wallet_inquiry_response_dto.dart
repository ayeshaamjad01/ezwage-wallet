import 'dart:convert';

import 'package:ezwage/ui/wallet/core/models/inquiry_reponse_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_to_wallet_inquiry_response_dto.freezed.dart';

part 'wallet_to_wallet_inquiry_response_dto.g.dart';

@freezed
abstract class WalletToWalletInquiryResponseDto
    with _$WalletToWalletInquiryResponseDto {
  const factory WalletToWalletInquiryResponseDto({
    required String verificationToken,
    @Default(VerificationMethod.otp) VerificationMethod verificationMethod,
    @JsonKey(name: "data") required WalletToWalletInquiryResponseDtoData data,
  }) = _WalletToWalletInquiryResponseDto;

  factory WalletToWalletInquiryResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$WalletToWalletInquiryResponseDtoFromJson(json);
}

@freezed
abstract class WalletToWalletInquiryResponseDtoData
    with _$WalletToWalletInquiryResponseDtoData {
  const factory WalletToWalletInquiryResponseDtoData({
    required int taxAndFee,
    required String mobileNo,
    required int customerId,
    @JsonKey(name: "accounttitle")required String accountTitle,
    @Default({}) Map<String, dynamic> extInfo,
  }) = _WalletToWalletInquiryResponseDtoData;

  factory WalletToWalletInquiryResponseDtoData.fromJson(
    Map<String, dynamic> json,
  ) => _$WalletToWalletInquiryResponseDtoDataFromJson(json);
}
