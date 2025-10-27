import 'package:ezwage/global/models/app_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class customButton extends StatefulWidget {
  final String text;
  final VoidCallback func;
  final Color color;
  customButton(this.text, this.func, this.color);

  @override
  _mybuttonState createState() => _mybuttonState();
}

class _mybuttonState extends State<customButton> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return SizedBox(
      width: double.infinity,
      // height: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: widget.color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: widget.func,
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              widget.text,
              textScaleFactor: 1,
              style: appLanguage == 'ur'
                  ? GoogleFonts.notoNastaliqUrdu(
                      fontSize: shortestSide > 600 ? 12.sp : 14,
                      fontWeight: FontWeight.w500,
                    )
                  : GoogleFonts.poppins(
                      fontSize: shortestSide > 600 ? 14.sp : 16,
                      fontWeight: FontWeight.w500),
            )),
      ),
    );
  }
}
