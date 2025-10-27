import 'package:ezwage/ui/wallet/core/widgets/bottom_loader.dart';
import 'package:ezwage/ui/wallet/load_and_packages/controller/telecos_list_provider.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/telco_bundle_list_detail_response_dto.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:ezwage/ui/wallet/custom_widgets/custom_svg_image.dart';

import '../../topup_and_request/dtos/telco_list_response_dto.dart';

class TelecosListView extends StatefulWidget {
  final void Function(TelcoDataDto item)? onItemTap;
  const TelecosListView({super.key, this.onItemTap,});

  @override
  State<TelecosListView> createState() => _TelecosListViewState();
}

class _TelecosListViewState extends State<TelecosListView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TelecosListProvider>(
      builder: (context, provider, child) {
        final cmd = provider.teleListCommand;
        return ListenableBuilder(
          builder: (context, c) {
            return SizedBox(
              height: 40.h,
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: cmd.items.length + (cmd.hasMore ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == cmd.items.length) {
                    return const Padding(
                      padding: EdgeInsets.all(16),
                      child: Center(child: BottomLoader()),
                    );
                  }
            
                  final item = cmd.items[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: InkWell(
                      onTap: () {
                        provider.selectTelecos(item);
                        if (widget.onItemTap != null) {
                          widget.onItemTap!(item);
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 100.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                provider.selectedTelecos?.telcoName ==
                                    item.telcoName
                                ? Colors.black
                                : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child:
                        // item.image == null
                        //     ? Text("image")
                        //     :
                        CustomText(text: item.telcoName ?? "zs", color: Colors.black,)
                        // CustomSvgImage(
                        //         assetPath: item.image!,
                        //         height: 38.h,
                        //         fit: BoxFit.contain,
                        //       ),
                      ),
                    ),
                  );
                },
              ),
            );
          }, listenable: cmd,
        );
      },
    );
  }

  final _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<TelecosListProvider>().teleListCommand.loadNextPage();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
