import 'package:ezwage/ui/wallet/core/models/inquiry_reponse_model.dart';
import 'package:ezwage/ui/wallet/transfer/view/verification_screen.dart';
import 'package:ezwage/ui/wallet/transfer/view_models/verification_type_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ibft_transfer_validation_response_dto.freezed.dart';

part 'ibft_transfer_validation_response_dto.g.dart';

@freezed
abstract class IbftTransferValidationResponseDto
    with _$IbftTransferValidationResponseDto {
  const factory IbftTransferValidationResponseDto({
    @Default(VerificationMethod.otp) VerificationMethod verificationMethod,
    @JsonKey(name: "data") required IbftTransferValidationResponseDtoData data,
  }) = _IbftTransferValidationResponseDto;

  factory IbftTransferValidationResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$IbftTransferValidationResponseDtoFromJson(json);
}

@freezed
abstract class IbftTransferValidationResponseDtoData
    with _$IbftTransferValidationResponseDtoData {
  const factory IbftTransferValidationResponseDtoData({
    required String mobile,
    required int userId,
    required AuthMethod authMethod,
    required String validationStatus,
    required String verificationToken,
    String? validationMessage,
   @JsonKey(unknownEnumValue: KYCQuestionType.birthPlace) @Default(KYCQuestionType.birthPlace) KYCQuestionType kycQuestionType,
    List<String>? kycAnswerList,
    String? validationRefNo,
  }) = _IbftTransferValidationResponseDtoData;

  factory IbftTransferValidationResponseDtoData.fromJson(
    Map<String, dynamic> json,
  ) => _$IbftTransferValidationResponseDtoDataFromJson(json);
}

enum AuthMethod {
  @JsonValue("OTP")
  otp,
  otp_kyc,
}
