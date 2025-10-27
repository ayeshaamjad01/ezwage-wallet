import 'package:ezwage/ui/wallet/bill_and_fees/controller/bill_payment_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../core/enums/load_type.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../../custom_widgets/custom_svg_image.dart';
import '../../homepage/widgets/image_decorated_container.dart';
import '../../transfer/view/transfer_status_page.dart';
import '../../wallet_onboarding/widgets/custom_button_widget.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import '../../wallet_onboarding/widgets/textfield_with_title.dart';

class ReviewReadyCashPage extends StatelessWidget {
  ReviewReadyCashPage({super.key});
  final TextEditingController referenceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final transferPro = Provider.of<BillPaymentProvider>(context);

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
                CustomAppBar(title: "Review ReadyCash"),
              ],
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(top: 50.h, left: 12.w, right: 14.w),
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
                    CustomText(text: "ReadyCash Amount", size: 16.sp),
                    CustomText(
                      text: "PKR 500.00",
                      size: 28.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryColor,
                    ),
                    15.verticalSpace,
                    TextFieldWithTitle(
                      title: "Reference Number",
                      hintText: "123124242354353",
                      controller: referenceController,
                    ),
                    20.verticalSpace,
                    buildTitleValueWidget(
                      "Account Holder Name",
                      "Ali Ahmad",
                    ),
                    8.verticalSpace,
                    buildTitleValueWidget(
                      "Due Date",
                      "30/09/2025",
                    )

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
                mainAxisSize: MainAxisSize
                    .min,
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
                        text: "RS 500.00",
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TransferStatusPage(),
                        ),
                      );
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

  buildTitleValueWidget(String title, String value) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: title, fontWeight: FontWeight.w700, size: 16.sp,),
          CustomText(text: value,size: 16.sp,),
        ],
      ),
    );
  }
}
