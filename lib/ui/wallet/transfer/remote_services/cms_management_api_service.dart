import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'cms_management_api_service.g.dart';

@RestApi()
abstract class CmsManagementApiService {
  factory CmsManagementApiService(Dio dio) = _CmsManagementApiService;

  @POST(ApiEndpoints.getBankList)
  Future<HttpResponse> getBankList({
    @Body() required Map<String, dynamic> body,
  });

  @POST(ApiEndpoints.getPurposeOfPaymentList)
  Future<HttpResponse> getPurposeOfPaymentList({
    @Body() required Map<String, dynamic> body,
  });

  @POST(ApiEndpoints.getCitiesList)
  Future<HttpResponse> getCitiesList({
    @Body() required Map<String, dynamic> body,
  });
}
