import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'account_registration_api_service.g.dart';


@RestApi()
abstract class AccountRegistrationApiService {
  factory AccountRegistrationApiService(Dio dio) = _AccountRegistrationApiService;

  @POST(ApiEndpoints.checkAccount)
  Future<HttpResponse> checkAccount({
    @Body() required Map<String, dynamic> body,
  });

  @POST(ApiEndpoints.fetchAccount)
  Future<HttpResponse> fetchAccount({
    @Body() required Map<String, dynamic> body,
  });

  @POST(ApiEndpoints.forgotPinInquiry)
  Future<HttpResponse> forgotPinInquiry({
    @Body() required Map<String, dynamic> body,
  });

  @POST(ApiEndpoints.forgotPinExecute)
  Future<HttpResponse> forgotPinExecute({
    @Body() required Map<String, dynamic> body,
  });

  @POST(ApiEndpoints.changePin)
  Future<HttpResponse> changePin({
    @Body() required Map<String, dynamic> body,
  });

  @POST(ApiEndpoints.registerAccount)
  Future<HttpResponse> registerAccount({
    @Body() required Map<String, dynamic> body,
  });
}
