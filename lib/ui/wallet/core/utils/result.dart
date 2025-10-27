import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success<T>;

  const factory Result.failure(
    DioException error, {
    ResultFailureData? resultFailureData,
  }) = Failure<T>;
}

@freezed
abstract class ResultFailureData with _$ResultFailureData {
  const factory ResultFailureData({
    String? statusCode,
    String? statusMessage,
    String? verificationToken,
  }) = _ResultFailureData;

  factory ResultFailureData.fromJson(Map<String, dynamic> json) {
    String? verificationToken =
        json["verificationToken"] ?? json["data"]?["verificationToken"];
    return ResultFailureData(
      statusMessage: json["statusMessage"],
      statusCode: json["statusCode"],
      verificationToken: verificationToken,
    );
  }
}

extension ResultFailureExtension on ResultFailureData {
  String getRefreshToken({required String previousToken}) {
    return verificationToken ?? previousToken;
  }
}

class ResultFailureDataJsonConverter
    extends JsonConverter<ResultFailureData, Map<String, dynamic>> {
  @override
  ResultFailureData fromJson(Map<String, dynamic> json) {
    String? verificationToken =
        json["verificationToken"] ?? json["data"]["verificationToken"];
    return ResultFailureData(
      statusMessage: json["statusMessage"],
      statusCode: json["statusCode"],
      verificationToken: verificationToken,
    );
  }

  @override
  Map<String, dynamic> toJson(ResultFailureData object) {
    throw UnimplementedError();
  }
}
