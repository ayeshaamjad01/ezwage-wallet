import 'dart:io';

import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchWhatsapp {
  static launchWhatsapp(BuildContext context) async {
    if (!await launchUrl(getDeviceSupportedUrl())) {
      CustomSnackBar(false).showInSnackBar('WhatsApp Unavailable', context);
    }
  }

  static getDeviceSupportedUrl() {
    if (Platform.isIOS) {
      return Uri.parse("https://wa.me/+923098000100");
    } else {
      return Uri.parse("whatsapp://send?phone=+923098000100");
    }
  }
}
