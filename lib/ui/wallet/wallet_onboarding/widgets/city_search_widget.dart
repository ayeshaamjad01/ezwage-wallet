import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_cities_list_response_dto.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/controller/city_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // import your provider

Future<CityItemDto?> showCitySelectionSheet(BuildContext context) async {
  return showModalBottomSheet<CityItemDto>(
    context: context,

    useSafeArea: true,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (_) => ChangeNotifierProvider(
      create: (_) => CityListProvider(),
      child: const _CitySelectionSheet(),
    ),
  );
}

class _CitySelectionSheet extends StatefulWidget {
  const _CitySelectionSheet();

  @override
  State<_CitySelectionSheet> createState() => _CitySelectionSheetState();
}

class _CitySelectionSheetState extends State<_CitySelectionSheet> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      final provider = context.read<CityListProvider>();
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        provider.cityListCommand.loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CityListProvider>();

    return SafeArea(
      child: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.7,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Handle / drag indicator
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),

              // Search box
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: TextField(
                  controller: _searchController,
                  onChanged: provider.onSearchChange,
                  decoration: InputDecoration(
                    hintText: "Search city",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              // City list
              ListenableBuilder(
                builder: (context, cmd) {
                  return Expanded(
                    child: RefreshIndicator(
                      backgroundColor: Colors.white,
                      onRefresh: provider.retry,
                      child: ListView.separated(
                        controller: _scrollController,
                        padding: const EdgeInsets.symmetric(horizontal: 16),

                        itemCount:
                            provider.cityListCommand.items.length +
                            (provider.cityListCommand.hasMore ? 1 : 0),
                        itemBuilder: (context, index) {
                          if (index < provider.cityListCommand.items.length) {
                            final city = provider.cityListCommand.items[index];
                            return ListTile(
                              title: Text(city.cityName ?? "Unknown"),
                              trailing: provider.selectedBill == city
                                  ? const Icon(Icons.check, color: Colors.green)
                                  : null,
                              onTap: () {

                                provider.selectBillProvider(city);
                                Navigator.pop(context, city);
                              },
                            );
                          } else {
                            return const Padding(
                              padding: EdgeInsets.all(16),
                              child: Center(child: CircularProgressIndicator()),
                            );
                          }
                        }, separatorBuilder: (BuildContext context, int index) {
                          return Divider();
                      },
                      ),
                    ),
                  );
                },
                listenable: provider.cityListCommand,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
