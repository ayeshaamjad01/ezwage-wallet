import 'package:ezwage/ui/wallet/core/enums/telecos_bill_type.dart';
import 'package:ezwage/ui/wallet/core/extensions/phone_extension.dart';
import 'package:ezwage/ui/wallet/core/extensions/transaction_date_time_ext.dart';
import 'package:ezwage/ui/wallet/core/models/user_profile_model.dart';
import 'package:ezwage/ui/wallet/core/utils/easy_loading.dart';
import 'package:ezwage/ui/wallet/core/utils/error_handler.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/load_and_packages/repository/telco_bundle_repository_impl.dart';
import 'package:ezwage/ui/wallet/load_and_packages/services/telco_bundle_api_service.dart';
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
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';

import '../../core/repositories/user_profile_repositories.dart';
import '../../transfer/view/transfer_status_page.dart';
import '../dtos/bundle_inquiry_request_dto.dart';
import '../dtos/bundle_inquiry_response_dto.dart';
import '../dtos/bundle_payment_request_dto.dart';
import '../dtos/bundle_payment_response_dto.dart';
import '../dtos/telco_bundle_list_detail_response_dto.dart';

class MobilePackageController with ChangeNotifier, EasyLoadingUtil {
  int currentPage = 0;
  final int pagesLength;


  MobilePackageController({required this.pagesLength});

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


  BundleDetailDto? selectedBundle;

  void setSelectedPackage(BundleDetailDto bundle) {
    selectedBundle = bundle;
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

  Contact? selectedContact;
  final phoneController = TextEditingController();


  void selectContact(Contact? contact) {
    selectedContact = contact;
    if(contact != null){
      phoneController.text = contact.phones.first.normalizedNumber.withoutCountryCode;
    }

    notifyListeners();
  }

  final dio = sL<DigitAPIDio>().dio;
  late final telcoBundleRepo = TelcoBundleRepositoryImpl(TelcoBundleApiService(dio));

  BundleInquiryResponseDto? bundleInquiryResponseDto;
  final userProfileRepo = sL<UserProfileRepository>();

  Future<void> telcoBundleInquiry(BuildContext  context) async {
    String senderAccount = userProfileRepo.currentProfile?.mobileNo ?? "";
    String customerId = userProfileRepo.currentProfile?.customerId.toString() ?? "";
    try {
      await performRequest(() async {
        final res = await telcoBundleRepo.bundleInquiry(
          BundleInquiryRequestDto(
            bundleId: selectedBundle?.id.toString() ?? "",
            accountNumber: senderAccount,
            consumerNumber: phoneController.text,
            customerId: customerId,
          ),
        );
        switch (res) {
          case Success<BundleInquiryResponseDto>():
            {
              bundleInquiryResponseDto = res.data;
              telcoBundlePayment(context, senderAccount, customerId);
              notifyListeners();
            }
          case Failure<BundleInquiryResponseDto>():
            {
              throw res;
            }
        }
      });
    } catch (e) {
      ErrorHandler.handleError(e);
    }
  }

  BundlePaymentResponseDto? bundlePaymentResponseDto;

  Future<void> telcoBundlePayment(BuildContext context, String senderNumber, String customerId) async {
    try {
      await performRequest(() async {
        final res = await telcoBundleRepo.bundlePayment(
          BundlePaymentRequestDto(
            accountNumber: senderNumber,
            customerId: customerId,
            consumerNumber: phoneController.text,
            verificationToken: bundleInquiryResponseDto?.verificationToken ?? "",
            bundleId: selectedBundle?.id.toString() ?? "",
          ),
        );
        switch (res) {
          case Success<BundlePaymentResponseDto>():
            {
              bundlePaymentResponseDto = res.data;




              final dateTime = res.data.data?.transactionDateTime?.toDateAndTime();

              String? date = dateTime?["date"];
              String? time = dateTime?["time"];

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TransferStatusPage(
                    payment: bundleInquiryResponseDto?.data?.price,
                    receiverNumber: phoneController.text,
                    beneficiaryAccTitle: bundleInquiryResponseDto?.data?.customerId,
                    referenceNumber: res.data.data?.transactionId,
                    date: date,
                    time: time,
                    fee: "0",
                    totalPayment: bundleInquiryResponseDto?.data?.price,
                  ),
                ),
              );

              notifyListeners();
            }
          case Failure<BundlePaymentResponseDto>():
            {
              throw res;
            }
        }
      });
    } catch (e) {
      ErrorHandler.handleError(e);
    }
  }




  TopupInquiryResponseDto? topupInquiryResponseDto;
  // final dio = sL<DigitAPIDio>().dio;
  late final topUpRepo = TopupRepositoryImpl(TopupApiService(dio));

  Future<void> getTopUpInquiry() async {
    try {
      await performRequest(() async {
        final userAccount = sL<UserProfileModel>();
        final res = await topUpRepo.topupInquiry(
          TopupInquiryRequestDto(
            senderAccount: userAccount.mobileNo ?? "",
            telcoId: teleCosId,
            customerId: userAccount.customerId.toString(),
            consumerNumber:  phoneController.text,
          ),
        );
        switch (res) {
          case Success<TopupInquiryResponseDto>():
            {
              topupInquiryResponseDto = res.data;
              navToNextPage();
            }
          case Failure<TopupInquiryResponseDto>():
            {
              throw res;
            }
        }
      });
    } catch (e) {
      ErrorHandler.handleError(e);
    }
  }

    String otp = "";

  void updateOTP(String value) {
    otp = value;
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
        consumerNumber:  phoneController.text,
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
