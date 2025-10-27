import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/bundle_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/bundle_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/bundle_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/bundle_payment_response_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/telco_bundle_list_detail_request_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/telco_bundle_list_detail_response_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/repository/telco_bundle_repository.dart';
import 'package:ezwage/ui/wallet/load_and_packages/services/telco_bundle_api_service.dart';

class TelcoBundleRepositoryImpl extends BaseRepository
    implements TelcoBundleRepository {
  final TelcoBundleApiService _api;

  TelcoBundleRepositoryImpl(this._api);

  @override
  Future<Result<TelcoBundleListDetailResponseDto>> fetchBundleList(
    TelcoBundleListDetailRequestDto request,
  ) {
    return safeApiCall(
      () => _api.fetchBundleDetails(body: request.toJson()),
      (json) => TelcoBundleListDetailResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<BundleInquiryResponseDto>> bundleInquiry(
    BundleInquiryRequestDto request,
  ) {
    return safeApiCall(
      () => _api.bundleInquiry(body: request.toJson()),
      (json) => BundleInquiryResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<BundlePaymentResponseDto>> bundlePayment(
    BundlePaymentRequestDto request,
  ) {
    return safeApiCall(
      () => _api.bundlePayment(body: request.toJson()),
      (json) => BundlePaymentResponseDto.fromJson(json),
    );
  }
}
