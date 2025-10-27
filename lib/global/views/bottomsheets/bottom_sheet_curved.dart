import 'package:flutter/material.dart';

class BottomSheetCurved extends StatefulWidget {
  final Column col;

  const BottomSheetCurved(
    this.col,
  );

  @override
  _BottomSheetCurvedState createState() => _BottomSheetCurvedState();
}

class _BottomSheetCurvedState extends State<BottomSheetCurved> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.2,
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            height: MediaQuery.of(context).size.height / 1.35,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(child: widget.col),
            ),
          ),
        ),
      ]),
    );
  }
}
