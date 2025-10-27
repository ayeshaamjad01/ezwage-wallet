import 'package:ezwage/ui/wallet/core/constants/app_colors.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomButtonWidget extends StatelessWidget {
  final double? radius;
  final Color? backgroundColor;
  final Color? titleColor;
  final double? titleSize;
  final String title;
  final bool isDisable;
  final VoidCallback onPressed;

  const CustomButtonWidget({
    Key? key,
    this.radius,
    this.backgroundColor,
    this.titleColor,
    this.titleSize,
    required this.title,
    required this.onPressed,
    this.isDisable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isDisable ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isDisable
              ? AppColors.disableButtonColor
              : backgroundColor ?? AppColors.buttonBgColor,
          disabledBackgroundColor: Colors.grey.shade400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
        child: CustomText(
          text: title,
            size: titleSize ?? 18.sp,
            color: isDisable ? Colors.white : titleColor ?? Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
    );
  }
}

