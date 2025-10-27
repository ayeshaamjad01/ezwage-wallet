import 'package:ezwage/ui/account_statment/dtos/customer_detail_request_dto.dart';
import 'package:ezwage/ui/account_statment/dtos/customer_detail_response_dto.dart';
import 'package:ezwage/ui/account_statment/dtos/customer_mini_statement_request_dto.dart';
import 'package:ezwage/ui/account_statment/dtos/customer_mini_statement_response_dto.dart';
import 'package:ezwage/ui/account_statment/dtos/customer_statement_request_dto.dart';
import 'package:ezwage/ui/account_statment/dtos/customer_statement_response_dto.dart';
import 'package:ezwage/ui/account_statment/remote_services/customer_api_service.dart';
import 'package:ezwage/ui/account_statment/repositories/customer_statement_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';

class CustomerStatementRepositoryImpl extends BaseRepository
    implements CustomerStatementRepository {
  final CustomerApiService _api;

  CustomerStatementRepositoryImpl(this._api);

  @override
  Future<Result<CustomerDetailResponseDto>> getCustomerDetail(
    CustomerDetailRequestDto request,
  ) {
    return safeApiCall(
      () => _api.getCustomerDetail(body: request.toJson()),
      (json) => CustomerDetailResponseDto.fromJson(json["data"]),
    );
  }

  @override
  Future<Result<CustomerStatementResponseDto>> getCustomerStatement(
    CustomerStatementRequestDto request,
  ) {
    return safeApiCall(
      () => _api.getCustomerStatement(body: request.toJson()),
      (json) => CustomerStatementResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<CustomerMiniStatementResponseDto>> getCustomerMiniStatement(
    CustomerMiniStatementRequestDto request,
  ) {
    return safeApiCall(
      () => _api.getMiniStatement(body: request.toJson()),
      (json) => CustomerMiniStatementResponseDto.fromJson(json),
    );
  }
}
