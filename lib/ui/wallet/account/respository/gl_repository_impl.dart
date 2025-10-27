

import 'package:ezwage/ui/wallet/account/dto/general_leadger/get_gl_balance_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/general_leadger/get_gl_balance_response_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/general_leadger/get_gl_statement_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/general_leadger/get_gl_statement_response_dto.dart';
import 'package:ezwage/ui/wallet/account/remote_services/gl_api_service.dart';
import 'package:ezwage/ui/wallet/account/respository/gl_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';

class GlRepositoryImpl extends BaseRepository implements GlRepository {
  final GlApiService _api;

  GlRepositoryImpl(this._api);

  @override
  Future<Result<GetGlBalanceResponseDto>> getGlBalance(GetGlBalanceRequestDto request) {
    return safeApiCall(
          () => _api.getGLBalance(body: request.toJson()),
          (json) => GetGlBalanceResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<GetGlStatementResponseDto>> getGlStatement(GetGlStatementRequestDto request) {
    return safeApiCall(
          () => _api.getGLStatement(body: request.toJson()),
          (json) => GetGlStatementResponseDto.fromJson(json),
    );
  }
}
