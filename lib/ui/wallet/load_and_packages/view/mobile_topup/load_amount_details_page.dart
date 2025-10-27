import 'package:ezwage/ui/wallet/core/enums/load_type.dart';
import 'package:ezwage/ui/wallet/core/enums/reciept_type.dart';
import 'package:ezwage/ui/wallet/core/extensions/date_format_extension.dart';
import 'package:ezwage/ui/wallet/load_and_packages/controller/mobile_topup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';
import '../../../custom_widgets/custom_app_bar.dart';
import '../../../custom_widgets/custom_svg_image.dart';
import '../../../wallet_onboarding/widgets/custom_button_widget.dart';
import '../../../wallet_onboarding/widgets/custom_text.dart';
import '../../../wallet_onboarding/widgets/textfield_with_title.dart';
import '../../controller/load_and_package_provider.dart';
import '../load_otp_page.dart';

class LoadAmountDetailsPage extends StatelessWidget {
  LoadAmountDetailsPage({super.key});

  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    final loadAndPackagesPagePro = Provider.of<LoadAndPackageProvider>(context);
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
                    CustomText(text: "Amount Load", color: Colors.black),
                    10.verticalSpace,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: 'PKR ${context.watch<MobileTopUpController>().amount}',
                          size: 25.sp,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                        8.horizontalSpace,
                        Icon(Icons.edit),
                      ],
                    ),
                    20.verticalSpace,
                    TextFieldWithTitle(
                      title: "Recipient Phone Number",
                      readOnly: true,
                      hintText: context.watch<MobileTopUpController>().consumerNumber,
                      controller: phoneController,
                    ),
                    30.verticalSpace,
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Recipient Network",
                            size: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          10.verticalSpace,
                          Container(
                            padding: EdgeInsets.all(10.w),
                            width: 100.w,
                            decoration: BoxDecoration(
                              border: Border.all(color: (Colors.black)),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: CustomSvgImage(
                              assetPath: AppImages.zongLogo,
                              height: 20.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          20.verticalSpace,

                          getTitleAndValue("My Balance", "12123"),
                          10.verticalSpace,
                          // (walletType == WalletType.postpaid)
                          //     ? Row(
                          //         children: [
                          //           Expanded(
                          //             child: getTitleAndValue(
                          //               "Billing Month",
                          //               loadAndPackagesPagePro
                          //                   .postpaidBillingMonth
                          //                   .toString(),
                          //             ),
                          //           ),
                          //           Expanded(
                          //             child: getTitleAndValue(
                          //               "Due Date",
                          //               loadAndPackagesPagePro.postpaidDueDate!
                          //                   .toDdMmYyyy(),
                          //             ),
                          //           ),
                          //         ],
                          //       )
                          //     : SizedBox(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Total",
                        size: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      CustomText(
                        text: context.watch<MobileTopUpController>().amount,
                        size: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                  10.verticalSpace,
                  CustomButtonWidget(
                    radius: 80,
                    title: "Continue",
                    onPressed: () {
                      context.read<MobileTopUpController>().getTopUpInquiry();
                    },
                    backgroundColor: AppColors.buttonBgColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getTitleAndValue(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: title, size: 16.sp, fontWeight: FontWeight.w700),
        6.verticalSpace,
        CustomText(text: value, size: 16.sp),
      ],
    );
  }
}
