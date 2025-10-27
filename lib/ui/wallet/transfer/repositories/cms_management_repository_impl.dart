import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_bank_list_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_bank_list_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_cities_list_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_cities_list_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_purpose_of_payment_list_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_purpose_of_payment_list_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/remote_services/cms_management_api_service.dart';
import 'package:ezwage/ui/wallet/transfer/repositories/cms_management_repository.dart';

class CmsManagementRepositoryImpl extends BaseRepository
    implements CmsManagementRepository {
  final CmsManagementApiService _api;

  CmsManagementRepositoryImpl(this._api);

  @override
  Future<Result<GetBankListResponseDto>> getBankList(
    GetBankListRequestDto request,
  ) {
    return safeApiCall(
      () => _api.getBankList(body: request.toJson()),
      (json) => GetBankListResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<GetPurposeOfPaymentListResponseDto>> getPurposeOfPaymentList(
    GetPurposeOfPaymentListRequestDto request,
  ) {
    return safeApiCall(
      () => _api.getPurposeOfPaymentList(body: request.toJson()),
      (json) => GetPurposeOfPaymentListResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<GetCitiesListResponseDto>> getCitiesList(
    GetCitiesListRequestDto request,
  ) {
    return safeApiCall(
      () => _api.getCitiesList(body: request.toJson()),
      (json) => GetCitiesListResponseDto.fromJson(json),
    );
  }
}
