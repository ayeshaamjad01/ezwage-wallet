import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    required this.text,
    this.size,
    this.maxLines,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.textStyle,
    Key? key,
  }) : super(key: key);
  final String text;
  final double? size;
  final int? maxLines;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: (maxLines != null) ? maxLines : 2,
      textAlign: textAlign ?? TextAlign.start,
      overflow:  TextOverflow.ellipsis,
      style: textStyle ??
          GoogleFonts.inter(
            color: color ?? Colors.black,
            fontSize: size,
            fontWeight: fontWeight ?? FontWeight.w400,
          ),
    );
  }
}