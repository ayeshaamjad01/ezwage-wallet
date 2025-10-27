import 'package:ezwage/ui/wallet/core/constants/app_colors.dart';
import 'package:ezwage/ui/wallet/transfer/view_models/verification_type_view_model.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_button_widget.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/dismiss_on_captured_taps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KycQuestionVerificationView extends StatefulWidget {
  final kycQuestionVerificationViewModel viewModel;

  const KycQuestionVerificationView({super.key, required this.viewModel});

  @override
  State<KycQuestionVerificationView> createState() =>
      _KycQuestionVerificationViewState();
}

class _KycQuestionVerificationViewState
    extends State<KycQuestionVerificationView> {
  String? answer;

  @override
  Widget build(BuildContext context) {
    final vm = widget.viewModel;
    final questionType = vm.questionType;
    final optionList = vm.options;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Confirm your details",
          fontWeight: FontWeight.w700,
          size: 18.sp,
        ),
        CustomText(
          text:
              "Additional KYC verification is required, please answer the question below.",
          color: Colors.grey,
        ),
        SizedBox(height: 30.h),
        Text(switch (questionType) {
          KYCQuestionType.motherName => "What is your mother's name",
          KYCQuestionType.birthPlace => "What is your Birth Place?",
        }, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ...optionList.map(
          (option) => CheckboxListTile(
            key: ValueKey(option),
            title: Text(option),
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            value: answer == option,
            onChanged: (c) {
              answer = option;
              setState(() {});
            },
          ),
        ),
        Expanded(child: SizedBox()),
        DismissOnCapturedTaps(
          child: Column(
            children: [
              CustomButtonWidget(
                title: "Confirm",
                onPressed: () {
                  if (answer == null) {
                    EasyLoading.showToast("Please select an answer");
                    return;
                  }
                  vm.onSubmit.call(answer!);
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
}
