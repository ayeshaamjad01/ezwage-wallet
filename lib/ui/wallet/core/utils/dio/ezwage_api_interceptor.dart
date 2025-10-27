import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/utils/secure_storage.dart';

class EZWageAPIInterceptor extends QueuedInterceptor {
  final SecureStorage _secureStorage;

  EZWageAPIInterceptor(this._secureStorage);

  @override
  Future<void> onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    final token = await _secureStorage.getAuthToken();
    bool requiresAuth = token != null;
    if (requiresAuth) {
      options.headers.addAll(
        <String, Object?>{'Authorization': 'Bearer $token'},
      );
    }
    return handler.next(options);
  }
}
