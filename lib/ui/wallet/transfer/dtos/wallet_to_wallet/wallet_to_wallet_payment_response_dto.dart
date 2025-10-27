import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_to_wallet_payment_response_dto.freezed.dart';

part 'wallet_to_wallet_payment_response_dto.g.dart';

@freezed
abstract class WalletToWalletPaymentResponseDto
    with _$WalletToWalletPaymentResponseDto {
  const factory WalletToWalletPaymentResponseDto({
    required String transactionId,
    required String transactionDateTime,
    required String rrn,
  }) = _WalletToWalletPaymentResponseDto;

  factory WalletToWalletPaymentResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$WalletToWalletPaymentResponseDtoFromJson(json);
}
