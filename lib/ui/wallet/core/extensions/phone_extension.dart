import 'package:flutter_contacts/properties/phone.dart';

extension PhoneNumberStringExtension on String {
  String get withoutCountryCode {
    String cleaned = replaceAll(RegExp(r'[^0-9+]'), '');

    if (cleaned.startsWith('+92')) {
      return cleaned.replaceFirst('+92', '0');
    }

    if (cleaned.startsWith('+')) {
      return cleaned.replaceFirst(RegExp(r'^\+\d{1,4}'), '');
    }

    return cleaned;
  }
}
