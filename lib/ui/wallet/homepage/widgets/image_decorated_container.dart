import 'package:ezwage/ui/wallet/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_widgets/custom_svg_image.dart';

class ImageDecoratedContainer extends StatelessWidget {
  final Widget? widget;
  final String? imagePath;
  final Color? imageColor;
  final double size;
  final Color bgColor;
  final double? padding;

  const ImageDecoratedContainer({
    Key? key,
    this.widget,
    this.imagePath,
    this.imageColor,
    this.size = 30,
    this.padding = 8,
    this.bgColor = AppColors.lightGreyColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding!.h),
      decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
      alignment: Alignment.center,
      child: (widget != null)
          ? widget
          : (imagePath != null)
          ? CustomSvgImage(assetPath: imagePath!, color: imageColor, height: size.h, width: size.w)
          : SizedBox(),
    );
  }
}
