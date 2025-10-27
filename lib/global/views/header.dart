import 'package:flutter/material.dart';

class header extends StatefulWidget {
  final Column col;
  const header(this.col);

  @override
  _headerState createState() => _headerState();
}

class _headerState extends State<header> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: widget.col,
    );
  }
}
