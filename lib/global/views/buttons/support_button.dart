import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupportButton extends StatefulWidget {
  final VoidCallback func1;
  final VoidCallback func;
  final Color innercolor;

  final IntrinsicHeight r1;
  const SupportButton(
    this.func1,
    this.func,
    this.innercolor,
    this.r1,
  );

  @override
  _SupportButtonState createState() => _SupportButtonState();
}

class _SupportButtonState extends State<SupportButton> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Container(
      

      // width: double.infinity, // <-- match_parent
      // height: double.infinity,
      child: GestureDetector(
        // style: ElevatedButton.styleFrom(
        //   padding: EdgeInsets.all(0),

        //   primary: widget.innercolor, // background
        //   // onPrimary: Colors.yellow, // foreground
        // ),
        onTap: widget.func,
        // onDoubleTap: widget.func,
        child: Container(
          decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        // border: Border.all(color: greycolor,width: 0.5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(2, 3), // changes position of shadow
          ),
        ],
      ),
            // decoration: BoxDecoration(
            //   color: widget.innercolor,
            //   borderRadius: BorderRadius.circular(8),
            //   boxShadow: [
            //     BoxShadow(
            //       color: Colors.white.withOpacity(0.5),
            //       spreadRadius: 1,
            //       blurRadius: 2,
            //       offset: Offset(0, 3), // changes position of shadow
            //     ),
            //   ],
            // ),
            child: Padding(
              padding:  EdgeInsets.fromLTRB(0,shortestSide > 600?5.sp:0,0,shortestSide > 600?5.sp:0),
              child: widget.r1,
            )),
      ),
    );
  }
}
