import 'dart:convert';
import 'dart:io';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/global/utils/logo_loader.dart';
import 'package:ezwage/helper/image_url_headers.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/navigations/profile_navigation.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/url_profile_image.dart';
import 'package:ezwage/global/views/buttons/custom_button.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/url.dart';
import 'package:ezwage/ui/video_tutorials/model/condition_bloc.dart';
import 'package:ezwage/ui/video_tutorials/model/enum_condition_event.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

// ignore: must_be_immutable
class AddPhotoView extends StatefulWidget {
  String pageToNavigate;
  AddPhotoView(this.pageToNavigate);

  @override
  _addphotoviewState createState() => _addphotoviewState();
}

class _addphotoviewState extends State<AddPhotoView> {
  PickedFile? imageFile;
  ConditionBloc _conditionBloc = ConditionBloc();
  bool _imagePicked = false;
  String _pathOfImage = '';

  XFile? _fileImagPicker;
  _pickImageFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    try {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return LogoLoader();
          });
      _fileImagPicker = await _picker.pickImage(
          source: ImageSource.gallery, imageQuality: Platform.isIOS ? 1 : 100);
      if (_fileImagPicker != null) {
        final file = File(_fileImagPicker!.path);
        _imagePicked = true;
        final result = await FlutterImageCompress.compressAndGetFile(
          file.path,
          '${file.path}/compressed_${file.uri.pathSegments.last}',
          quality: Platform.isIOS ? 5 : 50,
        );
        _pathOfImage = result!.path.toString();
        Navigator.pop(context);
        _conditionBloc.eventSink.add(ConditionEvent.True);
      } else {
        Navigator.pop(context);
      }
    } on Exception catch (_) {
      CustomSnackBar(false)
          .showInSnackBar(translateText('Photos_Library_Not_Access'), context);
      Navigator.pop(context);
    }
  }

  _pageNavigation() {
    Navigator.pop(context);
    if (widget.pageToNavigate == 'Home') {
      navigateToCustomNavigationBar(context, 2);
    } else {
      navigateToProfileScreen(context);
    }
  }

  _uploadImageOnServer() async {
    var request = http.MultipartRequest(
        'PATCH',
        Uri.parse(BASE_URL +
            'users/updateprofilepicture/' +
            preferences.get('id').toString()));
    String? userToken = preferences.get('token');
    Map<String, String> headers;
    headers = {
      "Accept": "*/*",
      'Content-Type': 'multipart/form-data',
      "Authorization": "Bearer $userToken",
      'traceid': ApiFunctions().traceid,
    };
    request.files.add(await http.MultipartFile.fromPath(
      'file',
      _pathOfImage,
    ));
    request.headers.addAll(headers);
    try {
      var newResponse = await request.send();
      if (newResponse.statusCode == 200) {
        // ignore: unused_local_variable
        final respStr = await newResponse.stream.bytesToString();
        sleep(const Duration(seconds: 2));
        http.Response response = await ApiFunctions().getRequest(
            'users/getuserprofile/' + preferences.get('id').toString(),
            context);
        if (response.statusCode == 200) {
          var jsonDecoded = jsonDecode(response.body);
          urlProfileImage =
              GET_FILE_URL + jsonDecoded['results']['data']['user_img'];
          _imagePicked = false;
          _pageNavigation();
        }
      } else {
        Navigator.pop(context);
        CustomSnackBar(false).showInSnackBar(
            translateText('Picture_format_not_supported'), context);
      }
    } catch (e) {
      Navigator.pop(context);
      CustomSnackBar(false).showInSnackBar(
          translateText('Picture_format_not_supported'), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: shortestSide < 600 ? 50 : 30.sp,
        ),
        StreamBuilder<Object>(
            stream: _conditionBloc.condtionStream,
            builder: (context, snapshot) {
              return Stack(
                children: [
                  if (urlProfileImage != 'Default' && _imagePicked == false)
                    Container(
                      width: shortestSide < 600 ? 100.0 : 100.sp,
                      height: shortestSide < 600 ? 100.0 : 100.sp,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(
                          shortestSide < 600 ? 50.0 : 50.sp,
                        )),
                        border: Border.all(
                          color: Color.fromARGB(255, 92, 173, 220),
                          width: 4.0,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: shortestSide < 600 ? 25.0 : 25.sp,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.network(
                            urlProfileImage,
                            fit: BoxFit.cover,
                            width: shortestSide < 600 ? 100.0 : 100.sp,
                            height: shortestSide < 600 ? 100.0 : 100.sp,
                            headers: IMAGE_HEADERS,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(
                                Icons.account_circle,
                                color: blueColor,
                                size: shortestSide < 600 ? 60.0 : 60.sp,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  if (urlProfileImage == 'Default' && _imagePicked == false)
                    Container(
                      width: shortestSide < 600 ? 100.0 : 100.sp,
                      height: shortestSide < 600 ? 100.0 : 100.sp,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(
                          shortestSide < 600 ? 50.0 : 50.sp,
                        )),
                        border: Border.all(
                          color: Color.fromARGB(255, 92, 173, 220),
                          width: 4.0,
                        ),
                      ),
                      child: Icon(
                        Icons.account_circle,
                        color: blueColor,
                        size: shortestSide < 600 ? 80.0 : 80.sp,
                      ),
                    ),
                  if (_imagePicked == true)
                    Container(
                      width: shortestSide < 600 ? 100.0 : 100.sp,
                      height: shortestSide < 600 ? 100.0 : 100.sp,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: FileImage(File(_fileImagPicker!.path)),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(
                          shortestSide < 600 ? 50.0 : 50.sp,
                        )),
                        border: Border.all(
                          color: Color.fromARGB(255, 92, 173, 220),
                          width: 4.0,
                        ),
                      ),
                    ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff00A2FF)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                _pickImageFromGallery();
                              },
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: shortestSide < 600 ? 18.0 : 18.sp,
                              ),
                            ),
                          )))
                ],
              );
            }),
        CustomSizeBox(30),
        Text(
          translateText('Update_your_profile_picture'),
          textScaleFactor: 1,
          style: appLanguage == 'ur'
              ? GoogleFonts.notoNastaliqUrdu(
                  fontSize: shortestSide < 600 ? 12 : 12.sp,
                  fontWeight: FontWeight.w500)
              : GoogleFonts.poppins(
                  fontSize: shortestSide < 600 ? 14 : 14.sp,
                  fontWeight: FontWeight.w500),
        ),
        CustomSizeBox(50),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: customButton(translateText('Save'), () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return LogoLoader();
                });
            _uploadImageOnServer();
          }, Color(0xff00A2FF)),
        )
      ],
    );
  }
}
