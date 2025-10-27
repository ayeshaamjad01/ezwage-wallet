import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FourthOnboardScreen extends StatelessWidget {
  var shortestSide;
  FourthOnboardScreen(this.shortestSide);
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      shortestSide < 600
          ? 'assets/mobile_app_screenshots/04.png'
          : 'assets/tablet_screenshots/04.jpg',
      fit: BoxFit.cover,
    );
  }
}
