import 'package:ezwage/ui/wallet/authentication/dtos/auth_response_dto.dart';
import 'package:ezwage/ui/wallet/authentication/remote_services/authentication_api_service.dart';
import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'authentication_repository.dart';

class AuthenticationRepositoryImpl extends BaseRepository
    implements AuthenticationRepository {
  final AuthenticationApiService _api;

  AuthenticationRepositoryImpl(this._api);

  @override
  Future<Result<AuthResponseDto>> authenticate({
    required String clientId,
    required String secret,
    required String partnerId,
  }) {
    return safeApiCall(
      () => _api.authenticate(
        clientId: clientId,
        secret: secret,
        partnerId: partnerId,
      ),
      (json) => AuthResponseDto.fromJson(json),
    );
  }
}
