import 'dart:async';

import 'package:ezwage/ui/wallet/authentication/dtos/auth_response_dto.dart';
import 'package:ezwage/ui/wallet/authentication/repository/authentication_repository.dart';

import 'package:ezwage/ui/wallet/core/constants/enviroment.dart';
import 'package:ezwage/ui/wallet/core/utils/dio/digit_token_interceptor.dart';
import 'package:ezwage/ui/wallet/core/utils/easy_loading.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/core/utils/secure_storage.dart';
import 'package:ezwage/ui/wallet/service_locator/service_locator.dart';
import 'package:flutter/cupertino.dart';

import '../../../account_statment/dtos/customer_detail_request_dto.dart';
import '../../../account_statment/dtos/customer_detail_response_dto.dart';
import '../../../account_statment/dtos/customer_mini_statement_request_dto.dart';
import '../../../account_statment/dtos/customer_mini_statement_response_dto.dart';
import '../../../account_statment/dtos/customer_statement_request_dto.dart';
import '../../../account_statment/dtos/customer_statement_response_dto.dart';
import '../../../account_statment/remote_services/customer_api_service.dart';
import '../../../account_statment/repositories/customer_statement_repository_impl.dart';
import '../../core/repositories/user_profile_repositories.dart';
import '../../core/utils/error_handler.dart';
import '../../service_locator/dio_dependencies.dart';

class WalletHomepageProvider with ChangeNotifier, EasyLoadingUtil {
  final SessionService sessionService;
  SessionStatus sessionStatus = SessionStatus.initial;

  final dio = sL<DigitAPIDio>().dio;

  WalletHomepageProvider(this.sessionService) {
    initStream();
  }

  StreamSubscription? sessionStateStream;

  Future<void> initStream() async {
    sessionStateStream = sessionService.statusStream().listen((event) {
      if (sessionStatus != event) {
        sessionStatus = event;
        notifyListeners();
      }
    });
  }
  final userProfileRepo = sL<UserProfileRepository>();


  bool _isBalanceVisible = true;

  bool get isVisible => _isBalanceVisible;

  void toggleBalanceVisibility() {
    _isBalanceVisible = !_isBalanceVisible;
    notifyListeners();
  }

  // Customer Details & Statements
  // final customerStatementRepo = sL<CustomerStatementRepository>();

  late final customerStatementRepo = CustomerStatementRepositoryImpl(
    CustomerApiService(dio),
  );


  CustomerDetailResponseDto? customerDetailResponseDto;
  Future<void> getCustomerDetail() async {
    print("customerDetailResponseDtozx ${customerDetailResponseDto?.customerId}");

    try {
      await performRequest(() async {
        final res = await customerStatementRepo.getCustomerDetail(
          CustomerDetailRequestDto(mobileNo: userProfileRepo.currentProfile?.mobileNo ?? "03987816680"),
        );
        switch (res) {
          case Success<CustomerDetailResponseDto>():
            {
              customerDetailResponseDto = res.data;
              print("customerDetailResponseDtozx ${customerDetailResponseDto?.customerId}");
              notifyListeners();

            }
          case Failure<CustomerDetailResponseDto>():
            {
              throw res;
            }
        }
      });
    } catch (e) {
      ErrorHandler.handleError(e);
    }
  }



  CustomerStatementResponseDto? customerStatementResponseDto;

  Future<void> getCustomerStatement() async {


    try {
      await performRequest(() async {
        final res = await customerStatementRepo.getCustomerStatement(
          CustomerStatementRequestDto(
            mobile: userProfileRepo.currentProfile?.mobileNo ?? "03987816680",
            startDate: "2024-01-01",
            endDate: "2025-08-30",
          ),
        );
        switch (res) {
          case Success<CustomerStatementResponseDto>():
            {
              customerStatementResponseDto = res.data;
              notifyListeners();

            }
          case Failure<CustomerStatementResponseDto>():
            {
              throw res;
            }
        }
      });
    } catch (e) {
      ErrorHandler.handleError(e);
    }


  }


  CustomerMiniStatementResponseDto? customerMiniStatementResponseDto;
  Future<void> getCustomerMiniStatement() async {


    try {
      await performRequest(() async {
        final res = await customerStatementRepo.getCustomerMiniStatement(
          CustomerMiniStatementRequestDto(
            mobileNo: userProfileRepo.currentProfile?.mobileNo ?? "03987816680",
            customerId: userProfileRepo.currentProfile?.customerId.toString() ?? "", //"customerId",
          ),
        );
        switch (res) {
          case Success<CustomerMiniStatementResponseDto>():
            {
              customerMiniStatementResponseDto = res.data;
              notifyListeners();

            }
          case Failure<CustomerMiniStatementResponseDto>():
            {
              throw res;
            }
        }
      });
    } catch (e) {
      ErrorHandler.handleError(e);
    }

  }

  @override
  void dispose() {
    sessionStateStream?.cancel();
    super.dispose();
  }
}
