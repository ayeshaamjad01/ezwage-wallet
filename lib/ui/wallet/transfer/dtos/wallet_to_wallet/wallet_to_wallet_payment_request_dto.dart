import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_to_wallet_payment_request_dto.freezed.dart';

part 'wallet_to_wallet_payment_request_dto.g.dart';

@freezed
abstract class WalletToWalletPaymentRequestDto
    with _$WalletToWalletPaymentRequestDto {
  const factory WalletToWalletPaymentRequestDto({
    required String senderAccount,
    required String customerId,
    required String receiverAccount,
    required String amount,
    required String verificationToken,
    String? index,
    String? otp,
    String? template,
    String? sessionId,
    @Default("v1") String version,
    @Default({}) Map<String, dynamic> extInfo,
  }) = _WalletToWalletPaymentRequestDto;

  factory WalletToWalletPaymentRequestDto.fromJson(Map<String, dynamic> json) =>
      _$WalletToWalletPaymentRequestDtoFromJson(json);
}
