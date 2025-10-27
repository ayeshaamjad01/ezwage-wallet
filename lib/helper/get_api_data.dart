import 'dart:convert';

class GetApiData {
  late Map<String, dynamic> getApiData;
  GetApiData(this.getApiData);
  factory GetApiData.fromMap(Map<String, dynamic> dataFromJson) {
    return GetApiData(dataFromJson);
  }
  GetApiData.parse();
  List<GetApiData> apiData(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<GetApiData>((json) => GetApiData.fromMap(json)).toList();
  }
}
