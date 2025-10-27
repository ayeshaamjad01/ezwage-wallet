import 'package:ezwage/ui/wallet/core/enums/telecos_bill_type.dart';
import 'package:ezwage/ui/wallet/core/models/user_profile_model.dart';
import 'package:ezwage/ui/wallet/core/utils/easy_loading.dart';
import 'package:ezwage/ui/wallet/core/utils/error_handler.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/service_locator/dio_dependencies.dart';
import 'package:ezwage/ui/wallet/service_locator/service_locator.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/topup_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/topup_inquiry_response_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/topup_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/topup_payment_response_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/repository/topup_repository_impl.dart';
import 'package:ezwage/ui/wallet/topup_and_request/services/topup_api_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../../core/repositories/user_profile_repositories.dart';

class MobileTopUpController with ChangeNotifier, EasyLoadingUtil {
  int currentPage = 0;
  final int pagesLength;

  final TeleCosBillType billType;

  MobileTopUpController({required this.billType, required this.pagesLength});
  final userProfileRepo = sL<UserProfileRepository>();

  void updatePage(int page) {
    if (currentPage == page) return;
    currentPage = page;
    notifyListeners();
  }

  void navToNextPage() {
    final nextPageNumber = currentPage + 1;
    if (nextPageNumber >= pagesLength) return;
    updatePage(nextPageNumber);
  }

  void navToPreviousPage() {
    final nextPageNumber = currentPage - 1;
    if (nextPageNumber < 1) return;
    updatePage(nextPageNumber);
  }

    String consumerNumber = "";

  void setConsumerNumber(String number) {
    consumerNumber = number;
    notifyListeners();
  }

  int teleCosId = 0;

  void setTelecosId(int id) {
    teleCosId = id;
    notifyListeners();
  }

  String amount = "";

  void setAmount(String amount) {
    this.amount = amount;
    notifyListeners();
  }

  TopupInquiryResponseDto? topupInquiryResponseDto;
  final dio = sL<DigitAPIDio>().dio;
  late final topUpRepo = TopupRepositoryImpl(TopupApiService(dio));

  Future<void> getTopUpInquiry() async {
    try {
      await performRequest(() async {

        final userAccount = sL<UserProfileRepository>();
        final res = await topUpRepo.topupInquiry(
          TopupInquiryRequestDto(
            senderAccount: userAccount.currentProfile?.mobileNo ?? "",
            telcoId: teleCosId,
            customerId: userAccount.currentProfile?.customerId.toString() ?? "",
            consumerNumber: consumerNumber,
          ),
        );
        switch (res) {
          case Success<TopupInquiryResponseDto>():
            {
              print("SDWDS");
              topupInquiryResponseDto = res.data;
              navToNextPage();
            }
          case Failure<TopupInquiryResponseDto>():
            {
              throw res;
            }
        }
      });
    } catch (e, st) {
      print("ERROR $e STACK Tacse $st");
      ErrorHandler.handleError(e);
    }
  }

  
  String _otp = '';
  bool _isValid = false;

  String get otp => _otp;

  bool get isOtpComplete => _otp.length == 5;

  bool get isOtpValid => _isValid;

  void updateOTP(String value) {
    _otp = value;
    _isValid = _otp.length == 5; // ✅ update validity

    notifyListeners();
  }

    Future<void> performMobileTopUp(BuildContext context) async {
    try {
      final inquiry = topupInquiryResponseDto!;
      final inquiryData = topupInquiryResponseDto!.data!;
      final userAccount = sL<UserProfileModel>();

            final request = TopupPaymentRequestDto(
        amount: amount,
        consumerName: inquiryData.consumerName ?? "",
        customerId: userAccount.customerId.toString(),
        feeAmount: "0",
        senderAccount: userAccount.mobileNo ?? "",
        telcoId: teleCosId,
        consumerNumber: consumerNumber,
        verificationToken: inquiry.verificationToken,
        otp: otp,
      );
      final response = await topUpRepo.topupPayment(request);
      switch (response) {
        case Success<TopupPaymentResponseDto>():
          {
                      }
        case Failure<TopupPaymentResponseDto>():
          {
            throw response;
          }
      }
    } catch (error) {
      ErrorHandler.handleError(error);
    }
  }
}
