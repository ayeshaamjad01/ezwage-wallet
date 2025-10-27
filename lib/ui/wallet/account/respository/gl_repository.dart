import 'package:ezwage/ui/wallet/account/dto/general_leadger/get_gl_balance_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/general_leadger/get_gl_balance_response_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/general_leadger/get_gl_statement_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/general_leadger/get_gl_statement_response_dto.dart';

import 'package:ezwage/ui/wallet/core/utils/result.dart';

abstract class GlRepository {
  Future<Result<GetGlBalanceResponseDto>> getGlBalance(
    GetGlBalanceRequestDto request,
  );

  Future<Result<GetGlStatementResponseDto>> getGlStatement(
    GetGlStatementRequestDto request,
  );
}
