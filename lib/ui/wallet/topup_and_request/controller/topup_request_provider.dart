import 'package:ezwage/ui/wallet/core/extensions/phone_extension.dart';
import 'package:ezwage/ui/wallet/core/extensions/transaction_date_time_ext.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/topup_inquiry_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/credit/direct_credit_payment_response_dto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';

import '../../core/constants/app_images.dart';
import '../../core/repositories/user_profile_repositories.dart';
import '../../core/utils/easy_loading.dart';
import '../../core/utils/error_handler.dart';
import '../../core/utils/result.dart';
import '../../homepage/model/IconViewModel.dart';
import '../../service_locator/dio_dependencies.dart';
import '../../service_locator/service_locator.dart';
import '../../transfer/dtos/credit/direct_credit_inquiry_request_dto.dart';
import '../../transfer/dtos/credit/direct_credit_inquiry_response_dto.dart';
import '../../transfer/dtos/credit/direct_credit_payment_request_dto.dart';
import '../../transfer/remote_services/direct_credit_api_service.dart';
import '../../transfer/repositories/direct_credit_repository_impl.dart';
import '../../transfer/view/transfer_status_page.dart';

class TopUpRequestProvider with ChangeNotifier, EasyLoadingUtil {
  final walletController = TextEditingController();
  final bankController = TextEditingController();

  String _searchInternetQuery = '';
  String get searchInternetQuery => _searchInternetQuery;

  void updateInternetFilter(String query) {
    _searchInternetQuery = query;
    notifyListeners();
  }

  Contact? selectedContact;
  final phoneController = TextEditingController();

  void selectContact(Contact? contact) {
    selectedContact = contact;
    if (contact != null) {
      phoneController.text =
          contact.phones.first.normalizedNumber.withoutCountryCode;
    }

    notifyListeners();
  }

  final dio = sL<DigitAPIDio>().dio;
  final userProfileRepo = sL<UserProfileRepository>();

  late final directCreditRepo = DirectCreditRepositoryImpl(
    DirectCreditApiService(dio),
  );

  DirectCreditInquiryResponseDto? directCreditInquiryResponseDto;
  Future<void> topUpRequestInquiry(BuildContext context, String amount) async {
    try {
      await performRequest(() async {
        final res = await directCreditRepo.inquiry(
          DirectCreditInquiryRequestDto(
            receiverAccount: userProfileRepo.currentProfile?.mobileNo ?? "",
            terminalId: '',
            terminalNameLoc: '',
            senderAccount: phoneController.text,
            amount: amount,
            customerId: userProfileRepo.currentProfile?.customerId.toString() ?? "",
          ),
        );
        switch (res) {
          case Success<DirectCreditInquiryResponseDto>():
            {
              directCreditInquiryResponseDto = res.data;
              print("CHECK ${directCreditInquiryResponseDto.toString()}");
              // if(res.data.verificationMethod != VerificationMethod.NONE){
              //   EasyLoading.showToast("Your Verification method is ${res.data.verificationMethod}");
              //
              // }
              directCreditPayment(context, amount, res.data.data?.accountTitle ?? "", res.data.verificationToken ?? "");
              notifyListeners();
            }
          case Failure<DirectCreditInquiryResponseDto>():
            {
              throw res;
            }
        }
      });
    } catch (e, st) {
      print("Error $e stacktrace $st");
      ErrorHandler.handleError(e);
    }
  }

  DirectCreditPaymentResponseDto? directCreditPaymentResponseDto;
  Future<void> directCreditPayment(
    BuildContext context,
    String amount,
    String title,
    String token,
  ) async {
    try {
      print("TOEKNz $token");
      final response = await directCreditRepo.payment(
        DirectCreditPaymentRequestDto(
          customerId:
              userProfileRepo.currentProfile?.customerId.toString() ?? "",
          receiverAccount: userProfileRepo.currentProfile?.mobileNo ?? "",
          amount: amount,
          verificationToken:
          token?? "",
          terminalId: '',
          terminalNameLoc: '',
        ),
      );
      print("REQUEST DONE");

      switch (response) {
        case Success<DirectCreditPaymentResponseDto>():
          {
                        ///
            print("REQUEST DONE");

            final dateTime = response.data.data?.transactionDateTime.toDateAndTime();

            String? date = dateTime?["date"];
            String? time = dateTime?["time"];
            print("REQUEST DONE");
            directCreditPaymentResponseDto = response.data;
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TransferStatusPage(
                  payment: amount,
                  beneficiaryAccTitle: title,
                  date: date,
                  time: time,
                  totalPayment: amount,
                  referenceNumber: response.data.data?.rrn,
                ),
              ),
            );
          }
        case Failure<DirectCreditPaymentResponseDto>():
          {
            throw response;
          }
      }
    } catch (error, st) {
      print("STTTTT $error zzz $st");
      ErrorHandler.handleError(error);
    }
  }
}
