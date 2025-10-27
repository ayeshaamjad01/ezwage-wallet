import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'direct_credit_api_service.g.dart';

@RestApi()
abstract class DirectCreditApiService {
  factory DirectCreditApiService(Dio dio) = _DirectCreditApiService;

  @POST(ApiEndpoints.directCreditInquiry)
  Future<HttpResponse> inquiry({@Body() required Map<String, dynamic> body});

  @POST(ApiEndpoints.directCreditPayment)
  Future<HttpResponse> payment({@Body() required Map<String, dynamic> body});
}
