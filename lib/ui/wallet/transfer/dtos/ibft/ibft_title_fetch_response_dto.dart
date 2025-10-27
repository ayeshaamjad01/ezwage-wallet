import 'package:freezed_annotation/freezed_annotation.dart';

part 'ibft_title_fetch_response_dto.freezed.dart';

part 'ibft_title_fetch_response_dto.g.dart';

@freezed
abstract class IbftTitleFetchResponseDto with _$IbftTitleFetchResponseDto {
  const factory IbftTitleFetchResponseDto({
    required String verificationToken,
    required String verificationMethod,
    required IbftTitleFetchDataDto data,
  }) = _IbftTitleFetchResponseDto;

  factory IbftTitleFetchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$IbftTitleFetchResponseDtoFromJson(json);
}

@freezed
abstract class IbftTitleFetchDataDto with _$IbftTitleFetchDataDto {
  const factory IbftTitleFetchDataDto({
    // required int otpLength,
    required String totalAmount,
    required String amount,
    required String beneficiaryAccTitle,
    required String beneficiaryIBAN,
    required String branchName,
    @Default(0) int otpExpiryIn,
    required String bankName,
    @Default(0) int otpResendTries,
    @JsonKey(unknownEnumValue: IBFTVMethod.NONE)
    required IBFTVMethod verificationMethod,
    required String taxAndFee,
    @JsonKey(name: "receiverAccount") required String accountNumber,
  }) = _IbftTitleFetchDataDto;

  factory IbftTitleFetchDataDto.fromJson(Map<String, dynamic> json) =>
      _$IbftTitleFetchDataDtoFromJson(json);
}

enum IBFTVMethod {
  @JsonValue("OTP")
  otp,
  NONE,
  otp_kyc,
}
