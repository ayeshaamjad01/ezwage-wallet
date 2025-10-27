import 'package:flutter/material.dart';

class ReusableWidgetsWithBackButton {
  getAppBar(
    GestureDetector row1,
    Row row2,
  ) {
    return AppBar(
      centerTitle: false,
      automaticallyImplyLeading: false,
      bottomOpacity: 0.0,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          row1,
          Spacer(),
          row2,
          Spacer(),
        ],
      ),
    );
  }
}
