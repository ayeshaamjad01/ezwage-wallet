import 'package:flutter/material.dart';

class ReusableWidgetsWithoutBackButton {
  getAppBar(
    Row row1,
    Row row2,
  ) {
    return AppBar(
      centerTitle: false,
      automaticallyImplyLeading: false,
      bottomOpacity: 0.0,
      elevation: 0.0,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [row1, Spacer(), row2],
      ),
    );
  }
}
