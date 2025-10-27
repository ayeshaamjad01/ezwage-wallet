import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/authentication/remote_services/authentication_api_service.dart';
import 'package:ezwage/ui/wallet/core/constants/enviroment.dart';
import 'package:ezwage/ui/wallet/core/utils/secure_storage.dart';

class DigitTokenInterceptor extends QueuedInterceptor {
  final SessionHandler sessionHandler;

  DigitTokenInterceptor(this.sessionHandler);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final token = await await sessionHandler.getValidToken();
      bool requiresAuth = token != null;
      if (requiresAuth) {
        final partnerId = Environment.partnerID;
        options.headers.addAll(<String, Object?>{
          'X-TOKEN': token,
          'X-PARTNERID': partnerId,
        });
      }
      return handler.next(options);
    } catch (e) {
      handler.reject(DioException(requestOptions: options, error: e));
    }
  }
}

/// This will notify UI when the session expires
class SessionService {
  final _controller = StreamController<SessionStatus>.broadcast();
  Timer? _expiryTimer;
  SessionStatus currentStatus = SessionStatus.initial;

  Stream<SessionStatus> statusStream() async* {
    yield currentStatus;
    yield* _controller.stream;
  }

  void startSession(Duration duration) {
    _expiryTimer?.cancel();
    _setSessionToActive();
    _expiryTimer = Timer(duration, setSessionExpired);
  }

  void setSessionExpired() {
    _setSessionToExpired();
    _resetSession();
  }

  void _setSessionToActive() {
    currentStatus = SessionStatus.active;
    _controller.add(currentStatus);
  }

  void _setSessionToExpired() {
    currentStatus = SessionStatus.expired;
    _controller.add(currentStatus);
  }

  void _resetSession() {
    currentStatus = SessionStatus.initial;
    _controller.add(currentStatus);
  }

  bool authRequired() {
    return currentStatus == SessionStatus.initial;
  }

  void dispose() {
    _controller.close();
  }
}

enum SessionStatus { active, initial, expired }

class SessionHandler {
  final AuthenticationApiService authAPIService;
  final SecureStorage secureStorage;
  final SessionService sessionService;

  Completer<String>? _authCompleter;

  SessionHandler(this.authAPIService, this.secureStorage, this.sessionService);

  Future<String?> getValidToken() async {
    try {
      if (!sessionService.authRequired()) {
        final token = await secureStorage.getAuthToken();
        return token;
      }

      // If already logging in, wait for it
      if (_authCompleter != null) {
        return _authCompleter!.future;
      }

      // First requester triggers login
      _authCompleter = Completer<String>();
      final response = await authAPIService.authenticate(
        clientId: Environment.clientId,
        secret: Environment.clientSecret,
        partnerId: Environment.partnerID,
      );
      final token = response.data["token"];
      final expiryInSeconds = response.data["expiresIn"];

      await secureStorage.writeToken(token);
      sessionService.startSession(Duration(seconds: expiryInSeconds));

      _authCompleter!.complete(token);
      return token;
    } catch (e) {
      _authCompleter!.completeError(e);
      rethrow;
    } finally {
      log("Set to null");
      _authCompleter = null;
    }
  }

  void reset() {
    _authCompleter = null;
  }
}
