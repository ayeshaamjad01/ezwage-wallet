import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/constants/enviroment.dart';
import 'package:ezwage/ui/wallet/core/utils/secure_storage.dart';

class EncryptionKeyInterceptor extends QueuedInterceptor {
  final SecureStorage _secureStorage;

  EncryptionKeyInterceptor(this._secureStorage);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      options.headers.addAll(<String, Object?>{
        'KEY': Environment.encryptionKey,
      });
      return handler.next(options);
    } catch (e) {
      handler.reject(DioException(requestOptions: options, error: e));
    }
  }
}
