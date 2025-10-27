import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'wallet_rejection_api_service.g.dart';

@RestApi()
abstract class WalletRejectionApiService {
  factory WalletRejectionApiService(Dio dio) = _WalletRejectionApiService;

  @POST(ApiEndpoints.walletRejectionInquiry)
  Future<HttpResponse> rejectionInquiry({
    @Body() required Map<String, dynamic> body,
  });

  @POST(ApiEndpoints.walletRejectionUpdate)
  Future<HttpResponse> rejectionUpdate({
    @Body() required Map<String, dynamic> body,
  });

  @GET(ApiEndpoints.getSecretKYCQuestionLov)
  Future<HttpResponse> getKycQuestions();
}
