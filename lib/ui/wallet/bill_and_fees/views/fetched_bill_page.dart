import 'package:ezwage/ui/wallet/homepage/model/IconViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../core/enums/load_type.dart';
import '../../core/enums/reciept_type.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../../custom_widgets/custom_svg_image.dart';
import '../../homepage/widgets/image_decorated_container.dart';
import '../../load_and_packages/view/load_otp_page.dart';
import '../../wallet_onboarding/widgets/custom_button_widget.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import '../../wallet_onboarding/widgets/textfield_with_title.dart';
import '../controller/bill_payment_provider.dart';

class FetchedBillPage extends StatelessWidget {
  final BillType? billType;
  final IconViewModel? iconViewModel;
  FetchedBillPage({super.key, this.billType, this.iconViewModel});

  final phoneController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    final billPaymentPro = Provider.of<BillPaymentProvider>(context);
    final billInquiryResponse = context.watch<BillPaymentProvider>().billInquiryResponseDto?.data;
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
                      text: "PKR ${billPaymentPro.userProfileRepo.currentProfile?.accountBalance} ",
                      color: AppColors.primaryColor,
                      size: 28.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    20.verticalSpace,
                    TextFieldWithTitle(
                      title: "Reference Number",
                      hintText: context.watch<BillPaymentProvider>().consumerNumber,
                      controller: phoneController,
                      readOnly: true,
                    ),
                    20.verticalSpace,

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: CustomText(
                            text: "Service Provider",
                            size: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        8.verticalSpace,
                        CustomSvgImage(assetPath: AppImages.electricity),
                        8.verticalSpace,
                        buildTitleValueText("Customer Name", billInquiryResponse?.consumerName ?? ""),
                        8.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildTitleValueText("Billing Month", billInquiryResponse?.billMonth ?? "December"),
                            buildTitleValueText("Billing Date", billInquiryResponse?.billDueDate  ?? "30/09/2025"),
                          ],
                        ),
                        8.verticalSpace,
                        buildTitleValueText("Payable After due date", "PKR ${billInquiryResponse?.amountAfterDueDate}"),
                        8.verticalSpace,
                        buildTitleValueText("My Balance", "PKR 24.321"),
                      ],
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
                        text: "RS ${billInquiryResponse?.totalAmount}",
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
                      // payBill(senderAccount, customerId,);
                      context.read<BillPaymentProvider>().payBill(billInquiryResponse?.consumerNumber ?? "", billInquiryResponse?.consumerNumber ?? "", context);

                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //         LoadOtpPage(receiptType: (billType == BillType.education) ? ReceiptType.fees : ReceiptType.bill,),
                      //   ),
                      // );
                    },
                    backgroundColor: AppColors.primaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  buildTitleValueText(String title, String value){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          size: 14.sp,
          fontWeight: FontWeight.w700,
        ),
        4.verticalSpace,
        CustomText(
          text: value,
          size: 14.sp,
        ),
      ],
    );
  }
}