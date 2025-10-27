import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/dio.dart';

abstract class BaseRepository {
  /// Converts [HttpResponse] to [Result<T>] with JSON parsing.
  Future<Result<T>> safeApiCall<T>(
    Future<HttpResponse> Function() apiCall,
    T Function(Map<String, dynamic> json) fromJson,
  ) async {
    final httpCall = await apiCall();

    try {
      final isValid =
          httpCall.response.statusCode == HttpStatus.ok &&
          httpCall.data["statusCode"] == "200";
      if (isValid) {
        return Result.success(fromJson(httpCall.data));
      }
      return Failure(
        DioException(
          error: httpCall.response.statusMessage,
          response: httpCall.response,
          type: DioExceptionType.badResponse,
          requestOptions: httpCall.response.requestOptions,
        ),
        resultFailureData: ResultFailureData.fromJson(httpCall.data),
      );
    } on DioException catch (e) {
      return Result.failure(
        DioException(
          requestOptions: RequestOptions(path: ''),
          error: httpCall.response.statusMessage ?? e,
          type: DioExceptionType.unknown,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<Result<T>> safeOnBoardingApiCall<T>(
    Future<HttpResponse> Function() apiCall,
    T Function(Map<String, dynamic> json) fromJson,
  ) async {
    final httpCall = await apiCall();

    try {
      if (httpCall.response.statusCode == HttpStatus.ok) {
        print("httpCall.data) ${httpCall.data}");
        return Result.success(fromJson(httpCall.data));
      }
      return Failure(
        DioException(
          error: httpCall.response.statusMessage,
          response: httpCall.response,
          type: DioExceptionType.badResponse,
          requestOptions: httpCall.response.requestOptions,
        ),
      );
    } on DioException catch (e) {
      return Result.failure(
        DioException(
          requestOptions: RequestOptions(path: ''),
          error: httpCall.response.statusMessage ?? e,
          type: DioExceptionType.unknown,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
