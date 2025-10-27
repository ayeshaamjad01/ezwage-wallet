import 'package:ezwage/ui/wallet/bill_and_fees/dtos/bill_list_request_dto.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/dtos/bill_list_response_dto.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/repository/bill_payment_repository_impl.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/services/bill_payment_api_service.dart';
import 'package:ezwage/ui/wallet/core/utils/command/paginated_commnd.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/service_locator/dio_dependencies.dart';
import 'package:ezwage/ui/wallet/service_locator/service_locator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class BillListProvider with ChangeNotifier {
  final dio = sL<DigitAPIDio>().dio;

  late final billRepo = BillPaymentRepositoryImpl(BillPaymentApiService(dio));
  late final PaginatedCommand<BillerDto> billerListCommand;

  BillListProvider() {
    initCommand();
  }

  void initCommand() {
    billerListCommand = PaginatedCommand<BillerDto>(
      (offset, limit, search) async {
        final requestDto = BillListRequestDto(
          offset: offset.toString(),
          limit: limit.toString(),
          search: search,
        );

        final response = await billRepo.getBillList(requestDto);

        switch (response) {
          case Success<BillListResponseDto>():
            return response.data.data;
          case Failure<BillListResponseDto>():
            EasyLoading.showToast("Something went wrong");
            return [];
        }
      },
      pageSize: 20,
      debounceDuration: const Duration(milliseconds: 400),
    );
    // load first page
    billerListCommand.loadNextPage();
  }

  void onSearchChange(String value) {
    final search = value.trim().isEmpty ? null : value.trim();
    billerListCommand.loadNextPage(search: search);
  }

  Future<void> retry() async {
    billerListCommand.refresh();
    billerListCommand.loadNextPage(search: billerListCommand.searchText);
  }

  BillerDto? selectedBill;

  void selectBillProvider(BillerDto item) {
    if (selectedBill == item) return;
    selectedBill = item;
    notifyListeners();
  }
}
