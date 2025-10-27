import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'wallet_to_wallet_api_service.g.dart';

@RestApi()
abstract class WalletToWalletApiService {
  factory WalletToWalletApiService(Dio dio) = _WalletToWalletApiService;

  @POST(ApiEndpoints.walletToWalletInquiry)
  Future<HttpResponse> inquiry({@Body() required Map<String, dynamic> body});

  @POST(ApiEndpoints.walletToWalletPayment)
  Future<HttpResponse> payment({@Body() required Map<String, dynamic> body});
}
