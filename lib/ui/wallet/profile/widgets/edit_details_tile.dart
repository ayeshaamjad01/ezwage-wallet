import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String rightText;
  final VoidCallback? onTap;

  const CustomTileWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.rightText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: CustomText(
        text: title,
        size: 16.sp,
        fontWeight: FontWeight.w700,
      ),
      subtitle: CustomText(
        text: subtitle,
        size: 14.sp,
      ),
      trailing: CustomText(
        text: rightText,
        size: 14.sp,

        color: Colors.grey,
      ),
    );
  }
}
