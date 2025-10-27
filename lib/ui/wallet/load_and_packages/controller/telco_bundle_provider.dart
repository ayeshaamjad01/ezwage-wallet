import 'package:ezwage/ui/wallet/core/enums/telecos_bill_type.dart';
import 'package:ezwage/ui/wallet/core/utils/command/paginated_commnd.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/telco_bundle_list_detail_request_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/telco_bundle_list_detail_response_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/repository/telco_bundle_repository_impl.dart';
import 'package:ezwage/ui/wallet/load_and_packages/services/telco_bundle_api_service.dart';
import 'package:ezwage/ui/wallet/service_locator/dio_dependencies.dart';
import 'package:ezwage/ui/wallet/service_locator/service_locator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class TelcoBundleProvider with ChangeNotifier {
  final TeleCosBillType billType;
  final dio = sL<DigitAPIDio>().dio;
  late final repo = TelcoBundleRepositoryImpl(TelcoBundleApiService(dio));

  late final PaginatedCommand<BundleDetailDto> teleBundleCommand;

  TelcoBundleProvider(this.billType) {
    initCommand();
  }

  void initCommand() {

    teleBundleCommand = PaginatedCommand<BundleDetailDto>(
          (offset, limit, search) async {
        final requestDto = TelcoBundleListDetailRequestDto(
          offset: "0",
          limit: limit.toString(),
          search: search,
          telcoId: "1360"
        );

        final response = await repo.fetchBundleList(requestDto);

        switch (response) {
          case Success<TelcoBundleListDetailResponseDto>():
            return response.data.data;
          case Failure<TelcoBundleListDetailResponseDto>():
            EasyLoading.showToast("Something went wrongg");
            return [];
        }
      },
      pageSize: 20,
      debounceDuration: const Duration(milliseconds: 400),
    );

    // load first page
    teleBundleCommand.loadNextPage();
  }

  void onSearchChange(String value) {
    final search = value.trim().isEmpty ? null : value.trim();
    teleBundleCommand.loadNextPage(search: search);
  }

  Future<void> retry() async {
    teleBundleCommand.refresh();
    teleBundleCommand.loadNextPage(search: teleBundleCommand.searchText);
  }

  BundleDetailDto? selectedTelecos;

  void selectTelecos(BundleDetailDto item) {
    if(  selectedTelecos ==  item)return;
    selectedTelecos = item;
    notifyListeners();
  }
}
