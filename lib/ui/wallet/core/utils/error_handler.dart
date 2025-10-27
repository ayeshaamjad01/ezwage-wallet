import 'package:dio/dio.dart';
import 'package:ezwage/ui/wallet/core/utils/exceptions/api_error.dart';
import 'package:ezwage/ui/wallet/core/utils/exceptions/onboarding_exceptions.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ErrorHandler {
  static void handleError(dynamic error) {
    switch (error) {
      case ApiErrorException error:
        {
          _handleApiException(error);
        }
      case Failure error:
        {
          _handleResultFailureException(error);
        }
      case UnknownStatusCodeException error:
        {
          _handleStatusCodeException(error);
        }
      case DioException exception:
        _handleDioException(exception);
      case _:
        {
          EasyLoading.showToast("Something went wrong");
        }
    }
  }

  static void _handleResultFailureException(Failure exception) {
    final error =
        exception.resultFailureData?.statusMessage ?? "Something went wrong";
    EasyLoading.showToast(error);
  }

  static void _handleApiException(ApiErrorException exception) {
    final error = exception.getErrorMessage() ?? "Something went wrong";
    EasyLoading.showToast(error);
  }

  static void _handleStatusCodeException(UnknownStatusCodeException exception) {
    EasyLoading.showToast(exception.message);
  }

  static void _handleDioException(DioException exception) {
    String error = "Something went wrong";
    try {
      final data = exception.response?.data;
      final model = ApiErrorException.fromMap(data);
      error = model.getErrorMessage() ?? "Something went wrong";
    } catch (e) {
      print("Error in parsing error response $e");
    }
    EasyLoading.showToast(error);
  }
}
