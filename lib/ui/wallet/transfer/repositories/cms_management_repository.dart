import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_bank_list_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_bank_list_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_cities_list_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_cities_list_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_purpose_of_payment_list_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_purpose_of_payment_list_response_dto.dart';

abstract class CmsManagementRepository {
  Future<Result<GetBankListResponseDto>> getBankList(
    GetBankListRequestDto request,
  );

  Future<Result<GetPurposeOfPaymentListResponseDto>> getPurposeOfPaymentList(
    GetPurposeOfPaymentListRequestDto request,
  );

  Future<Result<GetCitiesListResponseDto>> getCitiesList(
    GetCitiesListRequestDto request,
  );
}
