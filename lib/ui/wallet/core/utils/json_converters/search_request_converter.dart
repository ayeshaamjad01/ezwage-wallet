import 'package:freezed_annotation/freezed_annotation.dart';

class SearchRequestConverter extends JsonConverter<String?, String?> {

  const SearchRequestConverter();


  @override
  String? toJson(String? object) {
    if (object == null) {
      return "";
    }
    return object;
  }

  @override
  String? fromJson(String? json) {
    return json;
  }
}
