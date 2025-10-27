import 'package:ezwage/ui/wallet/bill_and_fees/controller/bill_payment_provider.dart';
import 'package:ezwage/ui/wallet/topup_and_request/view/ready_cash_page.dart';
import 'package:ezwage/ui/wallet/topup_and_request/view/request_money_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../core/enums/load_type.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../../custom_widgets/custom_svg_image.dart';
import '../../homepage/model/IconViewModel.dart';
import '../../homepage/widgets/image_decorated_container.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import 'deposit_via_bank_page.dart';

class TopUpOptionsPage extends StatelessWidget {
  const TopUpOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<IconViewModel> topUpOptionsList = [
      IconViewModel(
        title: 'Deposit via Debit Card',
        imagePath: AppImages.debitCardIcon,
      ),
      IconViewModel(
        title: 'Request Money',
        imagePath: AppImages.requestMoneyIcon,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RequestMoneyPage()),
          );
        },
      ),
      IconViewModel(
        title: 'Readycash',
        imagePath: AppImages.readyCashIcon,
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => ReadyCashPage()),
          // );
        },
      ),
      IconViewModel(
        title: 'Deposit via Bank',
        imagePath: AppImages.depositCardIcon,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DepositViaBankPage()),
          );
        },
      ),
    ];

    // final transferPro = Provider.of<BillPaymentProvider>(context);

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
                CustomAppBar(title: "Top Up"),
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
                    CustomText(
                      text: "Add Money",
                      fontWeight: FontWeight.w500,
                      size: 16.sp,
                    ),
                    CustomText(
                      text: "Select an Option",
                      color: Colors.grey,
                      size: 16.sp,
                    ),
                    20.verticalSpace,
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: topUpOptionsList.length,
                      itemBuilder: (context, index) {
                        final option = topUpOptionsList[index];
                        return InkWell(
                          onTap: () {
                            if(option.onTap != null){
                              option.onTap!();
                            }
                          },
                          child: Row(
                            children: [
                              CustomSvgImage(
                                assetPath: option.imagePath,
                                height: 20.h,
                                width: 20.w,
                              ),
                              12.horizontalSpace,
                              CustomText(
                                text: option.title,
                                size: 16.sp,
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: Divider(thickness: .8),
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
