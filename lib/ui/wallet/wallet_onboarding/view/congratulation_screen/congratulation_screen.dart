import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_colors.dart';
import '../../../homepage/view/wallet_homepage.dart';
import '../../controller/wallet_onboarding_provider.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/custom_text.dart';

class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(8.h),
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.check, size: 30.h, color: Colors.white),
          ),
          12.verticalSpace,
          CustomText(
            text: "Registration Successfully",
            fontWeight: FontWeight.w700,
            size: 18.sp,
          ),
          SizedBox(height: 10.h),

          CustomText(
            text:
                "You have created your ezwallet account. Now you can transfer/receive funds and also you can pay your bill via this account.",
            color: Colors.grey,
            textAlign: TextAlign.center,
            maxLines: 6,
          ),
          SizedBox(height: 20.h),
          Expanded(child: SizedBox()),
          CustomButtonWidget(
            title: "Continue",
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => WalletHomepage()),
                (Route<dynamic> route) => false,
              );
            },
            backgroundColor: AppColors.buttonBgColor,
          ),
        ],
      ),
    );
  }
}
