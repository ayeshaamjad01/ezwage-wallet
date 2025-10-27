import 'package:ezwage/ui/video_tutorials/view/video_tutorial_screen.dart';
import 'package:flutter/material.dart';

void navigateToVideoTutorialsScreen(BuildContext context) {
  Navigator.pop(context);
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => VideoTutorialScreen()));
}
