import 'package:ezwage/global/models/app_language.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomTextWidget extends StatelessWidget {
  var text;
  final Color color;
  final double size;
  CustomTextWidget(this.text, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      textScaleFactor: 1,
      style: appLanguage == 'ur'
          ? GoogleFonts.notoNastaliqUrdu(
              fontSize: size - 2,
              fontWeight: FontWeight.w600,
              color: color,
            )
          : GoogleFonts.poppins(
              fontSize: size,
              fontWeight: FontWeight.w600,
              color: color,
            ),
    );
  }
}
