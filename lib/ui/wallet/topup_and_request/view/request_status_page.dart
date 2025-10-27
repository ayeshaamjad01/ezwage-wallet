import 'dart:io';
import 'package:ezwage/ui/wallet/topup_and_request/controller/topup_request_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../homepage/view/wallet_homepage.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import '../../custom_widgets/custom_svg_image.dart';

class RequestStatusPage extends StatefulWidget {
  final String? payment;
  final String? beneficiaryAccTitle;
  final String? receiverNumber;
  final String? date;
  final String? time;
  final String? referenceNumber;
  final String? fee;
  final String? totalPayment;

  const RequestStatusPage({
    super.key,
    this.payment,
    this.beneficiaryAccTitle,
    this.receiverNumber,
    this.date,
    this.time,
    this.referenceNumber,
    this.fee,
    this.totalPayment,
  });

  @override
  State<RequestStatusPage> createState() => _RequestStatusPageState();
}

class _RequestStatusPageState extends State<RequestStatusPage> {
  final ScreenshotController screenshotController = ScreenshotController();

  Future<void> _shareReceipt() async {
    final image = await screenshotController.capture();
    if (image == null) return;

    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/receipt.png');
    await file.writeAsBytes(image);

    Share.shareXFiles([XFile(file.path)], text: "Here is your payment receipt ✅");
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = AppSizes.screenWidth(context);
    final requestPro = Provider.of<TopUpRequestProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.onboardingBg),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                children: [
                  70.verticalSpace,
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      /// 🔹 Wrap Card in Screenshot
                      Screenshot(
                        controller: screenshotController,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.r),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              50.verticalSpace,
                              CustomText(
                                text: "Request Successful",
                                size: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.greenColor,
                              ),
                              CustomText(
                                text: "Your Request was successful",
                                size: 14.sp,
                                color: Colors.black26,
                              ),
                              30.verticalSpace,
                              CustomText(
                                text: widget.payment ?? "PKR 500.00",
                                size: 28.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                              10.verticalSpace,
                              CustomText(
                                text: "Request From",
                                size: 14.sp,
                                color: Colors.black,
                              ),
                              30.verticalSpace,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomSvgImage(assetPath: AppImages.bankIcon),
                                  12.horizontalSpace,
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: widget.beneficiaryAccTitle ??
                                            requestPro.selectedContact
                                                ?.displayName ??
                                            "",
                                        size: 14.sp,
                                        color: Colors.black,
                                        maxLines: 1,
                                      ),
                                      CustomText(
                                        text: requestPro.selectedContact
                                            ?.phones.firstOrNull?.number ??
                                            "",
                                        size: 14.sp,
                                        color: Colors.black26,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              30.verticalSpace,
                              // Padding(
                              //   padding: EdgeInsets.symmetric(horizontal: 14.w),
                              //   child: Column(
                              //     children: [
                              //       Align(
                              //         alignment: Alignment.bottomLeft,
                              //         child: CustomText(
                              //           text: "Transaction Details",
                              //           size: 18.sp,
                              //           fontWeight: FontWeight.w600,
                              //           color: Colors.black,
                              //         ),
                              //       ),
                              //       10.verticalSpace,
                              //       buildRow("Payment", "PKR ${widget.payment ?? ""}"),
                              //       buildRow("Date", widget.date ?? ""),
                              //       buildRow("Time", widget.time ?? ""),
                              //       buildRow("Reference Number", widget.referenceNumber ?? ""),
                              //       buildRow("Fee", "PKR ${widget.fee ?? ""}"),
                              //       15.verticalSpace,
                              //       buildRow(
                              //         "Total Payment",
                              //         "PKR ${widget.totalPayment}",
                              //         txtSize: 16.sp,
                              //         txtCol: AppColors.primaryColor,
                              //         fontWeight: FontWeight.w700,
                              //       ),
                              //       25.verticalSpace,
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -25,
                        left: (screenWidth / 2 - 40.w),
                        child: Container(
                          padding: EdgeInsets.all(6.w),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 30.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// 🔹 Bottom Buttons
          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              minimum: EdgeInsets.only(bottom: 16.h, left: 16.w, right: 16.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: _shareReceipt,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: Center(
                        child: CustomText(
                          text: "Share",
                          size: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  10.verticalSpace,
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => WalletHomepage()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100.r),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: Center(
                        child: CustomText(
                          text: "Back to home",
                          size: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.buttonBgColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildRow(
      String title,
      String value, {
        Color? txtCol,
        FontWeight? fontWeight,
        double? txtSize,
      }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomText(
            text: title,
            size: txtSize ?? 14.sp,
            color: txtCol ?? Colors.black26,
            fontWeight: fontWeight,
          ),
        ),
        Expanded(
          child: CustomText(
            text: value,
            size: txtSize ?? 14.sp,
            fontWeight: fontWeight ?? FontWeight.w600,
            color: txtCol ?? Colors.black,
          ),
        ),
      ],
    );
  }
}
