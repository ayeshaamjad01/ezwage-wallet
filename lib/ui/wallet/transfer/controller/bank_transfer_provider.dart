import 'package:ezwage/ui/wallet/core/extensions/amount_extension.dart';
import 'package:ezwage/ui/wallet/core/extensions/transaction_date_time_ext.dart';
import 'package:ezwage/ui/wallet/transfer/view/verification_screen.dart';
import 'package:ezwage/ui/wallet/transfer/view_models/verification_type_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';

import '../../core/constants/app_images.dart';
import '../../core/enums/reciept_type.dart';
import '../../core/models/inquiry_reponse_model.dart';
import '../../core/repositories/user_profile_repositories.dart';
import '../../core/utils/command_pattern.dart';
import '../../core/utils/easy_loading.dart';
import '../../core/utils/error_handler.dart';
import '../../core/utils/result.dart';
import '../../homepage/model/IconViewModel.dart';
import '../../load_and_packages/view/load_otp_page.dart';
import '../../service_locator/dio_dependencies.dart';
import '../../service_locator/service_locator.dart';
import '../dtos/cms/get_bank_list_request_dto.dart';
import '../dtos/cms/get_bank_list_response_dto.dart';
import '../dtos/cms/get_purpose_of_payment_list_request_dto.dart';
import '../dtos/cms/get_purpose_of_payment_list_response_dto.dart';
import '../dtos/ibft/ibft_payment_request_dto.dart';
import '../dtos/ibft/ibft_payment_response_dto.dart';
import '../dtos/ibft/ibft_title_fetch_request_dto.dart';
import '../dtos/ibft/ibft_title_fetch_response_dto.dart';
import '../dtos/ibft/ibft_transfer_validation_request_dto.dart';
import '../dtos/ibft/ibft_transfer_validation_response_dto.dart';
import '../remote_services/cms_management_api_service.dart';
import '../remote_services/ibft_api_service.dart';
import '../repositories/cms_management_repository_impl.dart';
import '../repositories/ibft_repository_impl.dart';
import '../view/transfer_status_page.dart';
import '../widgets/kyc_dialog.dart';

class BankTransferProvider with ChangeNotifier, EasyLoadingUtil {
  BankTransferProvider() {
    command = Command(getBankList)..execute();
  }

  final dio = sL<DigitAPIDio>().dio;
  late Command command;
  late Command commandPurpose;

  final userProfileRepo = sL<UserProfileRepository>();

  final bankAmount = TextEditingController();
  String _searchQueryBank = '';

  String get searchQueryBank => _searchQueryBank;

  List<BankItemDto> get filteredBankList {
    if (_searchQueryBank.isEmpty) return bankItemsList ?? [];
    return bankItemsList!
        .where(
          (item) => item.bankName.toLowerCase().contains(
            _searchQueryBank.toLowerCase(),
          ),
        )
        .toList();
  }

  String? _selectedKycAnswer;

  String? get selectedKycAnswer => _selectedKycAnswer;

  void setSelectedKycAnswer(String answer) {
    _selectedKycAnswer = answer;
    notifyListeners();
  }

  void clearKycAnswer() {
    _selectedKycAnswer = null;
    notifyListeners();
  }

  void clearBankAmount() {
    bankAmount.clear();
    notifyListeners();
  }

  void updateSearch(String query) {
    _searchQueryBank = query;
    notifyListeners();
  }

  BankItemDto? selectedBank;
  String? bankNumber;

  void selectBank(BankItemDto contact) {
    selectedBank = contact;
    notifyListeners();
  }

  void setBankNumber(String num) {
    bankNumber = num;
    notifyListeners();
  }

  // IBFT (Interbank Fund Transfer)

  // final ibftRepo = sL<IbftRepository>();

  late final ibftRepo = IbftRepositoryImpl(IbftApiService(dio));

  void purposeOfPaymentCommand() {
    commandPurpose = Command(() => getPurposeOfPaymentList())..execute();
    notifyListeners();
  }

  IbftTitleFetchResponseDto? ibftTitleFetchResponseDto;

  Future<void> titleFetch(String accountNum, BuildContext mContext) async {
    final req = IbftTitleFetchRequestDto(
      receiverAccount: accountNum,
      senderAccount: userProfileRepo.currentProfile?.mobileNo ?? "",
      customerId: userProfileRepo.currentProfile?.customerId.toString() ?? "",
      purposeId: selectedPurpose?.purposeId.toString() ?? "",
      bankId: selectedBank?.bankId.toString() ?? "",
      amount: (bankAmount.text).toPaisas(),
      extInfo: {},
    );
    try {
      await performRequest(() async {
        final res = await ibftRepo.titleFetch(req);
        switch (res) {
          case Success<IbftTitleFetchResponseDto>():
            {
              ibftTitleFetchResponseDto = res.data;
              if( res.data.data.verificationMethod==IBFTVMethod.NONE ){
                transferIBFTPayment(mContext);
                return;
              }
              Navigator.of(mContext).push(
                MaterialPageRoute(
                  builder: (context) => VerificationScreen(
                    viewModel: OTPVerificationViewModel(
                      otpExpireIn: Duration(seconds: res.data.data.otpExpiryIn),
                      onResendTap: () async {
                        await titleFetchAgain(req);
                        final expireIn =
                            ibftTitleFetchResponseDto?.data.otpExpiryIn ?? 120;
                        final duration = Duration(seconds: expireIn);
                        return duration;
                      },
                      onSubmit: (submission) {
                        performTransferValidation(
                          IbftTransferValidationRequestDto(
                            userId:
                                userProfileRepo.currentProfile?.customerId
                                    .toString() ??
                                "",
                            otp: submission,
                            answer: "",
                          ),
                          mContext: mContext,
                        );
                        // Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              );
            }
          case Failure<IbftTitleFetchResponseDto>():
            {
              EasyLoading.showToast("Something went wrong");

              throw res;
            }
        }
      });
    } catch (e, st) {
      print("Error $e stacktrace $st");
      ErrorHandler.handleError(e);
    }
  }

  Future<void> titleFetchAgain(IbftTitleFetchRequestDto req) async {
    if ((ibftTitleFetchResponseDto?.data.otpResendTries ?? 1) <= 0) {
      EasyLoading.showToast("OTP Resend Limit Exhausted!");
      return;
    }
    try {
      await performRequest(() async {
        final res = await ibftRepo.titleFetch(req);
        switch (res) {
          case Success<IbftTitleFetchResponseDto>():
            {
              ibftTitleFetchResponseDto = res.data;
            }
          case Failure<IbftTitleFetchResponseDto>():
            {
              EasyLoading.showToast("Something went wrong");

              throw res;
            }
        }
      });
    } catch (e, st) {
      print("Error $e stacktrace $st");
      ErrorHandler.handleError(e);
    }
  }

  IbftTransferValidationResponseDto? ibftTransferValidationResponseDto;

  Future<void> performTransferValidation(
    IbftTransferValidationRequestDto req, {
    required BuildContext mContext,
  }) async {
    try {
      await performRequest(() async {
        final response = await ibftRepo.transferValidation(req);
        switch (response) {
          case Success<IbftTransferValidationResponseDto>():
            {
              Navigator.of(mContext).pop();
              ibftTransferValidationResponseDto = response.data;
              final authM = response.data.data.authMethod;
              final kycQType = response.data.data.kycQuestionType;
              if (response.data.data.validationStatus == "retry_kyc") {
                EasyLoading.showToast(
                  response.data.data.validationMessage ??
                      "Something went wrong",
                );
                Navigator.push(
                  mContext,
                  MaterialPageRoute(
                    builder: (context) => VerificationScreen(
                      viewModel: kycQuestionVerificationViewModel(
                        onSubmit: (submission) {
                          performTransferValidation(
                            req.copyWith(answer: submission),
                            mContext: mContext,
                          );
                        },
                        options: response.data.data.kycAnswerList ?? [],
                        questionType: kycQType,
                      ),
                    ),
                  ),
                );
              } else if (authM != AuthMethod.otp &&
                  response.data.data.validationStatus == "pending") {
                Navigator.push(
                  mContext,
                  MaterialPageRoute(
                    builder: (context) => VerificationScreen(
                      viewModel: kycQuestionVerificationViewModel(
                        onSubmit: (submission) {
                          performTransferValidation(
                            req.copyWith(answer: submission),
                            mContext: mContext,
                          );
                        },
                        options: response.data.data.kycAnswerList ?? [],
                        questionType: kycQType,
                      ),
                    ),
                  ),
                );
              } else {
                transferIBFTPayment(mContext);
              }
            }
          case Failure<IbftTransferValidationResponseDto>():
            {
              final message =
                  response.resultFailureData?.statusMessage ??
                  "Something went wrong";
              final vStatus = response.error.response?.data["validationStatus"];
              if (vStatus == "retry_otp") {}
              EasyLoading.showToast(message);
              // throw response;
            }
        }
      });
    } catch (error, st) {
      ErrorHandler.handleError(error);
    }
  }

  Future<void> transferIBFTPayment(BuildContext context) async {
    try {
      await performRequest(() async{
        final response = await ibftRepo.payment(
          IbftPaymentRequestDto(
            senderAccount: userProfileRepo.currentProfile?.mobileNo ?? "",
            customerId:
                userProfileRepo.currentProfile?.customerId.toString() ?? "",
            receiverAccount: bankNumber ?? "",
            amount: bankAmount.text.toPaisas(),
            bankId: selectedBank?.bankId.toString() ?? "",
            purposeId: selectedPurpose?.purposeId.toString() ?? "",
            verificationToken:
                ibftTransferValidationResponseDto?.data.verificationToken ??
                ibftTitleFetchResponseDto?.verificationToken ??
                "",
            beneficiaryBank: ibftTitleFetchResponseDto?.data.bankName,
            beneficiaryBranch: ibftTitleFetchResponseDto?.data.branchName,
            beneficiaryIban: ibftTitleFetchResponseDto?.data.beneficiaryIBAN,
            beneficiaryTitle: ibftTitleFetchResponseDto?.data.beneficiaryAccTitle,
          ),
        );
        switch (response) {
          case Success<IbftPaymentResponseDto>():
            {
              final respons = response.data;

              final dateTime = response.data.transactionDateTime
                  ?.toDateAndTime();

              String? date = dateTime?["date"];
              String? time = dateTime?["time"];

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TransferStatusPage(
                    payment: bankAmount.text,
                    receiverNumber:
                        ibftTitleFetchResponseDto?.data.accountNumber,
                    beneficiaryAccTitle:
                        ibftTitleFetchResponseDto?.data.beneficiaryAccTitle,
                    referenceNumber: response.data.rrn,
                    date: date,
                    time: time,
                    fee: ibftTitleFetchResponseDto?.data.taxAndFee,
                    totalPayment: ibftTitleFetchResponseDto?.data.totalAmount,
                  ),
                ),
              );

                          }
          case Failure<IbftPaymentResponseDto>():
            {
              throw response;
            }
        }
      });
    } catch (error) {
      ErrorHandler.handleError(error);
    }
  }

  late final cmsManagementRepo = CmsManagementRepositoryImpl(
    CmsManagementApiService(dio),
  );

  GetBankListResponseDto? getBankListResponseDto;
  List<BankItemDto>? bankItemsList;

  Future<void> getBankList() async {
    try {
      final response = await cmsManagementRepo.getBankList(
        GetBankListRequestDto(offset: "0", limit: "15"),
      );
      switch (response) {
        case Success<GetBankListResponseDto>():
          {
                        getBankListResponseDto = response.data;
            bankItemsList = getBankListResponseDto?.data;
            notifyListeners();
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

  GetPurposeOfPaymentListResponseDto? getPurposeOfPaymentListResponseDto;

  List<PurposeOfPaymentItemDto> _purposesOfPayment = [];
  PurposeOfPaymentItemDto? _selectedPurpose;

  List<PurposeOfPaymentItemDto> get purposesOfPayment => _purposesOfPayment;

  PurposeOfPaymentItemDto? get selectedPurpose => _selectedPurpose;

  Future<void> getPurposeOfPaymentList() async {
    try {
      final response = await cmsManagementRepo.getPurposeOfPaymentList(
        GetPurposeOfPaymentListRequestDto(offset: "0", limit: "40"),
      );
      switch (response) {
        case Success<GetPurposeOfPaymentListResponseDto>():
          {
                        getPurposeOfPaymentListResponseDto = response.data;
            _purposesOfPayment = getPurposeOfPaymentListResponseDto?.data ?? [];
            print("_purposesOfPayment ${_purposesOfPayment.length}");
            notifyListeners();
          }
        case Failure<GetPurposeOfPaymentListResponseDto>():
          {
            throw response;
          }
      }
    } catch (error) {
      ErrorHandler.handleError(error);
    }
  }

  void setPurposes(List<PurposeOfPaymentItemDto> list) {
    _purposesOfPayment = list;
    notifyListeners();
  }

  void setSelectedPurpose(PurposeOfPaymentItemDto purpose) {
    _selectedPurpose = purpose;
    notifyListeners();
  }
}
