import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/wallet_to_wallet/wallet_to_wallet_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/wallet_to_wallet/wallet_to_wallet_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/wallet_to_wallet/wallet_to_wallet_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/wallet_to_wallet/wallet_to_wallet_payment_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/remote_services/wallet_to_wallet_api_service.dart';
import 'package:ezwage/ui/wallet/transfer/repositories/wallet_to_wallet_repository.dart';

class WalletToWalletRepositoryImpl extends BaseRepository
    implements WalletToWalletRepository {
  final WalletToWalletApiService _api;

  WalletToWalletRepositoryImpl(this._api);

  @override
  Future<Result<WalletToWalletInquiryResponseDto>> inquiry(
    WalletToWalletInquiryRequestDto request,
  ) {
    return safeApiCall(
      () => _api.inquiry(body: request.toJson()),
      (json) => WalletToWalletInquiryResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<WalletToWalletPaymentResponseDto>> payment(
    WalletToWalletPaymentRequestDto request,
  ) {
    return safeApiCall(
      () => _api.payment(body: request.toJson()),
      (json) => WalletToWalletPaymentResponseDto.fromJson(json["data"]),
    );
  }
}
