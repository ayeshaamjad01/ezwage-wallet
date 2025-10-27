import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgImage extends StatelessWidget {
  final String assetPath;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit fit;

  const CustomSvgImage({
    Key? key,
    required this.assetPath,
    this.height,
    this.width,
    this.color,
    this.fit = BoxFit.contain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetPath,
      height: height,
      width: width,
      color: color,
      fit: fit,
    );
  }
}





class CustomPngImage extends StatelessWidget {
  final String assetPath;
  final double? height;
  final double? width;
  final BoxFit fit;
  final Color? color;

  const CustomPngImage({
    Key? key,
    required this.assetPath,
    this.height,
    this.width,
    this.fit = BoxFit.contain,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      height: height,
      width: width,
      fit: fit,
      color: color,
    );
  }
}
