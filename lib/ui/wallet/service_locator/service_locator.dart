import 'package:ezwage/ui/wallet/authentication/remote_services/authentication_api_service.dart';
import 'package:ezwage/ui/wallet/authentication/repository/authentication_repository.dart';
import 'package:ezwage/ui/wallet/authentication/repository/authentication_repository_impl.dart';
import 'package:ezwage/ui/wallet/core/repositories/user_profile_repositories.dart';
import 'package:ezwage/ui/wallet/core/services/remote/encryption_api_service.dart';
import 'package:ezwage/ui/wallet/core/utils/dio/digit_encryption_interceptor.dart';
import 'package:ezwage/ui/wallet/core/utils/dio/digit_token_interceptor.dart';
import 'package:ezwage/ui/wallet/core/utils/secure_storage.dart';
import 'package:ezwage/ui/wallet/service_locator/dio_dependencies.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';

final sL = GetIt.instance;

Future<void> initDependencies() async {
  _initCoreDependencies();
}

Future<void> _initCoreDependencies() async {
  sL.registerSingleton(SecureStorage());
  sL.registerSingleton(SessionService());
  sL.registerSingleton(UserProfileRepository());
  sL.registerSingleton<DigitSessionDio>(DigitSessionDio());
  sL.registerSingleton<AuthenticationApiService>(
    AuthenticationApiService(sL<DigitSessionDio>().dio),
  );
  sL.registerSingleton(SessionHandler(sL(), sL(), sL()));

  sL.registerSingleton<AuthenticationRepository>(
    AuthenticationRepositoryImpl(sL()),
  );
  sL.registerSingleton<DigitEncryptionAPIDio>(DigitEncryptionAPIDio(sL()));
  sL.registerSingleton(EncryptionApiService(sL<DigitEncryptionAPIDio>().dio));
  sL.registerSingleton<DigitAPIDio>(
    DigitAPIDio(sL(), sL(), sL())
      ..dio.interceptors.addAll([EncryptionInterceptor(sL(), sL())]),
  );
  EasyLoading.instance
    ..toastPosition = EasyLoadingToastPosition.top
    ..maskType = EasyLoadingMaskType.black;
}
