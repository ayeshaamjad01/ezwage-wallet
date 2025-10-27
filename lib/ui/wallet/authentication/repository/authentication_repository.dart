import 'package:ezwage/ui/wallet/authentication/dtos/auth_response_dto.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';

abstract class AuthenticationRepository {
  Future<Result<AuthResponseDto>> authenticate({
    required String clientId,
    required String secret,
    required String partnerId,
  });
}
