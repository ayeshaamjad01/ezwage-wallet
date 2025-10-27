import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FirstOnboardScreen extends StatelessWidget {
  var shortestSide;
  FirstOnboardScreen(this.shortestSide);
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      shortestSide < 600
          ? 'assets/mobile_app_screenshots/01.png'
          : 'assets/tablet_screenshots/01.jpg',
      fit: BoxFit.cover,
    );
  }
}
