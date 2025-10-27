import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'wallet_info_api_service.g.dart';

@RestApi()
abstract class WalletInfoApiService {
  factory WalletInfoApiService(Dio dio) = _WalletInfoApiService;

  @POST(ApiEndpoints.getCustomerBalance)
  Future<HttpResponse> getCustomerBalance({
    @Body() required Map<String, dynamic> body,
  });

  @POST(ApiEndpoints.getWalletLimits)
  Future<HttpResponse> getWalletLimits({
    @Body() required Map<String, dynamic> body,
  });
}
