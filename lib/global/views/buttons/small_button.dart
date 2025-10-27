import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/main_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallButton extends StatefulWidget {
  final String text;
  final VoidCallback func;
  const SmallButton(this.text, this.func);

  @override
  _SmallButtonState createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return OutlinedButton(
      onPressed: widget.func,
      child: Padding(
        padding: EdgeInsets.all(shortestSide > 600 ? 5.sp : 8.0),
        child: CustomTextWidget(
            widget.text, blueColor, shortestSide > 600 ? 10.sp : 12),
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: whiteColor,
        shape: StadiumBorder(),
      ),
    );
  }
}
