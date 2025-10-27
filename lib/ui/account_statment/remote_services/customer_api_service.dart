import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'customer_api_service.g.dart';

@RestApi()
abstract class CustomerApiService {
  factory CustomerApiService(Dio dio) = _CustomerApiService;

  @POST(ApiEndpoints.getCustomerDetail)
  Future<HttpResponse> getCustomerDetail({
    @Body() required Map<String, dynamic> body,
  });

  @POST(ApiEndpoints.fullCustomerStatement)
  Future<HttpResponse> getCustomerStatement({
    @Body() required Map<String, dynamic> body,
  });

  @POST(ApiEndpoints.getCustomerMiniStatement)
  Future<HttpResponse> getMiniStatement({
    @Body() required Map<String, dynamic> body,
  });
}
