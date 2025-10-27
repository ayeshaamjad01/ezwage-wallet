import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_rejection_inquiry_response_dto.freezed.dart';

part 'wallet_rejection_inquiry_response_dto.g.dart';

@freezed
abstract class WalletRejectionInquiryResponseDto
    with _$WalletRejectionInquiryResponseDto {
  const factory WalletRejectionInquiryResponseDto({
    required String livePicture,
    required String cnicBack,
    required String cnicFront,
    required String verificationToken,
    required String verificationMethod,
  }) = _WalletRejectionInquiryResponseDto;

  factory WalletRejectionInquiryResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$WalletRejectionInquiryResponseDtoFromJson(json);
}
