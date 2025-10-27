import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'account_linking_api_service.g.dart';

@RestApi()
abstract class AccountLinkingApiService {
  factory AccountLinkingApiService(Dio dio) = _AccountLinkingApiService;

  @POST(ApiEndpoints.accountLinkingInquiry)
  Future<HttpResponse> linkingInquiry({
    @Body() required Map<String, dynamic> body,
  });

  @POST(ApiEndpoints.accountLinkingConfirmation)
  Future<HttpResponse> linkingConfirmation({
    @Body() required Map<String, dynamic> body,
  });
}
