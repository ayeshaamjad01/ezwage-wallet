import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/authentication/remote_services/authentication_api_service.dart';
import 'package:ezwage/ui/wallet/core/utils/dio/digit_token_interceptor.dart';
import 'package:ezwage/ui/wallet/core/utils/dio/encryption_key_interceptor.dart';
import 'package:ezwage/ui/wallet/core/utils/secure_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class BaseAPIDio {
  final Dio dio;

  BaseAPIDio({List<Interceptor> extraInterceptors = const []})
    : dio = Dio()..options.baseUrl = "https://ext-gw-stag.aftpk.com/" {
    dio.interceptors.addAll([
      ...extraInterceptors, // run first
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        logPrint: logPrint,
      ),
    ]);
  }

  void logPrint(Object? object) {
    String line = "$object";
    log(line);
  }
}

final class DigitEncryptionAPIDio extends BaseAPIDio {
  DigitEncryptionAPIDio(SecureStorage storage)
    : super(extraInterceptors: [EncryptionKeyInterceptor(storage)]);
}

final class DigitSessionDio extends BaseAPIDio {
  /// add EzWage API interceptor for client ID etc

  DigitSessionDio() : super(extraInterceptors: const []);
}

final class DigitAPIDio extends BaseAPIDio {
  DigitAPIDio(
    SecureStorage storage,
    AuthenticationApiService authAPIService,
    SessionHandler sessionHandler,
  ) : super(
        extraInterceptors: [
          // DigitSessionInterceptor(storage, authAPIService, sessionService),
          DigitTokenInterceptor(sessionHandler),
        ],
      );
}

final class EzWageAPIDio extends BaseAPIDio {
  /// add EzWage API interceptor for client ID etc

  EzWageAPIDio() : super(extraInterceptors: const []);
}
