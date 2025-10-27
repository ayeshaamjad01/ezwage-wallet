import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
// import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PendingTransactionsRequest extends StatefulWidget {
  final String text;
  final String buttontext;
  final VoidCallback func;
  final Column col;
  final Container head;
  final Color color;
  const PendingTransactionsRequest(
      this.text, this.buttontext, this.func, this.col, this.head, this.color );

  @override
  State<PendingTransactionsRequest> createState() =>
      _PendingTransactionsRequestState();
}

class _PendingTransactionsRequestState
    extends State<PendingTransactionsRequest> {
  dialogContent(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Container(
            decoration: new BoxDecoration(
              color: Colors.white,
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
                mainAxisSize: MainAxisSize.min, // To make the card compact
                children: <Widget>[
                  Row(
                    children: [Spacer()],
                  ),
                  CustomSizeBox(40),
                  widget.col,
                  CustomSizeBox(30),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          backgroundColor: widget.color,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(10)) // background
                          // onPrimary: Colors.yellow, // foreground
                          ),
                      onPressed: widget.func,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Spacer(),
                            Text(widget.buttontext,
                                textScaleFactor: 1,
                                textAlign: TextAlign.center,
                                style: appLanguage == 'en'
                                    ? GoogleFonts.poppins(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)
                                    : GoogleFonts.notoNastaliqUrdu(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                            Spacer()
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned.fill(
          // top: 0,
          // left: 0,
          // right: 0,
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0, right: 15),
              child: GestureDetector(
                onTap: () {
                  navigateToCustomNavigationBar(context, 2);
                },
                child: SvgPicture.asset("assets/images/crossicon.svg"),
              ),
            ),
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
        insetPadding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: dialogContent(context),
      ),
    );
  }
}
