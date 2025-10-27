import 'package:flutter/material.dart';
import 'package:image_sequence_animator/image_sequence_animator.dart';

// ignore: must_be_immutable
class LogoLoader extends StatelessWidget {
  List<String>? _fullPathsOffline;
  @override
  Widget build(BuildContext context) {
    if (_fullPathsOffline == null) {
      _fullPathsOffline = [];
      for (int i = 1; i < 69; i++) {
        String _value = i.toString();
        if (i < 10) _value = '0' + _value;
        _fullPathsOffline!
            .add("assets/Logo_Animation/Logo Animation_000" + _value + ".png");
      }
    }
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          child: ImageSequenceAnimator(
            "assets/Logo_Animation",
            "Logo Animation_000",
            1,
            2,
            "png",
            68,
            fps: 30,
            fullPaths: _fullPathsOffline,
            isAutoPlay: true,
            isLooping: true,
          ),
        ),
      ),
    );
  }
}
