import 'package:flutter/material.dart';

class CustomizedClipper extends CustomClipper<Path> {
  String? _screenType;
  CustomizedClipper(this._screenType);

  @override
  Path getClip(Size size) {
    if (_screenType == 'Drawer') {
      var controlPoint = Offset(size.width / 2, size.height);
      var endPoint = Offset(0, size.height - 20);

      Path path = Path()
        ..lineTo(0, 0) // Add line p1p2
        ..lineTo(size.width, 0)
        ..lineTo(size.width, size.height - 20)
        // ..lineTo(0, size.height)
        ..quadraticBezierTo(
            controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
        ..close();

      return path;
    } else {
      var controlPoint = Offset(size.width / 2, 30);
      var endPoint = Offset(0, 0);
      Path path = Path()
        ..lineTo(0, size.height)
        ..lineTo(size.width, size.height)
        ..lineTo(size.width, 0)
        ..quadraticBezierTo(
            controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
        ..close();

      return path;
    }
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

  // @override
  // Path getClip(Size size) {
  //   // This variable define for better understanding you can direct specify value in quadraticBezierTo method
  //   var controlPoint = Offset(size.width / 2, size.height);
  //   var endPoint = Offset(0, size.height - 20);

  //   Path path = Path()
  //     ..lineTo(0, 0) // Add line p1p2
  //     ..lineTo(size.width, 0)
  //     ..lineTo(size.width, size.height - 20)
  //     // ..lineTo(0, size.height)
  //     ..quadraticBezierTo(
  //         controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
  //     ..close();

  //   return path;
  // }

  // @override
  // bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
  //   return true;
  // }
}
