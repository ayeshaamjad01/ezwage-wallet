import 'package:ezwage/ui/wallet/core/constants/app_images.dart' show AppImages;
import 'package:ezwage/ui/wallet/core/enums/wallet_type.dart';
import 'package:ezwage/ui/wallet/custom_widgets/custom_app_bar.dart';
import 'package:ezwage/ui/wallet/custom_widgets/custom_svg_image.dart';
import 'package:ezwage/ui/wallet/homepage/controller/wallet_homepage_provider.dart';
import 'package:ezwage/ui/wallet/homepage/widgets/image_decorated_container.dart';
import 'package:ezwage/ui/wallet/transfer/controller/transfer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';

import '../../core/constants/app_colors.dart';

import '../../custom_widgets/app_bottom_sheet.dart';
import '../../homepage/controller/wallet_homepage_provider.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import '../widgets/banks_content_widget.dart';
import '../widgets/other_wallets_content.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    final transferPro = Provider.of<TransferProvider>(context);
    final walletTransferPro = Provider.of<TransferProvider>(context);
    final bankTransferPro = Provider.of<TransferProvider>(context);

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
                CustomAppBar(title: "Transfer"),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          getIconContainer(
                            "Transfer to the another wallet",
                            AppImages.peopleIcon,
                            () {
                              transferPro.setWallet(WalletType.otherWallets);
                            },
                            transferPro.selectedWallet.index == 0,
                          ),
                          8.horizontalSpace,
                          getIconContainer(
                            "Transfer to Bank",
                            AppImages.bankIcon,
                            () {
                              transferPro.setWallet(WalletType.bankWallets);
                            },
                            transferPro.selectedWallet.index == 1,
                            txtCol: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    12.verticalSpace,
                    transferPro.selectedWallet.index == 0
                        ? WalletsContentWidget()
                        : BankContentWidget(),
                    20.verticalSpace,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getIconContainer(
    String title,
    String iconPath,
    VoidCallback onTap,
    bool isSelected, {
    Color? txtCol,
  }) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          padding: EdgeInsets.all(20.h),
          decoration: BoxDecoration(
            color: (!isSelected) ? AppColors.lightGreyColor : null,
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
            gradient: (isSelected)
                ? LinearGradient(
                    colors: [AppColors.primaryColor, AppColors.secondaryColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                : null,
          ),
          child: Column(
            children: [
              CustomSvgImage(
                assetPath: iconPath,
                height: 25.h,
                color: (!isSelected) ? AppColors.primaryColor : Colors.white,
              ),
              20.verticalSpace,
              CustomText(
                text: title,
                color: (!isSelected) ? Colors.black : Colors.white,
                maxLines: 5,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
