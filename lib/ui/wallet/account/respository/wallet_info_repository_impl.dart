import 'package:ezwage/ui/wallet/account/dto/information/get_customer_balance_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/information/get_customer_balance_response_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/information/get_wallet_limits_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/information/get_wallet_limits_response_dto.dart';
import 'package:ezwage/ui/wallet/account/remote_services/wallet_info_api_service.dart';
import 'package:ezwage/ui/wallet/account/respository/wallet_info_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';

class WalletInfoRepositoryImpl extends BaseRepository
    implements WalletInfoRepository {
  final WalletInfoApiService _api;

  WalletInfoRepositoryImpl(this._api);

  @override
  Future<Result<GetCustomerBalanceResponseDto>> getCustomerBalance(
    GetCustomerBalanceRequestDto request,
  ) {
    return safeApiCall(
      () => _api.getCustomerBalance(body: request.toJson()),
      (json) => GetCustomerBalanceResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<GetWalletLimitsResponseDto>> getWalletLimits(
    GetWalletLimitsRequestDto request,
  ) {
    return safeApiCall(
      () => _api.getWalletLimits(body: request.toJson()),
      (json) => GetWalletLimitsResponseDto.fromJson(json["data"]),
    );
  }
}
