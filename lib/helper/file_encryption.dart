// import 'dart:convert';

// import 'package:encrypt/encrypt.dart';

// String SECERET_KEY_VALUE =
//     '556bc1f59698ca34ccb599d21b5ba3657b2449cf2e99368484110d381f8f2d1e';
// String INITIALIZATION_VECTOR_KEY_VALUE = '14c00ecabe3d70d23d7e846530815782';

// encryptData(var jsonBody) {
//   final SECERET_KEY = Key.fromBase16(SECERET_KEY_VALUE);

//   final INITIALIZATION_VECTOR_KEY =
//       IV.fromBase16(INITIALIZATION_VECTOR_KEY_VALUE);
//   final encrypter = Encrypter(AES(SECERET_KEY, mode: AESMode.cbc));

//   final encrypted =
//       encrypter.encrypt(jsonEncode(jsonBody), iv: INITIALIZATION_VECTOR_KEY);
//   return '{"iv": "' +
//       INITIALIZATION_VECTOR_KEY_VALUE +
//       '", "encryptedData": "' +
//       encrypted.base16 +
//       '"}';
// }

// decryptData(var jsonResponse) {
//   var decodedJson = jsonDecode(jsonResponse);

//   final SECERET_KEY = Key.fromBase16(SECERET_KEY_VALUE);

//   final encrypter = Encrypter(AES(SECERET_KEY, mode: AESMode.cbc));

//   final decrypted = encrypter.decrypt(
//       Key.fromBase16(decodedJson['encryptedData']),
//       iv: IV.fromBase16(decodedJson['iv']));
//   return jsonDecode(decrypted);
// }
