import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'encryption_api_service.g.dart';

@RestApi()
abstract class EncryptionApiService {
  factory EncryptionApiService(Dio dio) = _EncryptionApiService;

  @POST(ApiEndpoints.encrypt)
  Future<HttpResponse> encryptData({@Body() required Map<String, dynamic> data});

  @POST(ApiEndpoints.decrypt)
  Future<HttpResponse> decryptData({@Body()  dynamic data});
}
