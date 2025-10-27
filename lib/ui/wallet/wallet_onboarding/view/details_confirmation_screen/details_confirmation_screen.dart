import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_colors.dart';
import '../../controller/wallet_onboarding_provider.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/custom_text.dart';

class DetailsConfirmationScreen extends StatelessWidget {
  const DetailsConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> motherNameOptions = [
      "Alexia",
      "Julie Anderson",
      "Maria Deila",
      "Jenny Ortange",
    ];

    final List<String> birthPlaceOptions = [
      "Sahiwal",
      "Lahore",
      "Gujranwala",
      "Okara",
    ];
    WalletOnboardingProvider provider = Provider.of<WalletOnboardingProvider>(
      context,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Confirm your details",
                fontWeight: FontWeight.w700,
                size: 18.sp,
              ),
              CustomText(
                text:
                    "Make sure that the captured details are correct as per your CNIC/NICOP.",
                color: Colors.grey,
              ),
              SizedBox(height: 10.h),
              Text(
                "What is your Mother’s name?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 0),
              ...(provider.checkAccountResponse?.data.motherNameList ?? []).map(
                (option) => CheckboxListTile(
                  key: ValueKey(option),
                  title: Text(option),
                  contentPadding: EdgeInsets.zero,
                  controlAffinity: ListTileControlAffinity.leading,
                  value: provider.motherNameAnswer == option,
                  onChanged: (_) {
                    provider.setMotherNameAnswer(option);
                  },
                ),
              ),
              // Column(
              //   children: [
              //     ...(provider.checkAccountResponse?.data.motherNameList ?? []).map(
              //           (option) => CheckboxListTile(
              //         key: ValueKey(option),
              //         title: Text(option),
              //         contentPadding: EdgeInsets.zero,
              //         controlAffinity: ListTileControlAffinity.leading,
              //         value: provider.motherNameAnswer == option,
              //         onChanged: (_) {
              //           provider.setMotherNameAnswer(option);
              //         },
              //       ),
              //     ),
              //   ],
              // ),

              Text(
                "What is your Birth Place?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 0),
              ...(provider.checkAccountResponse?.data.birthPlaceList ?? []).map(
                (option) => CheckboxListTile(
                  key: ValueKey(option),
                  title: Text(option),
                  contentPadding: EdgeInsets.zero,
                  controlAffinity: ListTileControlAffinity.leading,
                  value: provider.birthPlaceAnswer == option,
                  onChanged: (_) {
                    provider.setBirthPlaceAnswer(option);
                  },
                ),
              ),

              CustomButtonWidget(
                title: "Continue",
                onPressed: () {
                  // print(provider.motherNameAnswer);
                  // print(provider.birthPlaceAnswer);
                  // final isValid =
                  //     provider.motherNameAnswer == null ||
                  //     provider.birthPlaceAnswer == null;
                  // print("'isValid'");
                  // print(isValid);
                  //
                  // if (isValid) {
                  //   provider.accountRegistration(context);
                  // } else {
                  //   EasyLoading.showToast("All fields are required");
                  // }
                  if (provider.motherNameAnswer == null || provider.birthPlaceAnswer == null) {
                    EasyLoading.showToast("All fields are required");
                  } else {
                    provider.accountRegistration(context);
                  }
                },
                backgroundColor: AppColors.buttonBgColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
