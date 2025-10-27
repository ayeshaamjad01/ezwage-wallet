import 'dart:convert';
import 'package:ezwage/ui/wallet/account/dto/forgot_pin_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/forgot_pin_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/forgot_pin_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/forgot_pin_response_dto.dart';
import 'package:ezwage/ui/wallet/account/remote_services/account_registration_api_service.dart';
import 'package:ezwage/ui/wallet/account/respository/account_registration_repository_impl.dart';
import 'package:ezwage/ui/wallet/core/repositories/user_profile_repositories.dart';
import 'package:ezwage/ui/wallet/core/utils/easy_loading.dart';
import 'package:ezwage/ui/wallet/core/utils/error_handler.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/service_locator/dio_dependencies.dart';
import 'package:ezwage/ui/wallet/service_locator/service_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class AccountPinController with EasyLoadingUtil, ChangeNotifier {
  final int pagesLength;
  int currentPage = 0;

  AccountPinController({required this.pagesLength});

  final dio = sL<DigitAPIDio>().dio;
  late final repoRegister = AccountRegistrationRepositoryImpl(
    AccountRegistrationApiService(dio),
  );

  ForgotPinInquiryResponseDto? forgotPinInquiryResponseDto;

  updatePageNumber(int number) {
    currentPage = number;
    notifyListeners();
  }

  void nextStep() {
    int nextPage = currentPage + 1;
    if (nextPage >= pagesLength) return;
    updatePageNumber(nextPage);
  }

  Future<void> forgotPinInquiry() async {
    try {
      final mobileNumber =
          sL<UserProfileRepository>().currentProfile?.mobileNo ?? "";
      final response = await repoRegister.forgotPinInquiry(
        ForgotPinInquiryRequestDto(mobile: mobileNumber),
      );
      switch (response) {
        case Success<ForgotPinInquiryResponseDto>():
          {
            forgotPinInquiryResponseDto = response.data;

                      }
        case Failure<ForgotPinInquiryResponseDto>():
          {
            throw response;
          }
      }
    } catch (error) {
      ErrorHandler.handleError(error);
    }
  }

  String newPin = "";

  void setPin(String pin) {
        newPin = pin;
    notifyListeners();
  }

  Future<void> forgotPinExecute(String otp, BuildContext context) async {
    if (otp != forgotPinInquiryResponseDto?.otp) {
      EasyLoading.showToast("OTP invalid");
      return;
    }
    try {
      final response = await repoRegister.forgotPinExecute(
        ForgotPinRequestDto(
          verificationCode:
              forgotPinInquiryResponseDto?.verificationToken ?? "",
          mobile: forgotPinInquiryResponseDto?.mobile ?? "",
          otp: otp,
          newPin: await stringToBase64(newPin),
        ),
      );
      switch (response) {
        case Success<ForgotPinResponseDto>():
          {
            Navigator.of(context).pop();
            nextStep();
          }
        case Failure<ForgotPinResponseDto>():
          {
            throw response;
          }
      }
    } catch (error) {
      ErrorHandler.handleError(error);
    }
  }
}

/// Function that will run on the isolate
String _encodeToBase64(String input) {
  return base64Encode(utf8.encode(input));
}

/// Public function to call with compute
Future<String> stringToBase64(String input) async {
  return await compute(_encodeToBase64, input);
}
