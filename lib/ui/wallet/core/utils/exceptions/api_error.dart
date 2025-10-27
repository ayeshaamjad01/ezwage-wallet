class ApiErrorException implements Exception {
  final String? error;

  final List<String>? errorsList;

  Map<String, dynamic> toMap() {
    return {'error': error, 'errorsList': errorsList};
  }

  factory ApiErrorException.fromMap(dynamic map) {
    final error = map?["message"];
    if (error is List) {
      final errorList = error.map((e) => e.toString()).toList();
      return ApiErrorException(errorsList: errorList);
    }
    if (error is String) {
      return ApiErrorException(error: error);
    }
    return const ApiErrorException();
  }

  String? getErrorMessage() {
    if (errorsList?.isNotEmpty ?? false) {
      return errorsList?.first;
    }
    return error;
  }

  const ApiErrorException({this.error, this.errorsList});
}
