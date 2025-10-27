import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDialog extends StatefulWidget {
  final String text;
  final String buttontext;
  final VoidCallback func;
  final Column col;
  final Container head;
  final bool crossSign;
  const CustomDialog(this.text, this.buttontext, this.func, this.col, this.head,
      this.crossSign);

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  dialogContent(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  decoration: new BoxDecoration(
                    color: bottomSheetContianerColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        offset: const Offset(0.0, 10.0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisSize:
                          MainAxisSize.min, // To make the card compact
                      children: <Widget>[
                        Row(
                          children: [Spacer()],
                        ),

                        // CustomTextWidget(widget.text, simpletextcolor, 16),

                        CustomSizeBox(0),
                        widget.col,
                        CustomSizeBox(10),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff00A2FF), // background
                              // onPrimary: Colors.yellow, // foreground
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      shortestSide > 600 ? 5.sp : 10)),
                            ),
                            onPressed: (widget.text != "Bank Details")
                                ? widget.func
                                : () {
                                    Navigator.pop(context);
                                  },
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Spacer(),
                                  Text(
                                    widget.buttontext,
                                    style: appLanguage == 'ur'
                                        ? GoogleFonts.notoNastaliqUrdu(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 14,
                                            fontWeight: FontWeight.w600,
                                            color: whiteColor,
                                          )
                                        : GoogleFonts.poppins(
                                            fontSize:
                                                shortestSide > 600 ? 14.sp : 16,
                                            fontWeight: FontWeight.w600,
                                            color: whiteColor,
                                          ),
                                    textScaleFactor: 1,
                                  ),
                                  Spacer()
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        widget.crossSign == true
            ? Positioned.fill(
                // top: 0,
                // left: 0,
                // right: 0,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 35.0, right: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: shortestSide > 600
                          ? SvgPicture.asset(
                              "assets/images/crossicon.svg",
                              height: 20.sp,
                              fit: BoxFit.fitHeight,
                            )
                          : SvgPicture.asset("assets/images/crossicon.svg"),
                    ),
                  ),
                ),
              )
            : Positioned.fill(
                // top: 0,
                // left: 0,
                // right: 0,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: const EdgeInsets.only(top: 35.0, right: 5),
                      child: Container()),
                ),
              ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Dialog(
        
        insetPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: dialogContent(context),
      ),
    );
  }
 }
