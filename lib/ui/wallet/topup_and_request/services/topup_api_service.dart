import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';

part 'topup_api_service.g.dart';

@RestApi()
abstract class TopupApiService {
  factory TopupApiService(Dio dio) = _TopupApiService;

  /// Fetch list of Telcos for Mobile TopUps
  @POST(ApiEndpoints.getTelcoList)
  Future<HttpResponse> getTelcoList({
    @Body() required Map<String, dynamic> body,
  });

  /// Perform Mobile TopUp Inquiry before payment
  @POST(ApiEndpoints.topupInquiry)
  Future<HttpResponse> topupInquiry({
    @Body() required Map<String, dynamic> body,
  });

  /// Perform Mobile TopUp Payment
  @POST(ApiEndpoints.topupPayment)
  Future<HttpResponse> topupPayment({
    @Body() required Map<String, dynamic> body,
  });
}
