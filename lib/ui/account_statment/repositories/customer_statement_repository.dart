import 'package:ezwage/ui/account_statment/dtos/customer_detail_request_dto.dart';
import 'package:ezwage/ui/account_statment/dtos/customer_detail_response_dto.dart';
import 'package:ezwage/ui/account_statment/dtos/customer_mini_statement_request_dto.dart';
import 'package:ezwage/ui/account_statment/dtos/customer_mini_statement_response_dto.dart';
import 'package:ezwage/ui/account_statment/dtos/customer_statement_request_dto.dart';
import 'package:ezwage/ui/account_statment/dtos/customer_statement_response_dto.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';

abstract class CustomerStatementRepository {
  Future<Result<CustomerDetailResponseDto>> getCustomerDetail(
    CustomerDetailRequestDto request,
  );

  Future<Result<CustomerStatementResponseDto>> getCustomerStatement(
    CustomerStatementRequestDto request,
  );

  Future<Result<CustomerMiniStatementResponseDto>> getCustomerMiniStatement(
    CustomerMiniStatementRequestDto request,
  );
}
