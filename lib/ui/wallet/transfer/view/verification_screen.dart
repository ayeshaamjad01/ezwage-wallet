
import 'package:ezwage/ui/wallet/core/constants/app_images.dart';
import 'package:ezwage/ui/wallet/transfer/view/kyc_question_verification_view.dart';
import 'package:ezwage/ui/wallet/transfer/view/otp_verification_view.dart';
import 'package:ezwage/ui/wallet/transfer/view_models/verification_type_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationScreen extends StatefulWidget {
  final VerificationTypeViewModel viewModel;

  const VerificationScreen({super.key, required this.viewModel});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    return Scaffold(
      body: SafeArea(
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.onboardingBg),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back_sharp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/white_logo_ez_wage.png',
                              height: shortestSide > 600 ? 70.sp : 70,
                              width: shortestSide > 600 ? 120.sp : 120,
                            ),
                            7.verticalSpace,
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              12.verticalSpace,
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30.r),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 30.h,
                    horizontal: 20.w,
                  ),
                  child: switch (widget.viewModel) {
                    OTPVerificationViewModel model => OtpVerificationView(
                      viewModel: model,
                    ),
                    kycQuestionVerificationViewModel model =>
                      KycQuestionVerificationView(viewModel: model),
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum VerificationType { otp, kyc_answer }
