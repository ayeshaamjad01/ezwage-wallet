import 'package:ezwage/ui/addphoto/view/add_photo_screen.dart';
import 'package:flutter/material.dart';

void navigateToAddPhotoScreen(BuildContext context, String navigatePage) {
  // Navigator.pop(context);
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => AddPhotoScreen(navigatePage)));
}
