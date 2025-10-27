import 'package:ezwage/ui/wallet/wallet_onboarding/view/create_pin_screen/account_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';

import '../../../core/constants/app_colors.dart';
import '../../controller/wallet_onboarding_provider.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/custom_text.dart';

class CreatePinScreen extends StatefulWidget {
  const CreatePinScreen({super.key});

  @override
  State<CreatePinScreen> createState() => _CreatePinScreenState();
}

class _CreatePinScreenState extends State<CreatePinScreen> {
  final pinC = TextEditingController();
  final rePinC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WalletOnboardingProvider walletOnboardingPro =
        Provider.of<WalletOnboardingProvider>(context);
    return Consumer<AccountPinController>(
      builder: (context, provider, child) {
        return Padding(
          padding: EdgeInsets.all(24),

          child: CustomScrollView(
            physics: const ScrollPhysics(),
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate.fixed([
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Pin Guidelines",
                        fontWeight: FontWeight.w700,
                        size: 18.sp,
                      ),
                      buildRow(
                        "PIN should not be a sequential number e.g. “12345” etc.",
                      ),
                      3.verticalSpace,
                      buildRow(
                        "PIN should not be a same number e.g. “11111” etc.",
                      ),
                      SizedBox(height: 20.h),
                      CustomText(
                        text: "Enter 5 digits Pin",
                        fontWeight: FontWeight.w700,
                        size: 18.sp,
                      ),
                      SizedBox(height: 8.h),
                      Pinput(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        controller: pinC,
                        length: 5,
                        defaultPinTheme: PinTheme(
                          width: 60,
                          height: 60,
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                        ),
                        focusedPinTheme: PinTheme(
                          width: 50,
                          height: 60,
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                        onChanged: (value) {},
                        onCompleted: (pin) {
                          print('OTP Entered: $pin');
                        },
                      ),
                      SizedBox(height: 20.h),
                      CustomText(
                        text: "Re-enter 5 Digits Pin",
                        fontWeight: FontWeight.w700,
                        size: 18.sp,
                      ),
                      SizedBox(height: 8.h),

                      Pinput(
                        controller: rePinC,
                        length: 5,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        defaultPinTheme: PinTheme(
                          width: 60,
                          height: 60,
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                        ),
                        focusedPinTheme: PinTheme(
                          width: 50,
                          height: 60,
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                        onChanged: (value) {},
                        onCompleted: (pin) {
                          print('OTP Entered: $pin');
                        },
                      ),
                      // Expanded(child: SizedBox()),
                      // CustomButtonWidget(
                      //   title: "Continue",
                      //   onPressed: () {
                      //     print("TESt");
                      //     context.read<WalletOnboardingProvider>().nextStep();
                      //   },
                      //   backgroundColor: AppColors.buttonBgColor,
                      // ),
                    ],
                  ),
                ]),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                fillOverscroll: false,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: CustomButtonWidget(
                      title: "Continue",
                      onPressed: () {
                        final pin = pinC.text.trim();
                        final rePin = rePinC.text.trim();
                        if (pin != rePin) {
                          EasyLoading.showToast("Pin does not match");
                          return;
                        }
                        provider
                          ..setPin(pin)
                          ..forgotPinInquiry();
                      },
                      backgroundColor: AppColors.buttonBgColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Pin Guidelines",
            fontWeight: FontWeight.w700,
            size: 18.sp,
          ),
          buildRow("PIN should not be a sequential number e.g. “12345” etc."),
          3.verticalSpace,
          buildRow("PIN should not be a same number e.g. “11111” etc."),
          SizedBox(height: 20.h),
          CustomText(
            text: "Enter 5 digits Pin",
            fontWeight: FontWeight.w700,
            size: 18.sp,
          ),
          SizedBox(height: 8.h),
          Pinput(
            crossAxisAlignment: CrossAxisAlignment.center,
            length: 5,
            defaultPinTheme: PinTheme(
              width: 60,
              height: 60,
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
            ),
            focusedPinTheme: PinTheme(
              width: 50,
              height: 60,
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
            ),
            onChanged: (value) {
              walletOnboardingPro.updateOtp(value);
            },
            onCompleted: (pin) {
              print('OTP Entered: $pin');
            },
          ),
          SizedBox(height: 20.h),
          CustomText(
            text: "Re-enter 5 Digits Pin",
            fontWeight: FontWeight.w700,
            size: 18.sp,
          ),
          SizedBox(height: 8.h),

          Pinput(
            length: 5,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            defaultPinTheme: PinTheme(
              width: 60,
              height: 60,
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
            ),
            focusedPinTheme: PinTheme(
              width: 50,
              height: 60,
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
            ),
            onChanged: (value) {
              walletOnboardingPro.updateOtp(value);
            },
            onCompleted: (pin) {
              print('OTP Entered: $pin');
            },
          ),
          // Expanded(child: SizedBox()),
          CustomButtonWidget(
            title: "Continue",
            onPressed: () {
              print("TESt");
              context.read<WalletOnboardingProvider>().nextStep();
            },
            backgroundColor: AppColors.buttonBgColor,
          ),
        ],
      ),
    );
  }
}

Row buildRow(String txt) {
  return Row(
    children: [
      Icon(Icons.check_box, color: Colors.green),
      5.horizontalSpace,
      Expanded(
        child: CustomText(text: txt, color: Colors.grey),
      ),
    ],
  );
}
