


import 'package:ezwage/ui/wallet/bill_and_fees/controller/bill_list_provider.dart';
import 'package:ezwage/ui/wallet/homepage/model/IconViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../core/enums/load_type.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../../custom_widgets/custom_svg_image.dart';
import '../../homepage/widgets/image_decorated_container.dart';
import '../../wallet_onboarding/widgets/custom_button_widget.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import '../../wallet_onboarding/widgets/textfield_with_title.dart';
import '../controller/bill_payment_provider.dart';
import 'fetched_bill_page.dart';

class InputProviderNumberPage extends StatelessWidget {
  final BillType? billType;
  final IconViewModel? iconViewModel;
  InputProviderNumberPage({super.key, this.billType, this.iconViewModel});

  final phoneController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    final billPaymentPro = Provider.of<BillPaymentProvider>(context);
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
                    ImageDecoratedContainer(
                      imagePath: AppImages.prepaidLoadIcon,
                    ),
                    5.verticalSpace,
                    CustomText(
                      text: iconViewModel?.title ?? "",
                      color: Colors.black,
                      size: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    20.verticalSpace,
                    Row(
                      children: [
                        Expanded(
                          child: TextFieldWithTitle(
                            title: "Enter Reference Number",
                            hintText: "Enter 14 digits ${iconViewModel?.title} reference number",
                            controller: phoneController,
                          ),
                        ),
                        10.horizontalSpace,
                        CustomSvgImage(
                          assetPath: AppImages.scanIcon,
                          height: 20.h,
                          width: 20.w,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                    20.verticalSpace,



                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: CustomButtonWidget(
                radius: 80,
                title: "Fetch Bill",
                onPressed: () {
                  final selectedBill = context
                      .read<BillListProvider>()
                      .selectedBill;
                  final number = phoneController.text.trim();
                  final isValid = number.isNotEmpty && selectedBill != null;
                  if (isValid) {
                    final mainProvider = context.read<BillPaymentProvider>();
                    mainProvider
                      ..setConsumerNumber(number)
                      ..setBillId(selectedBill.billerId ??0, selectedBill);
                  }
                  context.read<BillPaymentProvider>().getBillTitle();

                  // Navigator.push(context, MaterialPageRoute(builder: (context) => FetchedBillPage(billType: billType ?? BillType.education, iconViewModel: iconViewModel,),),);
                },
                backgroundColor: AppColors.buttonBgColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}