import 'package:ezwage/ui/wallet/core/enums/telecos_bill_type.dart';
import 'package:ezwage/ui/wallet/load_and_packages/services/telco_bundle_api_service.dart';
import 'package:ezwage/ui/wallet/topup_and_request/services/topup_api_service.dart';
import 'package:flutter/cupertino.dart';

import '../../core/utils/easy_loading.dart';
import '../../core/utils/error_handler.dart';
import '../../core/utils/result.dart';
import '../../service_locator/dio_dependencies.dart';
import '../../service_locator/service_locator.dart';
import '../../topup_and_request/dtos/telco_list_request_dto.dart';
import '../../topup_and_request/dtos/telco_list_response_dto.dart';
import '../../topup_and_request/dtos/topup_inquiry_request_dto.dart';
import '../../topup_and_request/dtos/topup_inquiry_response_dto.dart';
import '../../topup_and_request/dtos/topup_payment_request_dto.dart';
import '../../topup_and_request/dtos/topup_payment_response_dto.dart';
import '../../topup_and_request/repository/topup_repository_impl.dart';
import '../../wallet_onboarding/model/network_model.dart';
import '../dtos/bundle_inquiry_request_dto.dart';
import '../dtos/bundle_inquiry_response_dto.dart';
import '../dtos/bundle_payment_request_dto.dart';
import '../dtos/bundle_payment_response_dto.dart';
import '../dtos/telco_bundle_list_detail_request_dto.dart';
import '../dtos/telco_bundle_list_detail_response_dto.dart';
import '../repository/telco_bundle_repository_impl.dart';

class LoadAndPackageProvider with ChangeNotifier, EasyLoadingUtil {
  // LoadAndPackageProvider({
  //   required init(),
  // });
  //

  final dio = sL<DigitAPIDio>().dio;

  void setSelectedNetwork(NetworkModel networkModel) {
    _selectedNetwork = networkModel;

    notifyListeners();
  }

  NetworkModel? get selectedNetwork => _selectedNetwork;

  NetworkModel? _selectedNetwork;

  List<NetworkModel> get networkList => _networkList;

  // Prepaid
  String? _prepaidPhoneNumber;
  String? _prepaidSelectedNetwork;
  String? _prepaidAmount;

  // Postpaid
  String? _postpaidPhoneNumber;
  String? _postpaidSelectedNetwork;
  String? _postpaidAmount;
  String? _postpaidBillingMonth;
  DateTime? _postpaidDueDate = DateTime.now();

  // Prepaid getters
  String? get prepaidPhoneNumber => _prepaidPhoneNumber;

  String? get prepaidSelectedNetwork => _prepaidSelectedNetwork;

  String? get prepaidAmount => _prepaidAmount;

  // Postpaid getters
  String? get postpaidPhoneNumber => _postpaidPhoneNumber;

  String? get postpaidSelectedNetwork => _postpaidSelectedNetwork;

  String? get postpaidAmount => _postpaidAmount;

  String? get postpaidBillingMonth => _postpaidBillingMonth;

  DateTime? get postpaidDueDate => _postpaidDueDate;

  final List<NetworkModel> _networkList = [
    NetworkModel(name: 'Zong', imagePath: 'assets/wallet/zong_logo.svg'),
    NetworkModel(name: 'Jazz', imagePath: 'assets/wallet/jazz_logo.svg'),
    NetworkModel(name: 'Ufone', imagePath: 'assets/wallet/uphone_logo.svg'),
    NetworkModel(name: 'Telenor', imagePath: 'assets/wallet/telenor_logo.svg'),
  ];

  // String? _selectedMonth;
  // DateTime? _selectedDate;
  //
  // String? get selectedMonth => _selectedMonth;
  // DateTime? get selectedDate => _selectedDate;

  void setMonth(String? month) {
    _postpaidBillingMonth = month;
    notifyListeners();
  }

  void setDate(DateTime? date) {
    _postpaidDueDate = date;
    notifyListeners();
  }

  String? _selectedType;
  String? _selectedValidity;
  String? _selectedPrice;

  String? get selectedType => _selectedType;

  String? get selectedValidity => _selectedValidity;

  String? get selectedPrice => _selectedPrice;

  final List<String> types = ["Prepaid", "Postpaid", "Data Only"];
  final List<String> validity = ["1 Day", "7 Days", "30 Days"];
  final List<String> prices = ["\$5", "\$10", "\$20"];

  void setType(String? value) {
    _selectedType = value;
    notifyListeners();
  }

  void setValidity(String? value) {
    _selectedValidity = value;
    notifyListeners();
  }

  void setPrice(String? value) {
    _selectedPrice = value;
    notifyListeners();
  }

  // Topup

  late final topUpRepo = TopupRepositoryImpl(TopupApiService(dio));

  TelcoListResponseDto? telcoListResponseDto;

  Future<void> getCustomerDetail() async {
    try {
      await performRequest(() async {
        final res = await topUpRepo.getTelcoList(
          TelcoListRequestDto(offset: '', limit: '', search: '', type: TeleCosBillType.bundle),
        );
        switch (res) {
          case Success<TelcoListResponseDto>():
            {
              telcoListResponseDto = res.data;
              notifyListeners();
            }
          case Failure<TelcoListResponseDto>():
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

  Future<void> topupInquiry() async {
    try {
      await performRequest(() async {
        final res = await topUpRepo.topupInquiry(
          TopupInquiryRequestDto(
            senderAccount: '',
            telcoId: 0,
            customerId: '',
            consumerNumber: '',
          ),
        );
        switch (res) {
          case Success<TopupInquiryResponseDto>():
            {
              topupInquiryResponseDto = res.data;
              notifyListeners();
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

  TopupPaymentResponseDto? topupPaymentResponseDto;

  Future<void> topupPayment() async {
    try {
      await performRequest(() async {
        final res = await topUpRepo.topupPayment(
          TopupPaymentRequestDto(
            senderAccount: '',
            customerId: '',
            consumerName: '',
            amount: '',
            telcoId: 0,
            feeAmount: '',
          ),
        );
        switch (res) {
          case Success<TopupPaymentResponseDto>():
            {
              topupPaymentResponseDto = res.data;
              notifyListeners();
            }
          case Failure<TopupPaymentResponseDto>():
            {
              throw res;
            }
        }
      });
    } catch (e) {
      ErrorHandler.handleError(e);
    }
  }

  // Telco Bundles

  late final telcoBundleRepo = TelcoBundleRepositoryImpl(
    TelcoBundleApiService(dio),
  );

  TelcoBundleListDetailResponseDto? telcoBundleListDetailResponseDto;

  Future<void> getTelcoBundleDetails() async {
    try {
      await performRequest(() async {
        final res = await telcoBundleRepo.fetchBundleList(
          TelcoBundleListDetailRequestDto(
            offset: '',
            limit: '',
            telcoId: ""
            // billType: TeleCosBillType.prepaid,
          ),
        );
        switch (res) {
          case Success<TelcoBundleListDetailResponseDto>():
            {
              telcoBundleListDetailResponseDto = res.data;
              notifyListeners();
            }
          case Failure<TelcoBundleListDetailResponseDto>():
            {
              throw res;
            }
        }
      });
    } catch (e) {
      ErrorHandler.handleError(e);
    }
  }


}
