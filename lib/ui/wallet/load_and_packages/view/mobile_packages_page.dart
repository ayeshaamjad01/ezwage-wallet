import 'package:ezwage/ui/wallet/core/constants/app_colors.dart';
import 'package:ezwage/ui/wallet/custom_widgets/custom_app_bar.dart';
import 'package:ezwage/ui/wallet/load_and_packages/controller/mobile_package_controller.dart';
import 'package:ezwage/ui/wallet/load_and_packages/controller/telco_bundle_provider.dart';
import 'package:ezwage/ui/wallet/load_and_packages/view/telecos_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_images.dart';
import '../../core/widgets/bottom_loader.dart';
import '../../custom_widgets/custom_svg_image.dart';
import '../../homepage/widgets/image_decorated_container.dart';
import '../../transfer/controller/wallet_transfer_provider.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import '../controller/load_and_package_provider.dart';
import '../widgets/gradient_dropdown_widget.dart';
import '../widgets/mobile_package_card_widget.dart';

class MobilePackagesPage extends StatefulWidget {
  MobilePackagesPage({super.key});

  @override
  State<MobilePackagesPage> createState() => _MobilePackagesPageState();
}

class _MobilePackagesPageState extends State<MobilePackagesPage> {
  @override
  Widget build(BuildContext context) {
    final loadAndPackagesPagePro = Provider.of<LoadAndPackageProvider>(context);
    final walletPro = context.watch<WalletTransferProvider>();

    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.onboardingBg),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              children: [
                50.verticalSpace,
                CustomAppBar(title: "Load & Packages"),
              ],
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(top: 50.h, left: 16.w, right: 16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(text: "Your Balance", color: Colors.black),
                    CustomText(
                      text: "PKR ${walletPro.userProfileRepo.currentProfile?.accountBalance} ",
                      color: AppColors.primaryColor,
                      size: 28.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    20.verticalSpace,
                    ImageDecoratedContainer(
                      imagePath: AppImages.mobilePackagesIcon,
                    ),
                     CustomText(
                      text: "Mobile Packages",
                      color: Colors.black,
                      size: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    20.verticalSpace,
                    Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                        text: " Select Network",
                        size: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    20.verticalSpace,

                    TelecosListView(onItemTap: (item) {

                    },),

                    // Align(
                    //   alignment: Alignment.topLeft,
                    //   child: CustomText(
                    //     text: " Select Network",
                    //     size: 16.sp,
                    //     fontWeight: FontWeight.w600,
                    //   ),
                    // ),
                    // 5.verticalSpace,
                    //
                    // SizedBox(
                    //   height: 40.h,
                    //   child: ListView.builder(
                    //     scrollDirection: Axis.horizontal,
                    //     itemCount: loadAndPackagesPagePro.networkList.length,
                    //     itemBuilder: (context, index) {
                    //       final item =
                    //           loadAndPackagesPagePro.networkList[index];
                    //       return Padding(
                    //         padding: EdgeInsets.symmetric(horizontal: 5.w),
                    //         child: InkWell(
                    //           onTap: () {
                    //             loadAndPackagesPagePro.setSelectedNetwork(item);
                    //           },
                    //           child: Container(
                    //             padding: EdgeInsets.all(10.w),
                    //             width: 100.w,
                    //             decoration: BoxDecoration(
                    //               border: Border.all(
                    //                 color:
                    //                     (loadAndPackagesPagePro
                    //                             .selectedNetwork
                    //                             ?.name ==
                    //                         item.name)
                    //                     ? Colors.black
                    //                     : Colors.grey,
                    //               ),
                    //               borderRadius: BorderRadius.circular(5.r),
                    //             ),
                    //             child: CustomSvgImage(
                    //               assetPath: item.imagePath,
                    //               height: 38.h,
                    //               fit: BoxFit.contain,
                    //             ),
                    //           ),
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
                    15.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GradientDropdownWidget(
                          hint: "Type",
                          items: loadAndPackagesPagePro.types,
                          selectedValue: loadAndPackagesPagePro.selectedType,
                          onChanged: loadAndPackagesPagePro.setType,
                          gradientColors: [
                            AppColors.primaryColor,
                            AppColors.secondaryColor,
                          ],
                        ),
                        8.horizontalSpace,
                        GradientDropdownWidget(
                          hint: "Validity",
                          items: loadAndPackagesPagePro.validity,
                          selectedValue:
                              loadAndPackagesPagePro.selectedValidity,
                          onChanged: loadAndPackagesPagePro.setValidity,
                          gradientColors: [
                            AppColors.primaryColor,
                            AppColors.secondaryColor,
                          ],
                        ),
                        8.horizontalSpace,

                        GradientDropdownWidget(
                          hint: "Price",
                          items: loadAndPackagesPagePro.prices,
                          selectedValue: loadAndPackagesPagePro.selectedPrice,
                          onChanged: loadAndPackagesPagePro.setPrice,
                          gradientColors: [
                            AppColors.primaryColor,
                            AppColors.secondaryColor,
                          ],
                        ),
                      ],
                    ),
                    10.verticalSpace,
                    Consumer<TelcoBundleProvider>(
                      builder: (context, provider, child) {
                        final cmd = provider.teleBundleCommand;
                        return ListenableBuilder(
                          listenable: cmd,
                          builder: (context, c) {
                            return SizedBox(
                              height: 220.h, // Give it a bounded height for horizontal scrolling
                              child: ListView.builder(
                                shrinkWrap: true,
                                controller: _scrollController,

                                itemCount: cmd.items.length + (cmd.hasMore ? 1 : 0),
                                itemBuilder: (context, index) {
                                  if (index == cmd.items.length) {
                                    return const Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Center(child: BottomLoader()),
                                    );
                                  }

                                  final item = cmd.items[index];
                                  return
                                    Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                                    child: MobilePackageCardWidget(
                                      title: item.displayName ?? "",
                                      rightText1: "Rs ${item.price}",
                                      rightText2: "Load Amount",
                                      features: [
                                        PackageFeature(
                                          iconPath: AppImages.phoneIcon,
                                          title: "Minutes",
                                          price: item.onMin.toString(),
                                        ),
                                        PackageFeature(
                                          iconPath: AppImages.messageIcon,
                                          title: "All-net SMS",
                                          price: item.sms.toString(),
                                        ),
                                        PackageFeature(
                                          iconPath: AppImages.internetIcon,
                                          title: "Internet",
                                          price: item.data.toString(),
                                        ),
                                      ],
                                      bottomLeftText: "Validity, ${item.validity}",
                                      bottomButtonText: "Subscribe",
                                      onButtonPressed: () {

                                        final mainProvider = context.read<MobilePackageController>();
                                        mainProvider
                                          ..setSelectedPackage(item)
                                          ..navToNextPage();
                                      },
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),




                  ],
                ),
              ),
            ),
          ),

        ],
      ),
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
      context.read<TelcoBundleProvider>().teleBundleCommand.loadNextPage();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

}
