import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ezwage/ui/wallet/core/constants/api_endpoints.dart';

part 'bill_payment_api_service.g.dart';

@RestApi()
abstract class BillPaymentApiService {
  factory BillPaymentApiService(Dio dio) = _BillPaymentApiService;

  /// Fetch list of Billers for Bill Payments
  @POST(ApiEndpoints.getBillList)
  Future<HttpResponse> getBillList({
    @Body() required Map<String, dynamic> body,
  });

  /// Perform Bill Inquiry for validation before payment
  @POST(ApiEndpoints.getBillTitle)
  Future<HttpResponse> billInquiry({
    @Body() required Map<String, dynamic> body,
  });

  /// Perform Bill Payment transaction
  @POST(ApiEndpoints.payBill)
  Future<HttpResponse> payBill({@Body() required Map<String, dynamic> body});
}
