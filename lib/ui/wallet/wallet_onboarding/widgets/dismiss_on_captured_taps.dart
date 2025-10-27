import 'package:flutter/cupertino.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class DismissOnCapturedTaps extends StatelessWidget {
  final Widget child;

  const DismissOnCapturedTaps({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(dismissOnCapturedTaps: true, child: child);
  }
}
