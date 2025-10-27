import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyButton extends StatefulWidget {
  final String text;
  final VoidCallback func;
  final Color bord;
  final Color textt;
  final Color inn;

  const PrivacyPolicyButton(
      this.text, this.func, this.bord, this.inn, this.textt);

  @override
  _PrivacyPolicyButtonState createState() => _PrivacyPolicyButtonState();
}

class _PrivacyPolicyButtonState extends State<PrivacyPolicyButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: widget.func,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.text,
          style: appLanguage == 'ur'
              ? GoogleFonts.notoNastaliqUrdu(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: widget.textt,
                )
              : GoogleFonts.poppins(
                  color: widget.textt,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
        ),
        //  CustomTextWidget(widget.text, widget.textt, 17),
      ),
      style: OutlinedButton.styleFrom(
        foregroundColor: widget.inn, backgroundColor: widget.inn,
        side: BorderSide(color: blueColor, width: 1),

        // background
        // onPrimary: Colors.yellow, // foreground
      ),
    );
  }
}
