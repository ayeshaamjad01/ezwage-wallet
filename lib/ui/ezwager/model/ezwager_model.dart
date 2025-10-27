import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EZWageModel {
  static var embededPostsList;

  static launchURL(String url, BuildContext context) async {
    if (!await launchUrl(Uri.parse(url))) {
      CustomSnackBar(false)
          .showInSnackBar('Linkedin Article is not Available', context);
    }
  }
}
