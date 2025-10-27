import 'package:ezwage/ui/wallet/core/constants/enviroment.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

AndroidOptions _getAndroidOptions() =>
    const AndroidOptions(encryptedSharedPreferences: true);

const iOSoptions = IOSOptions(
  accessibility: KeychainAccessibility.first_unlock,
);

class SecureStorage {
  final _storage = FlutterSecureStorage(
    iOptions: iOSoptions,
    aOptions: _getAndroidOptions(),
  );
  String? _tokenCache;

  Future<String?> readValue(String key) async {
    return await _storage.read(key: key);
  }

  Future<String?> readOnboardingStatus() async {
    return await _storage.read(key: "onboard");
  }

  Future<void> writeOnboardingStatus() async {
    return await _storage.write(key: "onboard", value: "completed");
  }

  Future<void> writeValue(String key, String value) async {
    return await _storage.write(key: key, value: value);
  }

  Future<void> writeToken(String? value, {bool rememberMe = true}) async {
    if (value == null) {
      throw Exception("Something went wrong");
    }
    final key = Environment.tokenKey;
    if (key == null) {
      return;
    }
    _tokenCache = value;
    if (rememberMe) {
      return await _storage.write(key: key, value: value);
    }
    return;
  }

  Future<String?> getAuthToken() async {
    final key = Environment.tokenKey;
    if (key == null) {
      return null;
    }
    if (_tokenCache != null) {
      return _tokenCache;
    }
    return await _storage.read(key: key);
  }
  Future<String?> getPartnerId() async {
    final key = Environment.partnerID;
    if (key == null) {
      return null;
    }
    if (_tokenCache != null) {
      return _tokenCache;
    }
    return await _storage.read(key: key);
  }
  Future<String?> getDigitToken() async {
    final key = Environment.digitTokenKey;
    if (key == null) {
      return null;
    }
    if (_tokenCache != null) {
      return _tokenCache;
    }
    return await _storage.read(key: key);
  }

  Future<void> clearAuthToken() async {
    final key = Environment.tokenKey;
    if (key == null) {
      return;
    }
    await _storage.delete(key: key);
    _tokenCache = null;
    return;
  }

  Future<bool> isLoggedIn() async {
    return await getAuthToken() != null;
  }
}
