import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'direct_debit_api_service.g.dart';

@RestApi()
abstract class DirectDebitApiService {
  factory DirectDebitApiService(Dio dio) = _DirectDebitApiService;

  @POST(ApiEndpoints.directDebitHoldFund)
  Future<HttpResponse> holdFund({@Body() required Map<String, dynamic> body});

  @POST(ApiEndpoints.directDebitDeductFund)
  Future<HttpResponse> deductFund({@Body() required Map<String, dynamic> body});

  @POST(ApiEndpoints.directDebitHoldFundReversal)
  Future<HttpResponse> reverseHoldFund({
    @Body() required Map<String, dynamic> body,
  });
}
