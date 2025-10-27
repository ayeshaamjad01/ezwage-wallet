import 'package:flutter/material.dart';

class ReusableWidgetsWithHomeWidgets {
  getAppBar(GestureDetector row1, GestureDetector row2, Row row3) {
    return AppBar(
      centerTitle: false,
      automaticallyImplyLeading: false,
      bottomOpacity: 0.0,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          row1,
          // Spacer(),
          row2,
          Spacer(),
          row3
        ],
      ),
    );
  }
}
