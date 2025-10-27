import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_to_wallet_inquiry_request_dto.freezed.dart';

part 'wallet_to_wallet_inquiry_request_dto.g.dart';

@freezed
abstract class WalletToWalletInquiryRequestDto
    with _$WalletToWalletInquiryRequestDto {
  const factory WalletToWalletInquiryRequestDto({
    required String senderAccount,
    required String customerId,
    required String receiverAccount,
    required String amount,
    @Default("v1") String version,
    @Default({}) Map<String, dynamic> extInfo,
  }) = _WalletToWalletInquiryRequestDto;

  factory WalletToWalletInquiryRequestDto.fromJson(Map<String, dynamic> json) =>
      _$WalletToWalletInquiryRequestDtoFromJson(json);
}
