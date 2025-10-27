import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_rejection_inquiry_request_dto.freezed.dart';
part 'wallet_rejection_inquiry_request_dto.g.dart';

@freezed
abstract class WalletRejectionInquiryRequestDto with _$WalletRejectionInquiryRequestDto {
  const factory WalletRejectionInquiryRequestDto({
    required String cnicNo,
    required String mobileNo,
  }) = _WalletRejectionInquiryRequestDto;

  factory WalletRejectionInquiryRequestDto.fromJson(Map<String, dynamic> json) =>
      _$WalletRejectionInquiryRequestDtoFromJson(json);
}
