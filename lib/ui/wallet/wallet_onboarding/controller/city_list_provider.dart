import 'package:ezwage/ui/wallet/core/utils/command/paginated_commnd.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/service_locator/dio_dependencies.dart';
import 'package:ezwage/ui/wallet/service_locator/service_locator.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_cities_list_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_cities_list_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/remote_services/cms_management_api_service.dart';
import 'package:ezwage/ui/wallet/transfer/repositories/cms_management_repository_impl.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class CityListProvider with ChangeNotifier {
  final dio = sL<DigitAPIDio>().dio;

  late final billRepo = CmsManagementRepositoryImpl(
    CmsManagementApiService(dio),
  );
  late final PaginatedCommand<CityItemDto> cityListCommand;

  CityListProvider() {
    initCommand();
  }

  void initCommand() {
    cityListCommand = PaginatedCommand<CityItemDto>(
      (offset, limit, search) async {
        final requestDto = GetCitiesListRequestDto(
          offset: offset.toString(),
          limit: limit.toString(),
          search: search,
        );

        final response = await billRepo.getCitiesList(requestDto);

        switch (response) {
          case Success<GetCitiesListResponseDto>():
            return response.data.data;
          case Failure<GetCitiesListResponseDto>():
            EasyLoading.showToast("Something went wrong");
            return [];
        }
      },
      pageSize: 20,
      debounceDuration: const Duration(milliseconds: 400),
    );
    // load first page
    cityListCommand.loadNextPage();
  }

  void onSearchChange(String value) {
    final search = value.trim().isEmpty ? null : value.trim();
    cityListCommand.loadNextPage(search: search);
  }

  Future<void> retry() async {
    cityListCommand.refresh();
    cityListCommand.loadNextPage(search: cityListCommand.searchText);
  }

  CityItemDto? selectedBill;

  void selectBillProvider(CityItemDto item) {
    if (selectedBill == item) return;
    selectedBill = item;
    notifyListeners();
  }
}
