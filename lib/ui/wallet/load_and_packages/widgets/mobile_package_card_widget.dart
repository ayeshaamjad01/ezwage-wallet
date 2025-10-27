import 'package:ezwage/ui/wallet/core/constants/app_colors.dart';
import 'package:ezwage/ui/wallet/custom_widgets/custom_svg_image.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screenshot/screenshot.dart';

import '../../wallet_onboarding/widgets/custom_button_widget.dart';

class MobilePackageCardWidget extends StatelessWidget {
  final String title;
  final String rightText1;
  final String rightText2;

  final List<PackageFeature> features;

  final String bottomLeftText;
  final String? bottomButtonText;
  final VoidCallback onButtonPressed;

  const MobilePackageCardWidget({
    super.key,
    required this.title,
    required this.rightText1,
    required this.rightText2,
    required this.features,
    required this.bottomLeftText,
    this.bottomButtonText,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black45, width: .5),
        borderRadius: BorderRadius.circular(8.r),
      ),
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [



              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomText(
                      text: title,
                      size: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          child: CustomText(
                            text: rightText1,
                            maxLines: 2,
                            size: 20.sp,
                            color: AppColors.primaryColor,

                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        const SizedBox(width: 6),

                        CustomText(
                          text: rightText2,
                          size: 12.sp,
                          maxLines: 1,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            SizedBox(height: 20.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: features
                  .map(
                    (feature) => Expanded(
                      child: Column(
                        children: [
                          CustomSvgImage(
                            assetPath: feature.iconPath,
                            height: 25.h,
                            width: 25.w,
                          ),
                          const SizedBox(height: 4),
                          CustomText(
                            text: feature.title,
                              size: 14,
                              fontWeight: FontWeight.w500,
                            textAlign: TextAlign.center,
                          ),
                          CustomText(
                            text: feature.price,
                              size: 12,
                              color: Colors.grey,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 20.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: CustomText(
                  text: bottomLeftText,
                  size: 12.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),),

                (bottomButtonText != null) ? Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: onButtonPressed,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      decoration: BoxDecoration(
                        color: AppColors.buttonBgColor,
                        borderRadius: BorderRadius.circular(60.sp),
                      ),
                      child: CustomText(text: bottomButtonText!, size: 14.sp, textAlign: TextAlign.center, fontWeight: FontWeight.w700, color: Colors.white,),
                    ),
                  )
                ) : SizedBox(),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PackageFeature {
  final String iconPath;
  final String title;
  final String price;

  PackageFeature({
    required this.iconPath,
    required this.title,
    required this.price,
  });
}
