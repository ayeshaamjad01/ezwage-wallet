import 'package:ezwage/ui/wallet/bill_and_fees/repository/bill_payment_repository_impl.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/services/bill_payment_api_service.dart';
import 'package:ezwage/ui/wallet/core/extensions/amount_extension.dart';
import 'package:ezwage/ui/wallet/core/extensions/transaction_date_time_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_images.dart';
import '../../core/repositories/user_profile_repositories.dart';
import '../../core/utils/easy_loading.dart';
import '../../core/utils/error_handler.dart';
import '../../core/utils/result.dart';
import '../../homepage/model/IconViewModel.dart';
import '../../service_locator/dio_dependencies.dart';
import '../../service_locator/service_locator.dart';
import '../../transfer/view/transfer_status_page.dart';
import '../dtos/bill_inquiry_request_dto.dart';
import '../dtos/bill_inquiry_response_dto.dart';
import '../dtos/bill_list_request_dto.dart';
import '../dtos/bill_list_response_dto.dart';
import '../dtos/bill_payment_request_dto.dart';
import '../dtos/bill_payment_response_dto.dart';
import '../views/bill_status_page.dart';

class BillPaymentProvider with ChangeNotifier, EasyLoadingUtil {
  final walletController = TextEditingController();
  final bankController = TextEditingController();
  final dio = sL<DigitAPIDio>().dio;


  final userProfileRepo = sL<UserProfileRepository>();

  final List<IconViewModel> electricityProviders = [
    IconViewModel(title: 'MEPCO', imagePath: AppImages.easypaisaLogo),
    IconViewModel(title: 'FESCO', imagePath: AppImages.easypaisaLogo),
    IconViewModel(title: 'IESCO', imagePath: AppImages.easypaisaLogo),
    IconViewModel(title: 'LESCO', imagePath: AppImages.easypaisaLogo),
    IconViewModel(title: 'K-ELECTRIC', imagePath: AppImages.easypaisaLogo),
    IconViewModel(title: 'PESCO', imagePath: AppImages.easypaisaLogo),
  ];

  final List<IconViewModel> educationsInstituteProviders = [
    IconViewModel(
      title: 'Allied Group of Schools',
      imagePath: AppImages.easypaisaLogo,
    ),
    IconViewModel(title: 'LUMS', imagePath: AppImages.easypaisaLogo),
    IconViewModel(
      title: 'University Of punjab',
      imagePath: AppImages.easypaisaLogo,
    ),
    IconViewModel(
      title: 'Virtual University',
      imagePath: AppImages.easypaisaLogo,
    ),
    IconViewModel(title: 'BNUST', imagePath: AppImages.easypaisaLogo),
  ];

  final List<IconViewModel> internetServiceProviders = [
    IconViewModel(title: 'NayaTel', imagePath: AppImages.easypaisaLogo),
    IconViewModel(title: 'PTCL', imagePath: AppImages.easypaisaLogo),
    IconViewModel(title: 'Transword', imagePath: AppImages.easypaisaLogo),
  ];

  String _searchInternetQuery = '';

  String get searchInternetQuery => _searchInternetQuery;

  String _searchEducationQuery = '';

  String get searchEducationQuery => _searchEducationQuery;

  String _searchElectricityQuery = '';

  String get searchElectricityQuery => _searchElectricityQuery;

  List<IconViewModel> get filteredElectricityProviders {
    if (_searchElectricityQuery.isEmpty) return electricityProviders;
    return electricityProviders
        .where(
          (item) => item.title.toLowerCase().contains(
            _searchElectricityQuery.toLowerCase(),
          ),
        )
        .toList();
  }

  List<IconViewModel> get filteredEducationalInstitutes {
    if (_searchEducationQuery.isEmpty) return educationsInstituteProviders;
    return educationsInstituteProviders
        .where(
          (item) => item.title.toLowerCase().contains(
            _searchEducationQuery.toLowerCase(),
          ),
        )
        .toList();
  }

  void updateEducationFilter(String query) {
    _searchEducationQuery = query;
    notifyListeners();
  }

  void updateElectricityFilter(String query) {
    _searchElectricityQuery = query;
    notifyListeners();
  }

  void updateInternetFilter(String query) {
    _searchInternetQuery = query;
    notifyListeners();
  }


    String consumerNumber = "";

  void setConsumerNumber(String number) {
    consumerNumber = number;
    notifyListeners();
  }

  String teleCosId = "";
  BillerDto? selectedBill;

  void setBillId(int value, BillerDto? bill) {
    if (value == billId) return;
    billId = value;
    selectedBill = bill;
    return;
  }

    String feeAmount = "500";
  String taxAmount = "100";
  int billId = 0;

  void onBillSelect(int value) {
    if (value == billId) return;
    billId = value;
    return;
  }

  // Bill Payment

  late final billPaymentRepo = BillPaymentRepositoryImpl(
    BillPaymentApiService(dio),
  );

  BillListResponseDto? billListResponseDto;

  Future<void> getBillList() async {
    try {
      await performRequest(() async {
        final res = await billPaymentRepo.getBillList(
          BillListRequestDto(offset: '', limit: '', search: ''),
        );
        switch (res) {
          case Success<BillListResponseDto>():
            {
              billListResponseDto = res.data;
              notifyListeners();
            }
          case Failure<BillListResponseDto>():
            {
              throw res;
            }
        }
      });
    } catch (e, st) {
      print("Error BILL List $e STACK $st");

      ErrorHandler.handleError(e);
    }
  }

  BillInquiryResponseDto? billInquiryResponseDto;

  Future<void> getBillTitle() async {
    String senderAccount = userProfileRepo.currentProfile?.mobileNo ?? "";
    String customerId = userProfileRepo.currentProfile?.customerId.toString() ?? "";
    try {
      await performRequest(() async {
        final res = await billPaymentRepo.billInquiry(
          BillInquiryRequestDto(
            senderAccount: senderAccount,
            billerId: billId.toString(),
            amount: feeAmount,
            customerId: customerId,
            consumerNumber: consumerNumber,
            taxAmount: taxAmount,
            consumerName: "Ali"
          ),
        );
        switch (res) {
          case Success<BillInquiryResponseDto>():
            {
              billInquiryResponseDto = res.data;
              navToNextPage();
              // payBill(senderAccount, customerId,);
              notifyListeners();
            }
          case Failure<BillInquiryResponseDto>():
            {
              throw res;
            }
        }
      });
    } catch (e, st) {
      print("Error BILL title $e STACK $st");

      ErrorHandler.handleError(e);
    }
  }

  BillPaymentResponseDto? billPaymentResponseDto;

  Future<void> payBill(String senderAccount, String customerId, BuildContext context) async {
    try {
      await performRequest(() async {
        final res = await billPaymentRepo.payBill(
          BillPaymentRequestDto(
            senderAccount: userProfileRepo.currentProfile?.mobileNo ?? "",
            billerId: billId,
            verificationToken: billInquiryResponseDto?.verificationToken,
            consumerNumber: billInquiryResponseDto?.data?.consumerNumber ?? "",
            amount: billInquiryResponseDto?.data?.totalAmount?.toPaisas() ?? "",
            feeAmount: feeAmount.toPaisas(),
            billMonth: billInquiryResponseDto?.data?.billMonth ?? "",
            customerId: userProfileRepo.currentProfile?.customerId.toString() ?? "",
            taxAmount: "0",
            consumerName: billInquiryResponseDto?.data?.consumerName ?? "",
          ),
        );
        switch (res) {
          case Success<BillPaymentResponseDto>():
            {
              billPaymentResponseDto = res.data;



              final dateTime = res.data.data?.transactionDateTime?.toDateAndTime();

              String? date = dateTime?["date"];
              String? time = dateTime?["time"];

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BillStatusPage(
                    bill: selectedBill,
                    payment: billInquiryResponseDto?.data?.totalAmount,
                    receiverNumber: billInquiryResponseDto?.data?.consumerNumber ?? "",
                    beneficiaryAccTitle:
                    billInquiryResponseDto?.data?.consumerName,
                    referenceNumber: res.data.data?.rrn,
                    date: date,
                    time: time,
                    fee: feeAmount,
                    totalPayment: billInquiryResponseDto?.data?.totalAmount,
                  ),
                ),
              );

              notifyListeners();
            }
          case Failure<BillPaymentResponseDto>():
            {
              throw res;
            }
        }
      });
    } catch (e, st) {
      print("Error BILL $e STACK $st");
      ErrorHandler.handleError(e);
    }
  }



  // String consumerNumber = "";

  final int pagesLength;
  int currentPage = 0;

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

  BillPaymentProvider({required this.pagesLength});

  void updatePage(int page) {
    currentPage = page;
    notifyListeners();
  }

  String amount = "";
  String otp = "";


}
