import 'package:flutter_easyloading/flutter_easyloading.dart';

mixin EasyLoadingUtil {
  Future<void> showLoading() async {
    EasyLoading.show();
  }

  Future<T> performRequest<T>(Future<T> Function() _action) async {
    try {
      showLoading();
      final response = await _action();
      return response;
    } catch (error) {
      rethrow;
    } finally {
      EasyLoading.dismiss();
    }
  }
}
