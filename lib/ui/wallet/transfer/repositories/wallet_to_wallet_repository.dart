import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/wallet_to_wallet/wallet_to_wallet_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/wallet_to_wallet/wallet_to_wallet_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/wallet_to_wallet/wallet_to_wallet_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/wallet_to_wallet/wallet_to_wallet_payment_response_dto.dart';

abstract class WalletToWalletRepository {
  Future<Result<WalletToWalletInquiryResponseDto>> inquiry(
    WalletToWalletInquiryRequestDto request,
  );

  Future<Result<WalletToWalletPaymentResponseDto>> payment(
    WalletToWalletPaymentRequestDto request,
  );
}
