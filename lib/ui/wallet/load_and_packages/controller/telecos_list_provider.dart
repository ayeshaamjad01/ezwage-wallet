import 'package:ezwage/ui/wallet/core/enums/telecos_bill_type.dart';
import 'package:ezwage/ui/wallet/core/utils/command/paginated_commnd.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/telco_bundle_list_detail_request_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/telco_bundle_list_detail_response_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/repository/telco_bundle_repository_impl.dart';
import 'package:ezwage/ui/wallet/load_and_packages/services/telco_bundle_api_service.dart';
import 'package:ezwage/ui/wallet/service_locator/dio_dependencies.dart';
import 'package:ezwage/ui/wallet/service_locator/service_locator.dart';
import 'package:ezwage/ui/wallet/topup_and_request/dtos/telco_list_request_dto.dart';
import 'package:ezwage/ui/wallet/topup_and_request/repository/topup_repository_impl.dart';
import 'package:ezwage/ui/wallet/topup_and_request/services/topup_api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../topup_and_request/dtos/telco_list_response_dto.dart';

class TelecosListProvider with ChangeNotifier {
  final TeleCosBillType billType;
  final dio = sL<DigitAPIDio>().dio;
  late final repo = TopupRepositoryImpl(TopupApiService(dio));

  late final PaginatedCommand<TelcoDataDto> teleListCommand;

  TelecosListProvider(this.billType) {
    initCommand();
  }

  void initCommand() {
    teleListCommand = PaginatedCommand<TelcoDataDto>(
      (offset, limit, search) async {
        final requestDto = TelcoListRequestDto(offset: "0", limit: limit.toString(), search: search, type: billType);
        // TelcoBundleListDetailRequestDto(
        //   offset: offset.toString(),
        //   limit: limit.toString(),
        //   billType: billType,
        //   search: search,
        // );

        final response = await repo.getTelcoList(requestDto);

        switch (response) {
          case Success<TelcoListResponseDto>():
            return response.data.data ?? [];
          case Failure<TelcoListResponseDto>():
            EasyLoading.showToast("Something went wrong");
            return [];
        }
      },
      pageSize: 20,
      debounceDuration: const Duration(milliseconds: 400),
    );

    // load first page
    teleListCommand.loadNextPage();
  }

  void onSearchChange(String value) {
    final search = value.trim().isEmpty ? null : value.trim();
    teleListCommand.loadNextPage(search: search);
  }

  Future<void> retry() async {
    teleListCommand.refresh();
    teleListCommand.loadNextPage(search: teleListCommand.searchText);
  }

  TelcoDataDto? selectedTelecos;

  void selectTelecos(TelcoDataDto item) {
    if(  selectedTelecos ==  item)return;
    selectedTelecos = item;
    notifyListeners();
  }
}
