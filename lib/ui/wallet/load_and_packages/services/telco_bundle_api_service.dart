import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';

part 'telco_bundle_api_service.g.dart';

@RestApi()
abstract class TelcoBundleApiService {
  factory TelcoBundleApiService(Dio dio) = _TelcoBundleApiService;

  // Fetch list of bundles for a telco
  @POST(ApiEndpoints.getTelcoBundleDetails)
  Future<HttpResponse> fetchBundleDetails({
    @Body() required Map<String, dynamic> body,
  });

  // Verify customer details before bundle subscription
  @POST(ApiEndpoints.telcoBundleInquiry)
  Future<HttpResponse> bundleInquiry({
    @Body() required Map<String, dynamic> body,
  });

  // Perform bundle subscription payment
  @POST(ApiEndpoints.telcoBundlePayment)
  Future<HttpResponse> bundlePayment({
    @Body() required Map<String, dynamic> body,
  });
}
