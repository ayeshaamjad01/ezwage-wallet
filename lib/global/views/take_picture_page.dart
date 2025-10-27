import 'dart:io';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/url.dart';
import 'package:ezwage/ui/profile/model/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class TakePicturePage extends StatefulWidget {
  @override
  _TakePicturePageState createState() => _TakePicturePageState();
}

class _TakePicturePageState extends State<TakePicturePage> {
  Future uploadImage(filepath, url) async {
    var request = http.MultipartRequest(
      'POST',
      Uri.parse(url),
    );
    request.files.add(http.MultipartFile(
      'image',
      File(filepath).readAsBytes().asStream(),
      File(filepath).lengthSync(),
      filename: filepath.split("/").last,
    ));
    // ignore: unused_local_variable
    var res = await request.send();
  }

  Future<void>? _initializeCameraControllerFuture;

  @override
  void initState() {
    super.initState();
  }

  void _takePicture(BuildContext context) async {
    try {
      await _initializeCameraControllerFuture;
      final path =
          join((await getTemporaryDirectory()).path, '${DateTime.now()}.png');
      String id = ProfileModel.uid.toString();
      uploadImage(path, BASE_URL + "users/updateprofilepicture/$id");
      Navigator.pop(context, path);
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      CustomSizeBox(50),
      SvgPicture.asset(
        'assets/images/elogo.svg',
        height: 40,
        width: 40,
      ),
      CustomSizeBox(20),
      SafeArea(
        bottom: false,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.camera,
                size: 50,
              ),
              onPressed: () {
                _takePicture(context);
              },
            ),
          ),
        ),
      )
    ]);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
 