import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'ibft_api_service.g.dart';

@RestApi()
abstract class IbftApiService {
  factory IbftApiService(Dio dio) = _IbftApiService;

  @POST(ApiEndpoints.walletIbftTitleFetch)
  Future<HttpResponse> titleFetch({@Body() required Map<String, dynamic> body});

  @POST(ApiEndpoints.ibftTransferValidation)
  Future<HttpResponse> transferValidation({
    @Body() required Map<String, dynamic> body,
  });

  @POST(ApiEndpoints.ibftPayment)
  Future<HttpResponse> payment({@Body() required Map<String, dynamic> body});
}
