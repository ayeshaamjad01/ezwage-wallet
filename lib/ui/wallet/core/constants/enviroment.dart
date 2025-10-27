import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get path => ".env";

  static String? get tokenKey => dotenv.get("token_key", fallback: null);

  static String get partnerID => dotenv.get("partner_id", fallback: null);

  static String get clientId => dotenv.get("client_id", fallback: null);

  static String get clientSecret => dotenv.get("client_secret", fallback: null);

  static String? get digitTokenKey => dotenv.get("digit_token", fallback: null);

  static String? get encryptionKey =>
      dotenv.get("encryption_key", fallback: null);
}
