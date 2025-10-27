import 'package:ezwage/ui/wallet/account/dto/information/get_customer_balance_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/information/get_customer_balance_response_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/information/get_wallet_limits_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/information/get_wallet_limits_response_dto.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';

abstract class WalletInfoRepository {
  Future<Result<GetCustomerBalanceResponseDto>> getCustomerBalance(
    GetCustomerBalanceRequestDto request,
  );

  Future<Result<GetWalletLimitsResponseDto>> getWalletLimits(
    GetWalletLimitsRequestDto request,
  );
}
