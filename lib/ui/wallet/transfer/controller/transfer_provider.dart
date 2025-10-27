import 'package:ezwage/ui/wallet/account/dto/general_leadger/get_gl_statement_request_dto.dart';
import 'package:ezwage/ui/wallet/core/constants/app_images.dart';
import 'package:ezwage/ui/wallet/homepage/model/IconViewModel.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_bank_list_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_cities_list_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_purpose_of_payment_list_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/credit/direct_credit_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_payment_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_title_fetch_request_dto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_contacts/contact.dart';

import '../../account/dto/general_leadger/get_gl_balance_request_dto.dart';
import '../../account/dto/general_leadger/get_gl_balance_response_dto.dart';
import '../../account/dto/general_leadger/get_gl_statement_response_dto.dart';
import '../../account/dto/information/get_customer_balance_request_dto.dart';
import '../../account/dto/information/get_customer_balance_response_dto.dart';
import '../../account/dto/information/get_wallet_limits_request_dto.dart';
import '../../account/dto/information/get_wallet_limits_response_dto.dart';
import '../../account/remote_services/gl_api_service.dart';
import '../../account/remote_services/wallet_info_api_service.dart';
import '../../account/respository/gl_repository.dart';
import '../../account/respository/gl_repository_impl.dart';
import '../../account/respository/wallet_info_repository.dart';
import '../../account/respository/wallet_info_repository_impl.dart';
import '../../core/enums/wallet_type.dart';
import '../../core/utils/easy_loading.dart';
import '../../core/utils/error_handler.dart';
import '../../core/utils/result.dart';
import '../../service_locator/dio_dependencies.dart';
import '../../service_locator/service_locator.dart';
import '../dtos/cms/get_bank_list_response_dto.dart';
import '../dtos/cms/get_cities_list_response_dto.dart';
import '../dtos/cms/get_purpose_of_payment_list_response_dto.dart';
import '../dtos/credit/direct_credit_inquiry_request_dto.dart';
import '../dtos/credit/direct_credit_inquiry_response_dto.dart';
import '../dtos/credit/direct_credit_payment_response_dto.dart';
import '../dtos/ibft/ibft_title_fetch_response_dto.dart';
import '../dtos/ibft/ibft_transfer_validation_request_dto.dart';
import '../dtos/ibft/ibft_transfer_validation_response_dto.dart';
import '../dtos/wallet_to_wallet/wallet_to_wallet_inquiry_request_dto.dart';
import '../dtos/wallet_to_wallet/wallet_to_wallet_inquiry_response_dto.dart';
import '../dtos/wallet_to_wallet/wallet_to_wallet_payment_request_dto.dart';
import '../dtos/wallet_to_wallet/wallet_to_wallet_payment_response_dto.dart';
import '../remote_services/cms_management_api_service.dart';
import '../remote_services/direct_credit_api_service.dart';
import '../remote_services/ibft_api_service.dart';
import '../remote_services/wallet_to_wallet_api_service.dart';
import '../repositories/cms_management_repository.dart';
import '../repositories/cms_management_repository_impl.dart';
import '../repositories/direct_credit_repository.dart';
import '../repositories/direct_credit_repository_impl.dart';
import '../repositories/ibft_repository.dart';
import '../repositories/ibft_repository_impl.dart';
import '../repositories/wallet_to_wallet_repository.dart';
import '../repositories/wallet_to_wallet_repository_impl.dart';

class TransferProvider  with ChangeNotifier, EasyLoadingUtil {
  // TransferProvider({
  //   required init(),
  // });

  final walletController = TextEditingController();
  final bankController = TextEditingController();
  final dio = sL<DigitAPIDio>().dio;














  WalletType _selectedWallet = WalletType.otherWallets;

  WalletType get selectedWallet => _selectedWallet;

  void setWallet(WalletType type) {
    _selectedWallet = type;
    notifyListeners();
  }




// Direct Debit

  // final cmsManagementRepo = sL<CmsManagementRepository>();


  late final cmsManagementRepo = CmsManagementRepositoryImpl(
    CmsManagementApiService(dio),
  );

  Future<void> getBankList() async {

    try {
      final response = await cmsManagementRepo.getBankList(
          GetBankListRequestDto(offset: "offset", limit: "limit")
      );
      switch (response) {
        case Success<GetBankListResponseDto>():
          {
            
          }
        case Failure<GetBankListResponseDto>():
          {
            throw response;
          }
      }
    } catch (error) {
      ErrorHandler.handleError(error);
    }


  }

  //
  // Future<void> getPurposeOfPaymentList() async {
  //
  //   try {
  //     final response = await cmsManagementRepo.getPurposeOfPaymentList(
  //       GetPurposeOfPaymentListRequestDto(offset: "offset", limit: "limit"),      );
  //     switch (response) {
  //       case Success<GetPurposeOfPaymentListResponseDto>():
  //         {
  //             //
  //         }
  //       case Failure<GetPurposeOfPaymentListResponseDto>():
  //         {
  //           throw response;
  //         }
  //     }
  //   } catch (error) {
  //     ErrorHandler.handleError(error);
  //   }
  // }

  Future<void> getCitiesList() async {



    try {
      final response = await cmsManagementRepo.getCitiesList(
          GetCitiesListRequestDto(offset: "offset", limit: "limit")      );
      switch (response) {
        case Success<GetCitiesListResponseDto>():
          {
            
          }
        case Failure<GetCitiesListResponseDto>():
          {
            throw response;
          }
      }
    } catch (error) {
      ErrorHandler.handleError(error);
    }
  }




  // Direct Credit

  // final directCreditRepo = sL<DirectCreditRepository>();

  late final directCreditRepo = DirectCreditRepositoryImpl(
    DirectCreditApiService(dio),
  );

  Future<void> inquiry() async {
    //
    // final request = () async {
    //   final response = await directCreditRepo.inquiry(
    //       DirectCreditInquiryRequestDto(amount: "0", receiverAccount: '', terminalId: '', terminalNameLoc: '', senderAccount: '', customerId: '')
    //   );
    //   if (response is Success<DirectCreditInquiryResponseDto>) {
    //
    //   }
    // };
    // await performRequest(request);


    try {
      final response = await directCreditRepo.inquiry(
            DirectCreditInquiryRequestDto(amount: "0", receiverAccount: '', terminalId: '', terminalNameLoc: '', senderAccount: '', customerId: '')
      );
      switch (response) {
        case Success<DirectCreditInquiryResponseDto>():
          {
            
          }
        case Failure<DirectCreditInquiryResponseDto>():
          {
            throw response;
          }
      }
    } catch (error) {
      ErrorHandler.handleError(error);
    }
  }




  Future<void> payment() async {

    // final request = () async {
    //   final response = await directCreditRepo.payment(
    //       DirectCreditPaymentRequestDto(receiverAccount: "receiverAccount", terminalId: "terminalId", amount: "amount", terminalNameLoc: "terminalNameLoc", customerId: "customerId", verificationToken: "verificationToken")
    //
    //   );
    //   if (response is Success<DirectCreditPaymentResponseDto>) {
    //
    //   }
    // };
    // await performRequest(request);


    try {
      final response = await directCreditRepo.payment(
        DirectCreditPaymentRequestDto(receiverAccount: "receiverAccount", terminalId: "terminalId", amount: "amount", terminalNameLoc: "terminalNameLoc", customerId: "customerId", verificationToken: "verificationToken")
      );
      switch (response) {
        case Success<DirectCreditPaymentResponseDto>():
          {
            
          }
        case Failure<DirectCreditPaymentResponseDto>():
          {
            throw response;
          }
      }
    } catch (error) {
      ErrorHandler.handleError(error);
    }
  }












// Wallet Info


  // final walletInfoRepo = sL<WalletInfoRepository>();

  late final walletInfoRepo = WalletInfoRepositoryImpl(
    WalletInfoApiService(dio),
  );


  Future<void> getCustomerBalance() async {

    // final request = () async {
    //   final response = await walletInfoRepo.getCustomerBalance(
    //       GetCustomerBalanceRequestDto(mobileNo: '', customerId: '')
    //   );
    //   if (response is Success<GetCustomerBalanceResponseDto>) {
    //
    //   }
    // };
    // await performRequest(request);

    try {
      final response = await walletInfoRepo.getCustomerBalance(
          GetCustomerBalanceRequestDto(mobileNo: '', customerId: '')
      );
      switch (response) {
        case Success<GetCustomerBalanceResponseDto>():
          {
            
          }
        case Failure<GetCustomerBalanceResponseDto>():
          {
            throw response;
          }
      }
    } catch (error) {
      ErrorHandler.handleError(error);
    }

  }


  Future<void> getWalletLimits() async {

    // final request = () async {
    //   final response = await walletInfoRepo.getWalletLimits(
    //       GetWalletLimitsRequestDto(mobile: '', useCase: '')
    //   );
    //   if (response is Success<GetWalletLimitsResponseDto>) {
    //
    //   }
    // };
    // await performRequest(request);


    try {
      final response = await walletInfoRepo.getWalletLimits(
          GetWalletLimitsRequestDto(mobile: '', useCase: '')
      );
      switch (response) {
        case Success<GetWalletLimitsResponseDto>():
          {
            
          }
        case Failure<GetWalletLimitsResponseDto>():
          {
            throw response;
          }
      }
    } catch (error) {
      ErrorHandler.handleError(error);
    }
  }





// Wallet Info


  // final glRepo = sL<GlRepository>();

  late final glRepo = GlRepositoryImpl(
    GlApiService(dio),
  );

  Future<void> getGlBalance() async {

    // final request = () async {
    //   final response = await glRepo.getGlBalance(
    //       GetGlBalanceRequestDto(glAccount: '', fromDate: '', toDate: '')
    //   );
    //   if (response is Success<GetGlBalanceResponseDto>) {
    //
    //   }
    // };
    // await performRequest(request);

    try {
      final response = await glRepo.getGlBalance(
          GetGlBalanceRequestDto(glAccount: '', fromDate: '', toDate: '')
      );
      switch (response) {
        case Success<GetGlBalanceResponseDto>():
          {
            
          }
        case Failure<GetGlBalanceResponseDto>():
          {
            throw response;
          }
      }
    } catch (error) {
      ErrorHandler.handleError(error);
    }
  }


  Future<void> getGlStatement() async {

  //   final request = () async {
  //     final response = await glRepo.getGlStatement(
  //         GetGlStatementRequestDto(senderAccount: "senderAccount", customerId: "customerId", receiverAccount: "receiverAccount", amount: "amount")
  //     );
  //     if (response is Success<GetGlStatementResponseDto>) {
  //
  //     }
  //   };
  //   await performRequest(request);
  // }

    try {
      final response = await glRepo.getGlStatement(
          GetGlStatementRequestDto(senderAccount: '', amount: '', customerId: '', receiverAccount: '')
      );
      switch (response) {
        case Success<dynamic>():
          {
            
          }
        case Failure<dynamic>():
          {
            throw response;
          }
      }
    } catch (error) {
      ErrorHandler.handleError(error);
    }



}}
