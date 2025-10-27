import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_account_request_dto.freezed.dart';
part 'register_account_request_dto.g.dart';

@freezed
abstract class RegisterAccountRequestDto with _$RegisterAccountRequestDto {
  const factory RegisterAccountRequestDto({
    required String cnicIssueDate,
    required String verficationToken,
    required String fatherName,
    required String placeOfBirth,
    required String mobileNumber,
    required String motherName,
    required String otp,
    required String cityId,
    required String customerName,
    required String cnicFrontPic,
    required String cnicBackPic,
    required String selfie,
    required String permanentAddress,
    required String cnicNumber,
    required String email,
    String? businessName,
    String? businessAddress,
    String? location,
    String? merchantTypeId,
    String? monthlyTurnOverId,
    String? businessVerificationDpc,

  }) = _RegisterAccountRequestDto;

  factory RegisterAccountRequestDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterAccountRequestDtoFromJson(json);
}
