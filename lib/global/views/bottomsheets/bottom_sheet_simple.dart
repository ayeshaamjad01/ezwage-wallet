import 'package:flutter/material.dart';

class BottomSheetSimple extends StatefulWidget {
  final Column col;

  const BottomSheetSimple(
    this.col,
  );

  @override
  _BottomSheetSimpleState createState() => _BottomSheetSimpleState();
}

class _BottomSheetSimpleState extends State<BottomSheetSimple> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.04,
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Container(
            height: MediaQuery.of(context).size.height / 1.04,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            // height: MediaQuery.of(context).size.height / 1.35,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: widget.col,
            ),
          ),
        ),
      ]),
    );
  }
}
