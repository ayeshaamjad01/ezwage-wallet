import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondOnboardScreen extends StatelessWidget {
  var shortestSide;
  SecondOnboardScreen(this.shortestSide);
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      shortestSide < 600
          ? 'assets/mobile_app_screenshots/02.png'
          : 'assets/tablet_screenshots/02.jpg',
      fit: BoxFit.cover,
    );
  }
}
