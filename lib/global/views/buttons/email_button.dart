import 'package:ezwage/global/models/app_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailButton extends StatefulWidget {
  final String text;
  final VoidCallback func;
  final Color bord;
  final Color textt;
  final Color inn;

  const EmailButton(this.text, this.func, this.bord, this.inn, this.textt);

  @override
  _EmailButtonState createState() => _EmailButtonState();
}

class _EmailButtonState extends State<EmailButton> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return GestureDetector(
      onTap: widget.func,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(shortestSide > 600 ? 5.sp : 8),
            color: widget.inn,
            border: Border.all(
              color: widget.bord,
            )),
        child: Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 12),
          child: Row(
            children: [
              Spacer(),
              Text(
                widget.text,
                textScaleFactor: 1,
                style: appLanguage == 'ur'
                    ? GoogleFonts.notoNastaliqUrdu(
                        fontSize: shortestSide > 600 ? 12.sp : 14,
                        fontWeight: FontWeight.w500,
                        color: widget.textt,
                      )
                    : GoogleFonts.poppins(
                        color: widget.textt,
                        fontWeight: FontWeight.w500,
                        fontSize: shortestSide > 600 ? 12.sp : 16),
              ),
              Spacer()
            ],
          ),
          //  CustomTextWidget(widget.text, widget.textt, 17),
        ),
      ),
    );
  }
}
