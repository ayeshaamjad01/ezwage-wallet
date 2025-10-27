import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ThirdOnboardScreen extends StatelessWidget {
  var shortestSide;
  ThirdOnboardScreen(this.shortestSide);
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      shortestSide < 600
          ? 'assets/mobile_app_screenshots/03.png'
          : 'assets/tablet_screenshots/03.jpg',
      fit: BoxFit.cover,
    );
  }
}
