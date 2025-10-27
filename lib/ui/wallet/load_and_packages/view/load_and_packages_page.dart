import 'package:ezwage/ui/wallet/core/constants/app_colors.dart';
import 'package:ezwage/ui/wallet/core/enums/telecos_bill_type.dart';
import 'package:ezwage/ui/wallet/custom_widgets/custom_app_bar.dart';
import 'package:ezwage/ui/wallet/homepage/controller/wallet_homepage_provider.dart';
import 'package:ezwage/ui/wallet/load_and_packages/view/mobile_packages_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_images.dart';
import '../../core/enums/load_type.dart';
import '../../homepage/model/IconViewModel.dart';
import '../../homepage/widgets/image_decorated_container.dart';
import '../../homepage/widgets/select_again_widget.dart';
import '../../homepage/widgets/transaction_widget.dart';
import '../../transfer/controller/wallet_transfer_provider.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import '../controller/load_and_package_provider.dart';
import '../controller/mobile_package_controller.dart';
import '../controller/mobile_topup_controller.dart';
import '../controller/telco_bundle_provider.dart';
import 'mobile_package_page.dart';
import 'mobile_topup/load_input_contact_page.dart';
import 'mobile_topup/mobile_topup_page.dart';

class LoadAndPackagesPage extends StatelessWidget {
  LoadAndPackagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<IconViewModel> loadAndPackageIcons = [
      IconViewModel(title: 'My favourite', imagePath: AppImages.favouriteIcon),
      IconViewModel(
        title: 'Prepaid Load',
        imagePath: AppImages.prepaidLoadIcon,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider(
                create: (_) => MobileTopUpController(billType: TeleCosBillType.prepaid, pagesLength: 4,),
                child: MobileTopUpPage(billType: TeleCosBillType.prepaid,),
              ),
            ),
          );

        },
      ),
      IconViewModel(
        title: 'Postpaid Bill',
        imagePath: AppImages.postpaidLoadIcon,
        onTap: () {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider(
                create: (_) => MobileTopUpController(billType: TeleCosBillType.prepaid, pagesLength: 4,),
                child:  MobileTopUpPage(billType: TeleCosBillType.postpaid,),
              ),
            ),
          );

        },
      ),
      IconViewModel(
        title: 'Mobile Packages',
        imagePath: AppImages.mobilePackagesIcon,
        onTap: () {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider(
                create: (_) => MobilePackageController( pagesLength: 3,),
                child:  MobilePackagePage(),
              ),
            ),
          );





          //
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => ChangeNotifierProvider(
          //       create: (_) => TelcoBundleProvider(TeleCosBillType.prepaid,),
          //       child:  MobilePackagesPage(),
          //     ),
          //   ),
          // );

        },
      ),
    ];

    var shortestSide = MediaQuery.of(context).size.shortestSide;
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
                    12.verticalSpace,
                    CustomText(text: "Your Balance", color: Colors.black),
                    CustomText(
                      text: "PKR  ${walletPro.userProfileRepo.currentProfile?.accountBalance} ",
                      color: AppColors.primaryColor,
                      size: 28.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    20.verticalSpace,
                    Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                        text: "Mobile Loads & Packages",
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        size: 18.sp,
                      ),
                    ),
                    GridView.builder(
                      padding: const EdgeInsets.all(16),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: loadAndPackageIcons.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4, // 4 columns
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            childAspectRatio: 0.65, // taller items for text
                          ),
                      itemBuilder: (context, index) {
                        final item = loadAndPackageIcons[index];
                        return InkWell(
                          onTap: () {
                            if (item.onTap != null) {
                              item.onTap!();
                            }
                          },
                          child: Column(
                            children: [
                              ImageDecoratedContainer(
                                imagePath: item.imagePath,
                              ),
                              const SizedBox(height: 8),
                              CustomText(
                                text: item.title,
                                size: 12.sp,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                              ),
                            ],
                          ),
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
}
