import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/global/views/main_text.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatefulWidget {
  final String text;
  final String buttontext;
  final VoidCallback func;
  final Column col;
  final Container head;
  const CustomDialog(
      this.text, this.buttontext, this.func, this.col, this.head);

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  dialogContent(BuildContext context) {
    return Stack(
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
                mainAxisSize: MainAxisSize.min, // To make the card compact
                children: <Widget>[
                  Row(
                    children: [Spacer()],
                  ),
                  CustomSizeBox(30),
                  CustomTextWidget(widget.text, simpletextColor, 16),
                  CustomSizeBox(10),
                  widget.col,
                  CustomSizeBox(10),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff00A2FF), // background
                        // onPrimary: Colors.yellow, // foreground
                      ),
                      onPressed: widget.func,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Spacer(),
                            CustomTextWidget(widget.buttontext, whiteColor, 17),
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
        Positioned.fill(
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
                child: Icon(
                  Icons.cancel,
                  size: 20,
                  color: roundbuttonColor,
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          top: 0,
          // left: 0,
          // right: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
                // height: 30,
                // width: 30,

                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        offset: const Offset(0.0, 5.0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: bottomSheetContianerColor),
                child: widget.head),
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
        insetPadding: EdgeInsets.all(35),
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
