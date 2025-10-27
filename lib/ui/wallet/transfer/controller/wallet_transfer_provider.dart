import 'package:ezwage/ui/wallet/core/extensions/phone_extension.dart';
import 'package:ezwage/ui/wallet/core/extensions/transaction_date_time_ext.dart';
import 'package:ezwage/ui/wallet/core/models/inquiry_reponse_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../core/constants/app_images.dart';
import '../../core/repositories/user_profile_repositories.dart';
import '../../core/utils/easy_loading.dart';
import '../../core/utils/error_handler.dart';
import '../../core/utils/result.dart';
import '../../homepage/model/IconViewModel.dart';
import '../../service_locator/dio_dependencies.dart';
import '../../service_locator/service_locator.dart';
import '../dtos/wallet_to_wallet/wallet_to_wallet_inquiry_request_dto.dart';
import '../dtos/wallet_to_wallet/wallet_to_wallet_inquiry_response_dto.dart';
import '../dtos/wallet_to_wallet/wallet_to_wallet_payment_request_dto.dart';
import '../dtos/wallet_to_wallet/wallet_to_wallet_payment_response_dto.dart';
import '../remote_services/wallet_to_wallet_api_service.dart';
import '../repositories/wallet_to_wallet_repository_impl.dart';
import '../view/transfer_status_page.dart';
import '../widgets/kyc_dialog.dart';

class WalletTransferProvider with ChangeNotifier, EasyLoadingUtil {


  final dio = sL<DigitAPIDio>().dio;
  late final command;

  final userProfileRepo = sL<UserProfileRepository>();


  final List<IconViewModel> walletIcons = [
    IconViewModel(title: 'Easy Paisa', imagePath: AppImages.easypaisaLogo),
    IconViewModel(title: 'JazzCash', imagePath: AppImages.easypaisaLogo),
    IconViewModel(title: 'NayaPay', imagePath: AppImages.easypaisaLogo),
    IconViewModel(title: 'SadaPay', imagePath: AppImages.easypaisaLogo),
    IconViewModel(title: 'Konnect', imagePath: AppImages.easypaisaLogo),
    IconViewModel(title: 'U-Paisa', imagePath: AppImages.easypaisaLogo),
  ];

  String _searchQuery = '';
  String get searchQuery => _searchQuery;

  List<IconViewModel> get filteredIcons {
    if (_searchQuery.isEmpty) return walletIcons;
    return walletIcons
        .where(
          (item) =>
              item.title.toLowerCase().contains(_searchQuery.toLowerCase()),
        )
        .toList();
  }

  final List<IconViewModel> contactsList = [
    IconViewModel(
      title: 'Ali',
      subTitle: "+921523461253",
      imagePath: AppImages.easypaisaLogo,
    ),
    IconViewModel(
      title: 'Ahmad',
      subTitle: "+922523461253",
      imagePath: AppImages.easypaisaLogo,
    ),
    IconViewModel(
      title: 'Hassan',
      subTitle: "+923523461253",
      imagePath: AppImages.easypaisaLogo,
    ),
  ];

  List<IconViewModel> get filteredContacts {
    if (_searchQuery.isEmpty) return contactsList;
    return contactsList
        .where(
          (item) =>
          item.title.toLowerCase().contains(_searchQuery.toLowerCase()),
    )
        .toList();
  }



  void updateSearch(
    String query,
  ) {
    _searchQuery = query;

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

  void refresh(){
    phoneController.clear();

  }






  // Wallet to Wallet
//   final walletToWalletRepo = sL<WalletToWalletRepository>();

  late final walletToWalletRepo = WalletToWalletRepositoryImpl(
    WalletToWalletApiService(dio),
  );


  WalletToWalletInquiryResponseDto? walletToWalletInquiryResponseDto;
  Future<void> walletToWalletInquiry(BuildContext context, String amount, ) async {

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (_) => KycScreen(
    //       question: "Nationality",
    //       answers: ["Pakistani", "Indian", "American", "Other"],
    //       onProceed: (selectedAnswer) {
    //         debugPrint("User selected: $selectedAnswer");
    //         // You can trigger your provider/logic here
    //       },
    //     ),
    //   ),
    // );

    try {
      await performRequest(() async {
        final res = await walletToWalletRepo.inquiry(
            WalletToWalletInquiryRequestDto(receiverAccount: phoneController.text, senderAccount: userProfileRepo.currentProfile?.mobileNo ?? "", customerId: userProfileRepo.currentProfile?.customerId.toString() ?? "", amount: amount, version: "v1")
        );
        switch (res) {
          case Success<WalletToWalletInquiryResponseDto>():
            {
              walletToWalletInquiryResponseDto = res.data;
              if(res.data.verificationMethod != VerificationMethod.NONE){
                EasyLoading.showToast("Your Verification method is ${res.data.verificationMethod}");

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) => KycScreen(
                //       question: res.data.verificationMethod.name ?? "",
                //       answers: ["Pakistani", "Indian", "American", "Other"],
                //       onProceed: (selectedAnswer) {
                //         debugPrint("User selected: $selectedAnswer");
                //         // You can trigger your provider/logic here
                //       },
                //     ),
                //   ),
                // );
              }
              walletToWalletPayment(context, amount, res.data.data.accountTitle);
              notifyListeners();

            }
          case Failure<WalletToWalletInquiryResponseDto>():
            {
              // EasyLoading.showToast(res);

              throw res;
            }
        }
      });
    } catch (e, st) {
      print("Error $e stacktrace $st");
      ErrorHandler.handleError(e);
    }
  }


  WalletToWalletPaymentResponseDto? walletPaymentResponseDto;
  Future<void> walletToWalletPayment(BuildContext context, String amount, String title,) async {


    try {
      final response = await walletToWalletRepo.payment(
          WalletToWalletPaymentRequestDto(senderAccount: userProfileRepo.currentProfile?.mobileNo ?? "",
              customerId: userProfileRepo.currentProfile?.customerId.toString() ?? "",
              receiverAccount: phoneController.text, amount: amount,
              verificationToken: walletToWalletInquiryResponseDto?.verificationToken ?? "")
      );
      switch (response) {
        case Success<WalletToWalletPaymentResponseDto>():
          {
                        ///

            final dateTime = response.data.transactionDateTime.toDateAndTime();

            String? date = dateTime["date"];
            String? time = dateTime["time"];

            walletPaymentResponseDto = response.data;
            Navigator.push(context, MaterialPageRoute(builder: (context) => TransferStatusPage(payment: amount, beneficiaryAccTitle: title, date: date, time: time,
                fee: walletToWalletInquiryResponseDto?.data.taxAndFee.toString(),
            totalPayment: amount,
              receiverNumber: walletToWalletInquiryResponseDto?.data.mobileNo,
              referenceNumber: response.data.rrn,
            ),),);

          }
        case Failure<WalletToWalletPaymentResponseDto>():
          {
            throw response;
          }
      }
    } catch (error) {
      ErrorHandler.handleError(error);
    }
  }


}
