import 'package:flutter/material.dart';

import '../../core/constants/app_images.dart';
import '../../custom_widgets/custom_svg_image.dart';
import 'custom_text.dart';

class DigitWidget extends StatelessWidget {
  const DigitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(text: "Powered by ", fontWeight: FontWeight.w700,),
        CustomPngImage(assetPath: AppImages.digit)
      ],
    );
  }
}
