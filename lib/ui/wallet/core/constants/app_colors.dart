import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xff556AC1);
  static const secondaryColor = Color(0xff41A2DC);

  static const buttonBgColor = Color(0xffDB1695);
  static const greenColor = Color(0xff059D8B);
  static const lightGreyColor = Color(0xffF3F5F8);
  static const disableButtonColor = Color(0xffD6D6D6);
}



class AppSizes {
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
}