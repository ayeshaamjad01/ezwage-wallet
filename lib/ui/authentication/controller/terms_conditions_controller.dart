import 'dart:io';

import 'package:flutter/services.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';

openTermsConditionsDocument() async {
  String assestsFile = 'assets/Docs/Terms_and_Conditions_EN.pdf';
  File file;
  try {
    var dir = await getApplicationDocumentsDirectory();
    file = File("${dir.path}/EZ Wage Terms and Conditions.pdf");
    var data = await rootBundle.load(assestsFile);
    var bytes = data.buffer.asUint8List();
    await file.writeAsBytes(bytes, flush: true);
    await OpenFilex.open(file.path);
  } catch (e) {
    throw Exception('Error parsing asset file!');
  }
}
