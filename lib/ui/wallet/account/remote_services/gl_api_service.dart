import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'gl_api_service.g.dart';

@RestApi()
abstract class GlApiService {
  factory GlApiService(Dio dio) = _GlApiService;

  @POST(ApiEndpoints.getGLBalance)
  Future<HttpResponse> getGLBalance({
    @Body() required Map<String, dynamic> body,
  });

  @POST(ApiEndpoints.getGLStatement)
  Future<HttpResponse> getGLStatement({
    @Body() required Map<String, dynamic> body,
  });
}
