import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'authentication_api_service.g.dart';

@RestApi()
abstract class AuthenticationApiService {
  factory AuthenticationApiService(Dio dio) = _AuthenticationApiService;

  /// Authenticate the client on the external gateway
  @POST(ApiEndpoints.auth)
  Future<HttpResponse> authenticate({
    @Header("X-CLIENTID") required String clientId,
    @Header("X-SECRET") required String secret,
    @Header("X-PARTNERID") required String partnerId,
  });
}
