import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/bundle_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/bundle_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/bundle_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/bundle_payment_response_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/telco_bundle_list_detail_request_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/telco_bundle_list_detail_response_dto.dart';

abstract class TelcoBundleRepository {
  Future<Result<TelcoBundleListDetailResponseDto>> fetchBundleList(
    TelcoBundleListDetailRequestDto request,
  );

  Future<Result<BundleInquiryResponseDto>> bundleInquiry(
    BundleInquiryRequestDto request,
  );

  Future<Result<BundlePaymentResponseDto>> bundlePayment(
    BundlePaymentRequestDto request,
  );
}
