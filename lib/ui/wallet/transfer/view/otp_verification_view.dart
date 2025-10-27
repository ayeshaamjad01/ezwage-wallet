import 'dart:async';

import 'package:ezwage/ui/wallet/core/constants/app_colors.dart';
import 'package:ezwage/ui/wallet/transfer/view_models/verification_type_view_model.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_button_widget.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/dismiss_on_captured_taps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationView extends StatefulWidget {
  final OTPVerificationViewModel viewModel;

  const OtpVerificationView({super.key, required this.viewModel});

  @override
  State<OtpVerificationView> createState() => _OtpVerificationViewState();
}

class _OtpVerificationViewState extends State<OtpVerificationView> {
  Timer? expiryTimer;
  String? otp;
  int remainingTime = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      remainingTime = widget.viewModel.otpExpireIn?.inSeconds ?? 0;
      _startTimer();
    });
  }

  void _startTimer() {
    expiryTimer?.cancel();
    expiryTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingTime > 0) {
        remainingTime--;
      } else {
        expiryTimer?.cancel();
      }
      setState(() {});
    });
  }

  String get _formattedTime {
    final minutes = (remainingTime ~/ 60).toString().padLeft(2, '0');
    final seconds = (remainingTime % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    final vm = widget.viewModel;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Verify the sent OTP",
          fontWeight: FontWeight.w700,
          size: 18.sp,
        ),
        SizedBox(height: 10.h),
        SizedBox(
          width: double.infinity,
          child: Pinput(
            length: 6,
            defaultPinTheme: PinTheme(
              // width: 50,
              height: 60,
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
            ),
            focusedPinTheme: PinTheme(
              // width: 50,
              height: 60,
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
            ),
            onChanged: (value) {
              otp = value;
              setState(() {});
            },
            onCompleted: (pin) {},
          ),
        ),
        10.verticalSpace,
        if (expiryTimer?.isActive == true)
          Center(
            child: CustomText(
              text: _formattedTime,
              fontWeight: FontWeight.w400,
              size: 15.sp,
            ),
          )
        else
          Center(
            child: TextButton(
              onPressed: () async {
                final duration = await widget.viewModel.onResendTap();
                remainingTime = duration?.inSeconds ?? 0;
                _startTimer();
              },
              child: Text("Resend OTP"),
            ),
          ),
        Expanded(child: SizedBox()),
        DismissOnCapturedTaps(
          child: Column(
            children: [
              CustomButtonWidget(
                title: "Confirm",
                onPressed: () {
                  if (otp == null || (otp?.length ?? 0) < 6) {
                    EasyLoading.showToast("Please enter a valid OTP");
                    return;
                  }
                  vm.onSubmit.call(otp!);
                },
                backgroundColor: AppColors.buttonBgColor,
              ),
              10.verticalSpace,
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    expiryTimer?.cancel();
    super.dispose();
  }
}
