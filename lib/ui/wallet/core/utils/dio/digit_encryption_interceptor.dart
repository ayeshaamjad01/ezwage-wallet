import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/services/remote/encryption_api_service.dart';
import 'package:ezwage/ui/wallet/core/utils/secure_storage.dart';

class EncryptionInterceptor extends QueuedInterceptor {
  final SecureStorage _secureStorage;
  final EncryptionApiService encryptionApiService;

  EncryptionInterceptor(this._secureStorage, this.encryptionApiService);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final reqData = options.data;
    final encryptedResponse = await encryptionApiService.encryptData(
      data: reqData,
    );
    final encryptedData = encryptedResponse.data["enc"];
    options.data = encryptedData;
    return handler.next(options);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    try {
      final encryptedResponse = response.data;
      final decryptedResponse = await encryptionApiService.decryptData(
        data: encryptedResponse,
      );
      response.data = jsonDecode(decryptedResponse.data);
      return handler.next(response);
    } catch (e) {
      handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          error: 'Decryption failed: $e',
        ),
      );
    }
  }
}
